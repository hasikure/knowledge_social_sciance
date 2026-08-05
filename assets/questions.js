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

  // extra.calculation の variants から、その回専用の計算問題を作る。
  // 例: {"calculation":{"template":"質量が{mass} g、体積が{volume} cm³の物質の密度は何g/cm³か。",
  // "unit":"g/cm³", "variants":[{"mass":54,"volume":20,"answer":"2.7"}]}}
  function buildCalculation(item) {
    const calculation = item.extra && item.extra.calculation;
    if (!calculation || !Array.isArray(calculation.variants) || calculation.variants.length === 0) return null;

    const variant = calculation.variants[Math.floor(Math.random() * calculation.variants.length)];
    if (!calculation.template || variant.answer === undefined || variant.answer === null) return null;

    const prompt = calculation.template.replace(/\{([A-Za-z][A-Za-z0-9_]*)\}/g, (whole, key) =>
      Object.prototype.hasOwnProperty.call(variant, key) ? String(variant[key]) : whole
    );
    const answer = String(variant.answer);
    const accept = [answer];
    if (calculation.unit) accept.push(`${answer}${calculation.unit}`, `${answer} ${calculation.unit}`);
    return { prompt, answer, accept, calculation: true, snapshot: { prompt, answer, variant } };
  }

  function register(quizId, buildVisual) {
    visualBuilders.set(quizId, buildVisual);
  }

  // クイズエンジンに渡す出題タイプ。DBの1行がそのまま1問になる。
  function typesFor(quizId) {
    const buildVisual = visualBuilders.get(quizId);
    return [
      {
        supports(item) {
          return Boolean(item.extra && item.extra.calculation);
        },
        build(item) {
          return buildCalculation(item) || { prompt: item.label, answer: item.answer };
        },
      },
      {
        supports(item) {
          return !Boolean(item.extra && item.extra.calculation);
        },
        build(item) {
          // 別解(item.extra.accept)はエンジン側が拾うので、ここでは触らない。
          const q = { prompt: item.label, answer: item.answer };
          if (buildVisual) {
            // 図が作れない画面(先生用の一覧など)では null が返る
            const visual = buildVisual(item);
            if (visual) q.visual = visual;
          }
          if (item.extra && item.extra.explanation) q.explanation = item.extra.explanation;
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

  window.ChishikiQuestions = { register, typesFor, hasVisual, buildVisual, buildCalculation };
})();
