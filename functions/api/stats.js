// GET /api/stats -> 全体の正答率、カテゴリ別正答率、苦手な問題トップ10、直近の解答履歴

export async function onRequestGet(context) {
  const { env } = context;

  // 全体の正答率
  const overall = await env.DB
    .prepare(
      `SELECT
         COUNT(*) AS total,
         SUM(is_correct) AS correct
       FROM attempts`
    )
    .first();

  // カテゴリ別正答率
  const { results: byCategory } = await env.DB
    .prepare(
      `SELECT
         q.category AS category,
         COUNT(*) AS total,
         SUM(a.is_correct) AS correct
       FROM attempts a
       JOIN questions q ON q.id = a.question_id
       GROUP BY q.category
       ORDER BY q.category`
    )
    .all();

  // 苦手な問題トップ10（間違えた回数が多い順）
  const { results: weakQuestions } = await env.DB
    .prepare(
      `SELECT
         q.id, q.question, q.answer, q.category,
         COUNT(*) AS attempts,
         SUM(CASE WHEN a.is_correct = 0 THEN 1 ELSE 0 END) AS wrong_count
       FROM attempts a
       JOIN questions q ON q.id = a.question_id
       GROUP BY q.id
       HAVING wrong_count > 0
       ORDER BY wrong_count DESC
       LIMIT 10`
    )
    .all();

  // 直近20件の解答履歴
  const { results: recent } = await env.DB
    .prepare(
      `SELECT a.id, q.question, a.user_answer, a.is_correct, a.answered_at
       FROM attempts a
       JOIN questions q ON q.id = a.question_id
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
    byCategory,
    weakQuestions,
    recent,
  });
}
