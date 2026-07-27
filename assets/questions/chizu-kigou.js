// 地図記号クイズ: 問題文はDBのlabelにあるので、記号の絵を足すだけ。
// 記号のSVGは assets/chizu-kigou-symbols.js が持ち、item_key で引く。
ChishikiQuestions.register("chizu-kigou", (item) => {
  if (typeof ChizuKigou === "undefined") return null;
  const wrap = document.createElement("div");
  wrap.className = "quiz-symbol-visual";
  const svg = ChizuKigou.build(item.item_key);
  if (svg) wrap.appendChild(svg);
  return wrap;
});
