// 日本の地形クイズの出題定義
ChishikiQuestions.register("chikei", [
  {
    // 説明 → 名称
    build(item) {
      return {
        prompt: `次の説明にあてはまる地形は？\n「${item.extra.hint}」`,
        answer: item.label,
      };
    },
  },
]);
