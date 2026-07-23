// GET /api/dashboard
//   -> トップページ表示に必要な値をまとめて返す:
//      各クイズの自己ベスト(全国/全項目スコープ)、連続プレイ日数、週間プレイ回数、
//      ジャンル別の習熟度スコア(%)

import { getMasteryForQuizzes, genreScorePct } from "../_lib/mastery.js";

const QUIZ_MAX = {
  "sekai-isan": 26,
  todofuken: 47,
  kencho: 47,
  chikei: 25,
};

const GENRES = [
  { key: "sekai-isan", name: "世界遺産", quizIds: ["sekai-isan"] },
  { key: "chimei", name: "日本の地名", quizIds: ["todofuken", "kencho"] },
  { key: "chikei", name: "日本の地形", quizIds: ["chikei"] },
];

// レベルは正答率とは無関係に、これまで解いた問題数(累積経験値)で決まる。
const XP_CORRECT = 10;
const XP_INCORRECT = 3;
const MAX_LEVEL = 100;
// 必要経験値(そのレベルに到達するまでの累積) = a*x + b*x^2 + c*x^3 (x = level-1)
// Lv80到達に約2000問、Lv100到達に約3000問相当。序盤の最初の一歩は軽く、徐々にきつくなる。
const XP_CURVE_A = 22.265962638928332;
const XP_CURVE_B = 2.737369622541412;
const XP_CURVE_C = -0.003332261469693653;

function xpForLevel(level) {
  const x = level - 1;
  return Math.round(XP_CURVE_A * x + XP_CURVE_B * x * x + XP_CURVE_C * x * x * x);
}

function levelForXp(xp) {
  let level = 1;
  while (level < MAX_LEVEL && xp >= xpForLevel(level + 1)) {
    level++;
  }
  return level;
}

function dateStr(d) {
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
}

function mostRecentMonday(d) {
  const day = d.getDay();
  const diff = day === 0 ? 6 : day - 1;
  return new Date(d.getFullYear(), d.getMonth(), d.getDate() - diff);
}

export async function onRequestGet(context) {
  const { env } = context;

  // 各クイズの自己ベスト(scope='all')
  const bestScores = {};
  for (const quizId of Object.keys(QUIZ_MAX)) {
    const row = await env.DB
      .prepare("SELECT score FROM rounds WHERE quiz_id = ? AND scope = 'all' ORDER BY score DESC LIMIT 1")
      .bind(quizId)
      .first();
    bestScores[quizId] = row ? row.score : 0;
  }
  const totalScore = Object.values(bestScores).reduce((s, v) => s + v, 0);
  const totalMax = Object.values(QUIZ_MAX).reduce((s, v) => s + v, 0);

  // レベル用の累積経験値(全ラウンドの全解答が対象、復習の即時フォローアップはDB未記録なので含まれない)
  const xpRow = await env.DB
    .prepare("SELECT COUNT(*) AS total, SUM(is_correct) AS correct FROM attempts")
    .first();
  const correctCount = xpRow.correct || 0;
  const incorrectCount = (xpRow.total || 0) - correctCount;
  const totalXp = correctCount * XP_CORRECT + incorrectCount * XP_INCORRECT;
  const level = levelForXp(totalXp);
  const xpBase = xpForLevel(level);
  const xpNext = level >= MAX_LEVEL ? null : xpForLevel(level + 1);

  // 連続プレイ日数・週間プレイ回数は、全ラウンドの played_at 日付から算出する。
  const { results: playedDates } = await env.DB
    .prepare("SELECT DISTINCT date(played_at) AS d FROM rounds")
    .all();
  const dateSet = new Set(playedDates.map((r) => r.d));

  let streak = 0;
  let cursor = new Date();
  if (!dateSet.has(dateStr(cursor))) {
    cursor = new Date(cursor.getTime() - 86400000);
  }
  while (dateSet.has(dateStr(cursor))) {
    streak += 1;
    cursor = new Date(cursor.getTime() - 86400000);
  }

  const monday = mostRecentMonday(new Date());
  const weeklyRow = await env.DB
    .prepare("SELECT COUNT(*) AS n FROM rounds WHERE played_at >= ?")
    .bind(monday.toISOString())
    .first();
  const weeklyCount = weeklyRow ? weeklyRow.n : 0;

  // ジャンル別スコア
  const genres = [];
  for (const genre of GENRES) {
    const masteryList = await getMasteryForQuizzes(env.DB, genre.quizIds);
    genres.push({
      key: genre.key,
      name: genre.name,
      pct: genreScorePct(masteryList),
    });
  }

  return Response.json({
    bestScores,
    totalScore,
    totalMax,
    streak,
    weeklyCount,
    genres,
    xp: {
      total: totalXp,
      level,
      base: xpBase,
      next: xpNext,
    },
  });
}
