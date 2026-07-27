// 出題定義のレジストリ。
//
// 各クイズの「どう問うか」は assets/questions/<quiz_id>.js に置き、
// このレジストリに登録する。出題ページと、先生用の問題一覧の両方から使う。
// 一覧側で実際の出題文を見せたいので、ページ内に直接書かずここに集めている。
//
//   ChishikiQuestions.register("chikei", [
//     { build(item) { return { prompt: "...", answer: item.label }; } },
//   ]);
//
//   ChishikiQuiz.run({ quizId: "chikei", questionTypes: ChishikiQuestions.get("chikei"), ... });
(() => {
  const registry = new Map();

  function register(quizId, questionTypes) {
    registry.set(quizId, questionTypes);
  }

  function get(quizId) {
    const types = registry.get(quizId);
    if (!types) throw new Error(`出題定義が登録されていません: ${quizId}`);
    return types;
  }

  function has(quizId) {
    return registry.has(quizId);
  }

  // その項目から作られる問題を全パターン返す。先生用の一覧で使う。
  // 図の組み立てに失敗しても一覧が壊れないよう、例外は握りつぶして飛ばす。
  function previewsFor(quizId, item) {
    if (!registry.has(quizId)) return [];
    return registry
      .get(quizId)
      .filter((type) => !type.supports || type.supports(item))
      .map((type) => {
        try {
          const q = type.build(item, [item]);
          return { prompt: q.prompt, answer: q.answer, accept: q.accept || null };
        } catch {
          return null;
        }
      })
      .filter(Boolean);
  }

  window.ChishikiQuestions = { register, get, has, previewsFor };
})();
