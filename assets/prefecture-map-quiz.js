(() => {
  // Region crop boxes are in the map's own 1000x1000 viewBox coordinate space,
  // computed from the actual rendered geometry (union of every prefecture's
  // bounding box in that region, including small outlying islands). Kyushu is
  // bundled with Okinawa as in standard 8-region grouping; because Okinawa sits
  // far south of Kyushu even on this compact map, that one region stays tall.
  const REGIONS = [
    { key: "all", label: "全国", codes: null, viewBox: null },
    { key: "hokkaido", label: "北海道地方", codes: ["1"], viewBox: { x: 602, y: 10, w: 407, h: 287 } },
    { key: "tohoku", label: "東北地方", codes: ["2", "3", "4", "5", "6", "7"], viewBox: { x: 594, y: 287, w: 138, h: 298 } },
    { key: "kanto", label: "関東地方", codes: ["8", "9", "10", "11", "12", "13", "14"], viewBox: { x: 557, y: 563, w: 125, h: 257 } },
    { key: "chubu", label: "中部地方", codes: ["15", "16", "17", "18", "19", "20", "21", "22", "23"], viewBox: { x: 408, y: 476, w: 221, h: 249 } },
    { key: "kinki", label: "近畿地方", codes: ["24", "25", "26", "27", "28", "29", "30"], viewBox: { x: 345, y: 649, w: 137, h: 147 } },
    { key: "chugoku", label: "中国地方", codes: ["31", "32", "33", "34", "35"], viewBox: { x: 168, y: 610, w: 191, h: 156 } },
    { key: "shikoku", label: "四国地方", codes: ["36", "37", "38", "39"], viewBox: { x: 225, y: 724, w: 144, h: 111 } },
    { key: "kyushu-okinawa", label: "九州・沖縄地方", codes: ["40", "41", "42", "43", "44", "45", "46", "47"], viewBox: { x: 44, y: 17, w: 417, h: 965 } },
  ];

  function pad(box, ratio) {
    if (!box) return { x: 0, y: 0, w: 1000, h: 1000 };
    const padX = box.w * ratio;
    const padY = box.h * ratio;
    return { x: box.x - padX, y: box.y - padY, w: box.w + padX * 2, h: box.h + padY * 2 };
  }

  // Regions range from roughly square (Kanto) to very tall/narrow
  // (Kyushu+Okinawa, Tohoku). Scaling purely by width (as for the full 1000x1000
  // map) would make tall regions render taller than the viewport. Fit within a
  // fixed box instead, like an image with object-fit: contain.
  const MAX_MAP_WIDTH = 480;
  const MAX_MAP_HEIGHT = 520;

  function sizeSvgToViewBox(svgEl, vb) {
    const scale = Math.min(MAX_MAP_WIDTH / vb.w, MAX_MAP_HEIGHT / vb.h);
    svgEl.style.width = `${vb.w * scale}px`;
    svgEl.style.height = `${vb.h * scale}px`;
  }

  function shuffle(array) {
    const a = array.slice();
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  }

  function run(config) {
    // config: { quizId, items: [{code, prefName, answerName}], title, answerNoun, showPrefName }
    const { quizId, items, answerNoun, showPrefName } = config;
    const itemsByCode = new Map(items.map((it) => [it.code, it]));

    const svgEl = document.querySelector("#map-root svg");
    const scopeScreen = document.getElementById("scope-screen");
    const scopeButtons = document.getElementById("scope-buttons");
    const playScreen = document.getElementById("play-screen");
    const resultScreen = document.getElementById("result-screen");
    const statusLine = document.getElementById("status-line");
    const nameBank = document.getElementById("name-bank");
    const answerLog = document.getElementById("answer-log");
    const resultScope = document.getElementById("result-scope");
    const resultScore = document.getElementById("result-score");
    const resultBest = document.getElementById("result-best");
    const retryBtn = document.getElementById("retry-btn");
    const backBtn = document.getElementById("back-to-scope-btn");

    const prefElements = new Map();
    document.querySelectorAll("#map-root .prefecture").forEach((el) => {
      const code = el.dataset.code;
      prefElements.set(code, el);
      el.addEventListener("click", () => onMapClick(code));
    });

    let region = null;
    let roundCodes = [];
    let selectedCode = null;

    function bestKeyFor(r) {
      return `chishikiQuiz:${quizId}:${r.key}:bestScore`;
    }

    REGIONS.forEach((r) => {
      const btn = document.createElement("button");
      btn.type = "button";
      btn.className = "primary-btn scope-btn";
      btn.textContent = r.label;
      btn.addEventListener("click", () => startRound(r));
      scopeButtons.appendChild(btn);
    });

    function startRound(r) {
      region = r;
      roundCodes = r.codes ? r.codes.slice() : items.map((it) => it.code);

      const vb = pad(r.viewBox, 0.08);
      svgEl.setAttribute("viewBox", `${vb.x} ${vb.y} ${vb.w} ${vb.h}`);
      sizeSvgToViewBox(svgEl, vb);

      prefElements.forEach((el) => el.classList.remove("selected", "answered-correct", "answered-incorrect"));
      selectedCode = null;
      statusLine.textContent = "地図から都道府県を選んでください";
      answerLog.innerHTML = "";
      nameBank.innerHTML = "";
      shuffle(roundCodes.map((c) => itemsByCode.get(c))).forEach((it) => {
        const btn = document.createElement("button");
        btn.type = "button";
        btn.className = "name-chip";
        btn.textContent = it.answerName;
        btn.dataset.code = it.code;
        btn.addEventListener("click", () => onNameClick(it.code, btn));
        nameBank.appendChild(btn);
      });

      scopeScreen.hidden = true;
      resultScreen.hidden = true;
      playScreen.hidden = false;
    }

    function onMapClick(code) {
      if (!roundCodes.includes(code)) return;
      const el = prefElements.get(code);
      if (el.classList.contains("answered-correct") || el.classList.contains("answered-incorrect")) {
        return;
      }
      if (selectedCode) {
        prefElements.get(selectedCode).classList.remove("selected");
      }
      selectedCode = code;
      el.classList.add("selected");
      statusLine.textContent = `${answerNoun}を下のリストから選んでください`;
    }

    function onNameClick(chosenCode, btn) {
      if (!selectedCode) {
        statusLine.textContent = "先に地図上の都道府県をクリックしてください";
        return;
      }
      const targetEl = prefElements.get(selectedCode);
      const targetItem = itemsByCode.get(selectedCode);
      const isCorrect = chosenCode === selectedCode;

      targetEl.classList.remove("selected");
      targetEl.classList.add(isCorrect ? "answered-correct" : "answered-incorrect");
      btn.remove();

      const logItem = document.createElement("li");
      if (isCorrect) {
        logItem.className = "log-correct";
        logItem.textContent = showPrefName
          ? `${targetItem.prefName}の${answerNoun}「${targetItem.answerName}」正解！`
          : `「${targetItem.answerName}」正解！`;
      } else {
        logItem.className = "log-incorrect";
        const chosenName = itemsByCode.get(chosenCode).answerName;
        logItem.textContent = showPrefName
          ? `${targetItem.prefName}に「${chosenName}」を選択 → 不正解(正解は「${targetItem.answerName}」)`
          : `「${chosenName}」を選択 → 不正解(正解は「${targetItem.answerName}」)`;
      }
      answerLog.prepend(logItem);

      selectedCode = null;

      const answeredCount = roundCodes.filter((c) => {
        const cls = prefElements.get(c).classList;
        return cls.contains("answered-correct") || cls.contains("answered-incorrect");
      }).length;

      if (answeredCount >= roundCodes.length) {
        finishRound();
      } else {
        statusLine.textContent = "地図から都道府県を選んでください";
      }
    }

    function finishRound() {
      const score = roundCodes.filter((c) => prefElements.get(c).classList.contains("answered-correct")).length;
      const total = roundCodes.length;
      const key = bestKeyFor(region);
      const prevBest = Number(localStorage.getItem(key) || 0);
      const isNewBest = score > prevBest;
      if (isNewBest) localStorage.setItem(key, String(score));

      resultScope.textContent = region.label;
      resultScore.textContent = `${score} / ${total}`;
      resultBest.textContent = isNewBest ? "自己ベスト更新！" : `自己ベスト: ${Math.max(prevBest, score)} / ${total}`;

      playScreen.hidden = true;
      resultScreen.hidden = false;
    }

    retryBtn.addEventListener("click", () => startRound(region));
    backBtn.addEventListener("click", () => {
      resultScreen.hidden = true;
      playScreen.hidden = true;
      scopeScreen.hidden = false;
    });
  }

  window.PrefectureMapQuiz = { run, REGIONS };
})();
