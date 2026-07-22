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
  });
}
