// 日本地理クイズの出題定義
// このクイズは label に問題文そのものが入っている。
ChishikiQuestions.register("nihon-chiri", [
  {
    // 問題文 → 答え
    build(item) {
      return {
        prompt: item.label,
        answer: item.answer,
      };
    },
  },
]);
