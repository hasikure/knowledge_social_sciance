// POST /api/record
// body: { question_id: number, user_answer: string, is_correct: boolean }

export async function onRequestPost(context) {
  const { env, request } = context;

  let body;
  try {
    body = await request.json();
  } catch {
    return new Response("Invalid JSON body", { status: 400 });
  }

  const { question_id, user_answer, is_correct } = body;

  if (!question_id || typeof is_correct !== "boolean") {
    return new Response(
      "question_id (number) and is_correct (boolean) are required",
      { status: 400 }
    );
  }

  await env.DB
    .prepare(
      "INSERT INTO attempts (question_id, user_answer, is_correct) VALUES (?, ?, ?)"
    )
    .bind(question_id, user_answer || null, is_correct ? 1 : 0)
    .run();

  return Response.json({ ok: true }, { status: 201 });
}
