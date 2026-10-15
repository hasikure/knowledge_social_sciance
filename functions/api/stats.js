import { joinStudentRounds } from "../_lib/mastery.js";

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
    .prepare(`SELECT COUNT(*) AS total, SUM(a.is_correct) AS correct FROM attempts a ${joinStudentRounds("a", "r")}`)
    .first();

  // 問題ごとの初回正答率。同じ問題への再挑戦で率が上がらないよう、各itemの最初の回答だけを数える。
  const overallUnique = await env.DB
    .prepare(
      `WITH ranked AS (
         SELECT a.item_id, a.is_correct,
                ROW_NUMBER() OVER (PARTITION BY a.item_id ORDER BY a.answered_at ASC, a.id ASC) AS rn
         FROM attempts a
         ${joinStudentRounds("a", "r")}
       )
       SELECT COUNT(*) AS total, SUM(is_correct) AS correct
       FROM ranked
       WHERE rn = 1`
    )
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
       ${joinStudentRounds("a", "r")}
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
       ${joinStudentRounds("a", "r")}
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
       ${joinStudentRounds("a", "r")}
       ORDER BY a.answered_at DESC
       LIMIT 20`
    )
    .all();

  // 日ごとの演習量。日本時間の日付でまとめ、記録のある日をすべて返す。
  const { results: dailyActivity } = await env.DB
    .prepare(
      `SELECT date(a.answered_at, '+9 hours') AS activity_date,
              COUNT(*) AS question_count,
              COUNT(DISTINCT a.round_id) AS round_count,
              SUM(a.is_correct) AS correct_count
       FROM attempts a
       ${joinStudentRounds("a", "r")}
       GROUP BY date(a.answered_at, '+9 hours')
       ORDER BY activity_date DESC`
    )
    .all();

  return Response.json({
    overall: {
      total: overall.total || 0,
      correct: overall.correct || 0,
      accuracy: overall.total ? overall.correct / overall.total : null,
    },
    overallUnique: {
      total: overallUnique.total || 0,
      correct: overallUnique.correct || 0,
      accuracy: overallUnique.total ? overallUnique.correct / overallUnique.total : null,
    },
    byQuiz,
    weakItems,
    recent,
    dailyActivity,
  });
}
