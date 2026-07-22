// GET /api/items?quiz_id=X&scope=Y
//   -> そのクイズ(スコープ絞り込み可)の全問題を、現在の習熟度から計算した
//      重み(weight)付きで返す。重みが大きいほど「出したい」項目。
//      実際に何問出すか・どの問題タイプで聞くかはフロント側(quiz.js等)が決める。
//
// POST /api/items  (teacher専用)
//   body: { quiz_id, item_key, label, answer, category, extra }
//   -> 新しい問題を1件追加する

import { masteryLevel, SELECTION_WEIGHT } from "../_lib/mastery.js";

export async function onRequestGet(context) {
  const { env, request } = context;
  const url = new URL(request.url);
  const quizId = url.searchParams.get("quiz_id");
  const scope = url.searchParams.get("scope");

  if (!quizId) {
    return new Response("quiz_id is required", { status: 400 });
  }

  let itemQuery = "SELECT id, quiz_id, item_key, label, answer, category, extra_json FROM items WHERE quiz_id = ?";
  const itemParams = [quizId];
  if (scope && scope !== "all") {
    itemQuery += " AND category = ?";
    itemParams.push(scope);
  }
  const { results: items } = await env.DB.prepare(itemQuery).bind(...itemParams).all();

  // 各itemの直近2回の解答結果(rn=1が最新、rn=2がその1つ前)をまとめて取得する。
  const { results: masteryRows } = await env.DB
    .prepare(
      `WITH ranked AS (
         SELECT a.item_id, a.is_correct,
                ROW_NUMBER() OVER (PARTITION BY a.item_id ORDER BY a.answered_at DESC) AS rn
         FROM attempts a
         JOIN items i ON i.id = a.item_id
         WHERE i.quiz_id = ?
       )
       SELECT item_id,
              MAX(CASE WHEN rn = 1 THEN is_correct END) AS last_result,
              MAX(CASE WHEN rn = 2 THEN is_correct END) AS second_result
       FROM ranked
       WHERE rn <= 2
       GROUP BY item_id`
    )
    .bind(quizId)
    .all();

  const masteryByItemId = new Map(masteryRows.map((r) => [r.item_id, r]));

  const withWeight = items.map((item) => {
    const level = masteryLevel(masteryByItemId.get(item.id));
    return {
      id: item.id,
      quiz_id: item.quiz_id,
      item_key: item.item_key,
      label: item.label,
      answer: item.answer,
      category: item.category,
      extra: item.extra_json ? JSON.parse(item.extra_json) : null,
      mastery: level,
      weight: SELECTION_WEIGHT[level],
    };
  });

  return Response.json(withWeight);
}

export async function onRequestPost(context) {
  const { env, request } = context;
  if (context.data.role !== "teacher") {
    return new Response(JSON.stringify({ error: "forbidden" }), {
      status: 403,
      headers: { "Content-Type": "application/json" },
    });
  }

  let body;
  try {
    body = await request.json();
  } catch {
    return new Response("Invalid JSON body", { status: 400 });
  }

  const { quiz_id, item_key, label, answer, category, extra } = body;
  if (!quiz_id || !item_key || !label || !answer) {
    return new Response("quiz_id, item_key, label, answer are required", { status: 400 });
  }

  const result = await env.DB
    .prepare(
      "INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES (?, ?, ?, ?, ?, ?)"
    )
    .bind(quiz_id, item_key, label, answer, category || null, extra ? JSON.stringify(extra) : null)
    .run();

  return Response.json({ id: result.meta.last_row_id }, { status: 201 });
}
