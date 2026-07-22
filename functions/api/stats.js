// GET /api/stats (teacher専用)
//   -> 全体の正答率、クイズ別正答率、苦手な問題トップ10、直近の解答履歴

export async function onRequestGet(context) {
  const { env } = context;

  if (context.data.role !== "teacher") {
    return new Response(JSON.stringify({ error: "forbidden" }), {
      status: 403,
      headers: { "Content-Type": "application/json" },
    });
  }

  // 全体の正答率
  const overall = await env.DB
    .prepare(`SELECT COUNT(*) AS total, SUM(is_correct) AS correct FROM attempts`)
    .first();

  // クイズ別正答率
  const { results: byQuiz } = await env.DB
    .prepare(
      `SELECT
         i.quiz_id AS quiz_id,
         COUNT(*) AS total,
         SUM(a.is_correct) AS correct
       FROM attempts a
       JOIN items i ON i.id = a.item_id
       GROUP BY i.quiz_id
       ORDER BY i.quiz_id`
    )
    .all();

  // 苦手な問題トップ10（間違えた回数が多い順）
  const { results: weakItems } = await env.DB
    .prepare(
      `SELECT
         i.id, i.quiz_id, i.label, i.answer, i.category,
         COUNT(*) AS attempts,
         SUM(CASE WHEN a.is_correct = 0 THEN 1 ELSE 0 END) AS wrong_count
       FROM attempts a
       JOIN items i ON i.id = a.item_id
       GROUP BY i.id
       HAVING wrong_count > 0
       ORDER BY wrong_count DESC
       LIMIT 10`
    )
    .all();

  // 直近20件の解答履歴
  const { results: recent } = await env.DB
    .prepare(
      `SELECT a.id, i.quiz_id, i.label, a.is_correct, a.answered_at
       FROM attempts a
       JOIN items i ON i.id = a.item_id
       ORDER BY a.answered_at DESC
       LIMIT 20`
    )
    .all();

  return Response.json({
    overall: {
      total: overall.total || 0,
      correct: overall.correct || 0,
      accuracy: overall.total ? overall.correct / overall.total : null,
    },
    byQuiz,
    weakItems,
    recent,
  });
}
