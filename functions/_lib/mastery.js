// 習熟度まわりの共通ロジック。functions/api/items.js と functions/api/dashboard.js
// の両方から使う。ファイル名がアンダースコア始まりのフォルダにあるので、
// Cloudflare Pages Functionsのルーティング対象にはならない(共有ライブラリ扱い)。

export const MASTERY_WEIGHT = {
  unseen: 0,
  "incorrect-once": 0.3,
  "correct-once": 0.7,
  mastered: 1.0,
  struggling: 0,
};

// アイテム選出(出題)用の重み。5段階のうち「まだ怪しい/未出題」ほど大きくする。
export const SELECTION_WEIGHT = {
  unseen: 5,
  struggling: 6,
  "incorrect-once": 4,
  "correct-once": 2,
  mastered: 1,
};

export function masteryLevel(row) {
  if (!row || row.last_result === null || row.last_result === undefined) return "unseen";
  if (row.last_result === 1) {
    return row.second_result === 1 ? "mastered" : "correct-once";
  }
  return row.second_result === 0 ? "struggling" : "incorrect-once";
}

// quiz_id群に属する全itemについて、直近2回の解答から習熟度を判定して返す。
// 戻り値: [{ item_id, level }] (未出題のものも含む全item分)
export async function getMasteryForQuizzes(db, quizIds) {
  const placeholders = quizIds.map(() => "?").join(",");

  const { results: allItems } = await db
    .prepare(`SELECT id FROM items WHERE quiz_id IN (${placeholders})`)
    .bind(...quizIds)
    .all();

  const { results: masteryRows } = await db
    .prepare(
      `WITH ranked AS (
         SELECT a.item_id, a.is_correct,
                ROW_NUMBER() OVER (PARTITION BY a.item_id ORDER BY a.answered_at DESC) AS rn
         FROM attempts a
         JOIN items i ON i.id = a.item_id
         WHERE i.quiz_id IN (${placeholders})
       )
       SELECT item_id,
              MAX(CASE WHEN rn = 1 THEN is_correct END) AS last_result,
              MAX(CASE WHEN rn = 2 THEN is_correct END) AS second_result
       FROM ranked
       WHERE rn <= 2
       GROUP BY item_id`
    )
    .bind(...quizIds)
    .all();

  const byItemId = new Map(masteryRows.map((r) => [r.item_id, r]));
  return allItems.map((item) => ({
    item_id: item.id,
    level: masteryLevel(byItemId.get(item.id)),
  }));
}

// 0〜100のジャンルスコア(%)。未出題も分母に含める(手をつけた分だけで良い顔をしない)。
export function genreScorePct(masteryList) {
  if (masteryList.length === 0) return 0;
  const total = masteryList.reduce((sum, m) => sum + MASTERY_WEIGHT[m.level], 0);
  return (total / masteryList.length) * 100;
}
