// GET /api/me -> ログイン中のユーザーの役割を返す。
// フロント側で「先生用メニューを出すかどうか」を判定するために使う
// (役割はHttpOnly Cookieの中にあり、JSから直接読めないため)。

export async function onRequestGet(context) {
  return Response.json({ role: context.data.role });
}
