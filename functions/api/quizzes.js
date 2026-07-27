// GET /api/quizzes
//   -> クイズの一覧を取得するAPI。
//      ?include_archived=true でアーカイブ済みのクイズも含めて取得可能。

export async function onRequestGet(context) {
  const { env, request } = context;
  const url = new URL(request.url);
  // アーカイブ済みクイズは先生用画面(統計・問題登録)でのみ扱う。
  const includeArchived =
    url.searchParams.get("include_archived") === "true" && context.data.role === "teacher";

  let query = "SELECT id, name, genre, section, url, max_score, sort_order, is_archived FROM quizzes";
  if (!includeArchived) {
    query += " WHERE is_archived = 0";
  }
  query += " ORDER BY sort_order, id";

  try {
    const { results: quizzes } = await env.DB.prepare(query).all();
    return Response.json(quizzes);
  } catch (err) {
    return new Response(err.message, { status: 500 });
  }
}
