// 都道府県(地図)クイズの出題定義
// 地図のSVGは出題ページの <template id="japan-map-template"> にある。
// 先生用の一覧などテンプレートが無い画面では、図を省いて出題文だけ返す。
(() => {
  // 各地方のクロップ範囲(prefecture-map-quiz.jsのREGIONSと同じ座標)。
  const REGION_VIEWBOX = {
    hokkaido: { x: 602, y: 10, w: 407, h: 287 },
    tohoku: { x: 594, y: 287, w: 138, h: 298 },
    kanto: { x: 557, y: 563, w: 125, h: 257 },
    chubu: { x: 408, y: 476, w: 221, h: 249 },
    kinki: { x: 345, y: 649, w: 137, h: 147 },
    chugoku: { x: 168, y: 610, w: 191, h: 156 },
    shikoku: { x: 225, y: 724, w: 144, h: 111 },
    "kyushu-okinawa": { x: 44, y: 17, w: 417, h: 965 },
  };

  function pad(box, ratio) {
    const padX = box.w * ratio;
    const padY = box.h * ratio;
    return { x: box.x - padX, y: box.y - padY, w: box.w + padX * 2, h: box.h + padY * 2 };
  }

  function buildMapVisual(item) {
    const template = document.getElementById("japan-map-template");
    if (!template) return null;

    const svg = template.content.querySelector("svg").cloneNode(true);
    const target = svg.querySelector(`[data-code="${item.item_key}"]`);
    if (target) target.classList.add("quiz-highlight");

    const box = REGION_VIEWBOX[item.category];
    if (box) {
      const vb = pad(box, 0.1);
      svg.setAttribute("viewBox", `${vb.x} ${vb.y} ${vb.w} ${vb.h}`);
    }

    const wrap = document.createElement("div");
    wrap.className = "quiz-map-visual";
    wrap.appendChild(svg);
    return wrap;
  }

  ChishikiQuestions.register("todofuken-chizu", [
    {
      build(item) {
        const q = {
          prompt: "次の地図で色がついている都道府県はどこか。",
          answer: item.answer,
        };
        const visual = buildMapVisual(item);
        if (visual) q.visual = visual;
        return q;
      },
    },
  ]);
})();
