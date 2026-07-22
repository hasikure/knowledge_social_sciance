// GET  /api/questions            -> 問題一覧を取得
// GET  /api/questions?category=X -> カテゴリ絞り込み
// POST /api/questions             -> 新しい問題を追加 { category, question, answer }

export async function onRequestGet(context) {
  const { env, request } = context;
  const url = new URL(request.url);
  const category = url.searchParams.get("category");

  let query = "SELECT id, category, question, answer, created_at FROM questions";
  const params = [];

  if (category) {
    query += " WHERE category = ?";
    params.push(category);
  }
  query += " ORDER BY created_at DESC";

  const { results } = await env.DB.prepare(query).bind(...params).all();
  return Response.json(results);
}

export async function onRequestPost(context) {
  const { env, request } = context;

  let body;
  try {
    body = await request.json();
  } catch {
    return new Response("Invalid JSON body", { status: 400 });
  }

  const { category, question, answer } = body;
  if (!question || !answer) {
    return new Response("question and answer are required", { status: 400 });
  }

  const result = await env.DB
    .prepare("INSERT INTO questions (category, question, answer) VALUES (?, ?, ?)")
    .bind(category || null, question, answer)
    .run();

  return Response.json({ id: result.meta.last_row_id }, { status: 201 });
}
