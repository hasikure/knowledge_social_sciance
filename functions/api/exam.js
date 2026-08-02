// GET /api/exam?quiz_id=X
//   -> そのクイズの修了テストの状態を返す
//      { pct, unlockPct, unlocked, certified, certifiedAt, examSize, passMark, allowedMistakes }
//
// 修了テストは「マスター認定」への最後の関門。
// 定着度95%に届くには、ほぼ全問が「2回連続正解」になる必要があるが、
// 抽選は未出題(重み5)を覚えかけ(重み2)より優先するので、最後の数問が
// なかなか出てこない。全問を一度に解いて証明できる道を用意する。
//
// 合否の記録は rounds に持たせる(mode='exam')。認定用のテーブルは作らない。

import { getMasteryForQuizzes, genreScorePct, studentRounds } from "../_lib/mastery.js";

// 定着度がここまで来たら挑戦できる
export const EXAM_UNLOCK_PCT = 90;
// 出題数の上限。日本地理(107問)をそのまま出すと長すぎるため
export const EXAM_MAX_QUESTIONS = 50;

// 合格ライン。95%以上の正解。
// ただし問題数が少ないクイズ(13問など)で1問のミスも許さないのは厳しすぎるので、
// 最低1問は間違えられるようにする。
export function allowedMistakesFor(total) {
  return Math.max(1, Math.floor(total * 0.05));
}

export function isPass(score, total) {
  return total > 0 && total - score <= allowedMistakesFor(total);
}

export async function onRequestGet(context) {
  const { env, request } = context;
  const quizId = new URL(request.url).searchParams.get("quiz_id");
  if (!quizId) return new Response("quiz_id is required", { status: 400 });

  const quiz = await env.DB
    .prepare("SELECT id FROM quizzes WHERE id = ?")
    .bind(quizId)
    .first();
  if (!quiz) return new Response("unknown quiz_id", { status: 404 });

  const masteryList = await getMasteryForQuizzes(env.DB, [quizId]);
  const pct = genreScorePct(masteryList);
  const examSize = Math.min(EXAM_MAX_QUESTIONS, masteryList.length);

  // 合格した修了テストのうち一番古いものを「認定日」とする
  const passed = await env.DB
    .prepare(
      `SELECT score, total, played_at FROM rounds
       WHERE quiz_id = ? AND mode = 'exam' AND ${studentRounds()}
       ORDER BY played_at ASC`
    )
    .bind(quizId)
    .all();
  const rows = passed.results || [];
  const firstPass = rows.find((r) => isPass(r.score, r.total));

  return Response.json({
    pct,
    unlockPct: EXAM_UNLOCK_PCT,
    // 一度でも受けたら挑戦権は残す。落ちると全問の解答が記録されて定着度が下がるので、
    // 定着度だけで判定すると「落ちた瞬間に受け直せなくなる」ため。
    unlocked: pct >= EXAM_UNLOCK_PCT || rows.length > 0,
    certified: Boolean(firstPass),
    certifiedAt: firstPass ? firstPass.played_at : null,
    examSize,
    allowedMistakes: allowedMistakesFor(examSize),
  });
}
