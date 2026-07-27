// 図の付け足しだけを担うレジストリ。
//
// 問題文と答えはDBが持つ(items.label が問題文、items.answer が正解)。
// 図が要るクイズだけ、item から表示用の要素を作る関数を登録する。
//
//   ChishikiQuestions.register("chizu-kigou", (item) => 記号のSVGを入れたdiv);
//
// 登録が無いクイズは文字だけの一問一答になる。出題ページ側で何も書く必要はない。
(() => {
  const visualBuilders = new Map();

  function register(quizId, buildVisual) {
    visualBuilders.set(quizId, buildVisual);
  }

  // クイズエンジンに渡す出題タイプ。DBの1行がそのまま1問になる。
  function typesFor(quizId) {
    const buildVisual = visualBuilders.get(quizId);
    return [
      {
        build(item) {
          // 別解(item.extra.accept)はエンジン側が拾うので、ここでは触らない。
          const q = { prompt: item.label, answer: item.answer };
          if (buildVisual) {
            // 図が作れない画面(先生用の一覧など)では null が返る
            const visual = buildVisual(item);
            if (visual) q.visual = visual;
          }
          return q;
        },
      },
    ];
  }

  function hasVisual(quizId) {
    return visualBuilders.has(quizId);
  }

  function buildVisual(quizId, item) {
    const builder = visualBuilders.get(quizId);
    if (!builder) return null;
    try {
      return builder(item);
    } catch {
      return null;
    }
  }

  window.ChishikiQuestions = { register, typesFor, hasVisual, buildVisual };
})();
