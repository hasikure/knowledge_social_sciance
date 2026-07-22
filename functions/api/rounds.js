// GET /api/rounds?quiz_id=X&scope=Y
//   -> そのクイズ+スコープでの自己ベスト { score, total } を返す(まだ無ければ null)
//
// POST /api/rounds
//   body: { quiz_id, scope, attempts: [{ item_id, is_correct }, ...] }
//   -> 1ラウンド分の結果を記録する(rounds 1行 + attempts N行)。
//      「間違えた問題だけもう一度」の直後復習はここを呼ばない(DBに残さない)。

export async function onRequestGet(context) {
  const { env, request } = context;
  const url = new URL(request.url);
  const quizId = url.searchParams.get("quiz_id");
  const scope = url.searchParams.get("scope") || "all";

  if (!quizId) {
    return new Response("quiz_id is required", { status: 400 });
  }

  const best = await env.DB
    .prepare(
      "SELECT score, total FROM rounds WHERE quiz_id = ? AND scope = ? ORDER BY score DESC, total ASC LIMIT 1"
    )
    .bind(quizId, scope)
    .first();

  return Response.json(best || null);
}

export async function onRequestPost(context) {
  const { env, request } = context;

  let body;
  try {
    body = await request.json();
  } catch {
    return new Response("Invalid JSON body", { status: 400 });
  }

  const { quiz_id, scope, attempts } = body;
  if (!quiz_id || !Array.isArray(attempts) || attempts.length === 0) {
    return new Response("quiz_id and a non-empty attempts array are required", { status: 400 });
  }
  for (const a of attempts) {
    if (!a.item_id || typeof a.is_correct !== "boolean") {
      return new Response("each attempt needs item_id (number) and is_correct (boolean)", { status: 400 });
    }
  }

  const score = attempts.filter((a) => a.is_correct).length;
  const total = attempts.length;

  const roundResult = await env.DB
    .prepare("INSERT INTO rounds (quiz_id, scope, score, total) VALUES (?, ?, ?, ?)")
    .bind(quiz_id, scope || "all", score, total)
    .run();
  const roundId = roundResult.meta.last_row_id;

  const insertAttempt = env.DB.prepare(
    "INSERT INTO attempts (item_id, round_id, is_correct) VALUES (?, ?, ?)"
  );
  await env.DB.batch(
    attempts.map((a) => insertAttempt.bind(a.item_id, roundId, a.is_correct ? 1 : 0))
  );

  return Response.json({ round_id: roundId, score, total }, { status: 201 });
}
