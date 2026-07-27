// 地図記号クイズの出題定義
// 記号のSVGは assets/chizu-kigou-symbols.js が持つ。
// 先生用の一覧など、そのスクリプトを読み込んでいない画面でも
// 出題文だけは取れるように、図が作れない場合は visual を省く。
ChishikiQuestions.register("chizu-kigou", [
  {
    build(item) {
      const q = {
        prompt: "次の地図記号は何を表しているか。",
        answer: item.answer,
      };
      if (typeof ChizuKigou !== "undefined") {
        const wrap = document.createElement("div");
        wrap.className = "quiz-symbol-visual";
        const svg = ChizuKigou.build(item.item_key);
        if (svg) wrap.appendChild(svg);
        q.visual = wrap;
      }
      return q;
    },
  },
]);
