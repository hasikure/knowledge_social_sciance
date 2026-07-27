// 歴史クイズの出題定義
// 3パターン。項目によって年代や人物を持たないので、supports() で絞る。
ChishikiQuestions.register("rekishi", [
  {
    // 説明 → 出来事・用語
    build(item) {
      return {
        prompt: `次の説明にあてはまる語句を答えなさい。\n「${item.extra.hint}」`,
        answer: item.label,
      };
    },
  },
  {
    // 出来事 → 年代
    supports: (item) => item.extra && typeof item.extra.year === "number",
    build(item) {
      const year = item.extra.year;
      return {
        prompt: `「${item.label}」は西暦何年のことか。数字で答えなさい。`,
        answer: `${year}`,
        // 「1192」でも「1192年」でも正解にする
        accept: [`${year}`, `${year}年`],
      };
    },
  },
  {
    // 業績 → 人物
    supports: (item) => item.extra && item.extra.person && item.extra.achievement,
    build(item) {
      return {
        prompt: `次の説明にあてはまる人物はだれか。\n「${item.extra.achievement}」`,
        answer: item.extra.person,
      };
    },
  },
]);
