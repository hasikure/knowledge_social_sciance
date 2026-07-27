// 日本の世界遺産クイズの出題定義
ChishikiQuestions.register("sekai-isan", [
  {
    // 説明 → 名称
    build(item) {
      return {
        prompt: `次の説明にあてはまる世界遺産は？\n「${item.extra.hint}」`,
        answer: item.label,
      };
    },
  },
  {
    // 名称 → 所在都道府県
    // 複数の県にまたがる遺産が26件中9件ある(富士山、明治日本の産業革命遺産など)。
    // どの県を答えても正解になるよう、全部を accept に渡す。
    build(item) {
      const prefectures = item.extra.prefectures;
      return {
        prompt: `「${item.label}」の所在都道府県を1つ答えなさい。`,
        // answer は誤答時の表示用。判定は accept 側で行うので全県を見せる。
        answer: prefectures.join("・"),
        accept: prefectures,
      };
    },
  },
  {
    // 名称 → 文化遺産/自然遺産
    build(item) {
      return {
        prompt: `「${item.label}」は文化遺産・自然遺産のどちらに分類される？`,
        answer: item.category,
      };
    },
  },
]);
