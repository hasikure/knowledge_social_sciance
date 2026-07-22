/**
 * Cloudflare Pages Functions middleware
 * カスタムログイン画面 + 2種類のアカウント（生徒用 / 先生用）で保護する
 *
 * 必要な環境変数 (Settings > Variables and Secrets で追加):
 *   STUDENT_USER   = 生徒用のユーザー名（何でもよい）
 *   STUDENT_PASS   = 生徒用のパスワード           ← Secret推奨
 *   TEACHER_USER   = 先生(あなた)用のユーザー名
 *   TEACHER_PASS   = 先生(あなた)用のパスワード    ← Secret推奨
 *   SESSION_SECRET = セッションCookieの署名に使うランダムな文字列（32文字以上推奨）← Secret推奨
 *
 * ログイン後、他のFunctions（例: functions/api/*.js）からは
 *   context.data.role  // "student" または "teacher"
 * で役割を参照できます。
 */

const COOKIE_NAME = "app_session";
const SESSION_DAYS = 30; // ログインの有効期間（日）

// ------- ユーティリティ -------

function toBase64Url(bytes) {
  let binary = "";
  for (const b of bytes) binary += String.fromCharCode(b);
  return btoa(binary).replace(/\+/g, "-").replace(/\//g, "_").replace(/=+$/, "");
}

function fromBase64Url(str) {
  str = str.replace(/-/g, "+").replace(/_/g, "/");
  while (str.length % 4) str += "=";
  const binary = atob(str);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
  return bytes;
}

async function getKey(secret) {
  return crypto.subtle.importKey(
    "raw",
    new TextEncoder().encode(secret),
    { name: "HMAC", hash: "SHA-256" },
    false,
    ["sign", "verify"]
  );
}

async function signPayload(payloadObj, secret) {
  const payload = toBase64Url(new TextEncoder().encode(JSON.stringify(payloadObj)));
  const key = await getKey(secret);
  const sig = await crypto.subtle.sign("HMAC", key, new TextEncoder().encode(payload));
  const sigStr = toBase64Url(new Uint8Array(sig));
  return `${payload}.${sigStr}`;
}

async function verifyToken(token, secret) {
  const [payload, sig] = token.split(".");
  if (!payload || !sig) return null;
  const key = await getKey(secret);
  const valid = await crypto.subtle.verify(
    "HMAC",
    key,
    fromBase64Url(sig),
    new TextEncoder().encode(payload)
  );
  if (!valid) return null;
  try {
    const data = JSON.parse(new TextDecoder().decode(fromBase64Url(payload)));
    if (data.exp && Date.now() > data.exp) return null; // 期限切れ
    return data;
  } catch {
    return null;
  }
}

function getCookie(request, name) {
  const cookie = request.headers.get("Cookie") || "";
  const match = cookie.match(new RegExp(`(?:^|;\\s*)${name}=([^;]*)`));
  return match ? match[1] : null;
}

function loginPageHtml(error) {
  return `<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>ログイン</title>
<style>
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Hiragino Sans", sans-serif;
    background: #f4f5f7;
    display: flex;
    align-items: center;
    justify-content: center;
    height: 100vh;
    margin: 0;
  }
  form {
    background: #fff;
    padding: 32px 28px;
    border-radius: 12px;
    box-shadow: 0 2px 12px rgba(0,0,0,0.08);
    width: 280px;
  }
  h1 { font-size: 18px; margin: 0 0 20px; text-align: center; }
  label { font-size: 13px; color: #555; display: block; margin-bottom: 4px; }
  input {
    width: 100%;
    padding: 10px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 6px;
    box-sizing: border-box;
    font-size: 14px;
  }
  button {
    width: 100%;
    padding: 10px;
    background: #2563eb;
    color: #fff;
    border: none;
    border-radius: 6px;
    font-size: 14px;
    cursor: pointer;
  }
  button:hover { background: #1d4ed8; }
  .error { color: #dc2626; font-size: 13px; margin-bottom: 12px; text-align: center; }
</style>
</head>
<body>
  <form method="POST" action="/login">
    <h1>学習アプリ ログイン</h1>
    ${error ? `<div class="error">${error}</div>` : ""}
    <label for="username">ユーザー名</label>
    <input type="text" id="username" name="username" autocomplete="username" required />
    <label for="password">パスワード</label>
    <input type="password" id="password" name="password" autocomplete="current-password" required />
    <button type="submit">ログイン</button>
  </form>
</body>
</html>`;
}

// ------- メイン処理 -------

export async function onRequest(context) {
  const { request, env, next } = context;
  const url = new URL(request.url);

  const required = ["STUDENT_USER", "STUDENT_PASS", "TEACHER_USER", "TEACHER_PASS", "SESSION_SECRET"];
  for (const key of required) {
    if (!env[key]) {
      return new Response(`Server misconfigured: ${key} is not set.`, { status: 500 });
    }
  }

  // ログアウト
  if (url.pathname === "/logout") {
    return new Response(null, {
      status: 302,
      headers: {
        Location: "/login",
        "Set-Cookie": `${COOKIE_NAME}=; Path=/; Max-Age=0`,
      },
    });
  }

  // ログイン画面
  if (url.pathname === "/login") {
    if (request.method === "GET") {
      return new Response(loginPageHtml(), {
        headers: { "Content-Type": "text/html; charset=UTF-8" },
      });
    }

    if (request.method === "POST") {
      const form = await request.formData();
      const username = (form.get("username") || "").toString();
      const password = (form.get("password") || "").toString();

      let role = null;
      if (username === env.STUDENT_USER && password === env.STUDENT_PASS) {
        role = "student";
      } else if (username === env.TEACHER_USER && password === env.TEACHER_PASS) {
        role = "teacher";
      }

      if (!role) {
        return new Response(loginPageHtml("ユーザー名またはパスワードが違います"), {
          status: 401,
          headers: { "Content-Type": "text/html; charset=UTF-8" },
        });
      }

      const exp = Date.now() + SESSION_DAYS * 24 * 60 * 60 * 1000;
      const token = await signPayload({ role, exp }, env.SESSION_SECRET);

      return new Response(null, {
        status: 302,
        headers: {
          Location: "/",
          "Set-Cookie": `${COOKIE_NAME}=${token}; Path=/; HttpOnly; Secure; SameSite=Lax; Max-Age=${SESSION_DAYS * 24 * 60 * 60}`,
        },
      });
    }
  }

  // それ以外のページ・APIはセッションCookieを確認
  const token = getCookie(request, COOKIE_NAME);
  const session = token ? await verifyToken(token, env.SESSION_SECRET) : null;

  if (!session) {
    // API向けリクエストは401 JSON、ページ向けはログイン画面へリダイレクト
    if (url.pathname.startsWith("/api/")) {
      return new Response(JSON.stringify({ error: "unauthorized" }), {
        status: 401,
        headers: { "Content-Type": "application/json" },
      });
    }
    return new Response(null, { status: 302, headers: { Location: "/login" } });
  }

  // 役割を後続のFunctionsに渡す
  context.data.role = session.role;

  return next();
}
