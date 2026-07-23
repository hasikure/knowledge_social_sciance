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
    // config: { quizId, answerNoun, showPrefName }
    // 問題データは /api/items?quiz_id=... から取得する(全国分を1回だけ)。
    const { quizId, answerNoun, showPrefName } = config;
    let itemsByCode = new Map(); // code(=item_key) -> { id, label(prefName), answer(answerName) }

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
    let reviewMode = false;
    let attemptsLog = []; // [{ item_id, is_correct }] for the current (normal) round
    let missedCodes = [];

    async function fetchItems() {
      const res = await fetch(`/api/items?quiz_id=${encodeURIComponent(quizId)}&scope=all`);
      const items = await res.json();
      itemsByCode = new Map(items.map((it) => [it.item_key, it]));
    }

    async function fetchBest(r) {
      const res = await fetch(`/api/rounds?quiz_id=${encodeURIComponent(quizId)}&scope=${encodeURIComponent(r.key)}`);
      if (!res.ok) return null;
      return res.json();
    }

    const scopeLoading = document.createElement("p");
    scopeLoading.className = "status-line";
    scopeLoading.textContent = "読み込み中...";
    scopeButtons.appendChild(scopeLoading);

    REGIONS.forEach((r) => {
      const btn = document.createElement("button");
      btn.type = "button";
      btn.className = "primary-btn scope-btn";
      btn.textContent = r.label;
      btn.disabled = true;
      btn.addEventListener("click", () => startRound(r));
      scopeButtons.appendChild(btn);
    });

    function startRound(r) {
      region = r;
      reviewMode = false;
      roundCodes = r.codes ? r.codes.slice() : [...itemsByCode.keys()];
      attemptsLog = [];
      missedCodes = [];

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
        btn.textContent = it.answer;
        btn.dataset.code = it.item_key;
        btn.addEventListener("click", () => onNameClick(it.item_key, btn));
        nameBank.appendChild(btn);
      });

      scopeScreen.hidden = true;
      resultScreen.hidden = true;
      playScreen.hidden = false;
    }

    function startReview(codes) {
      reviewMode = true;
      roundCodes = codes.slice();

      prefElements.forEach((el) => el.classList.remove("selected", "answered-correct", "answered-incorrect"));
      // 復習対象以外は最初から解答済み扱いにして、地図上でクリックできないようにする。
      itemsByCode.forEach((it, code) => {
        if (!roundCodes.includes(code)) {
          prefElements.get(code).classList.add("answered-correct");
        }
      });
      selectedCode = null;
      statusLine.textContent = "地図から都道府県を選んでください(復習)";
      answerLog.innerHTML = "";
      nameBank.innerHTML = "";
      shuffle(roundCodes.map((c) => itemsByCode.get(c))).forEach((it) => {
        const btn = document.createElement("button");
        btn.type = "button";
        btn.className = "name-chip";
        btn.textContent = it.answer;
        btn.dataset.code = it.item_key;
        btn.addEventListener("click", () => onNameClick(it.item_key, btn));
        nameBank.appendChild(btn);
      });

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

      if (!reviewMode) {
        attemptsLog.push({ item_id: targetItem.id, is_correct: isCorrect });
        if (!isCorrect) missedCodes.push(selectedCode);
      }

      const logItem = document.createElement("li");
      if (isCorrect) {
        logItem.className = "log-correct";
        logItem.textContent = showPrefName
          ? `${targetItem.label}の${answerNoun}「${targetItem.answer}」正解！`
          : `「${targetItem.answer}」正解！`;
      } else {
        logItem.className = "log-incorrect";
        const chosenName = itemsByCode.get(chosenCode).answer;
        logItem.textContent = showPrefName
          ? `${targetItem.label}に「${chosenName}」を選択 → 不正解(正解は「${targetItem.answer}」)`
          : `「${chosenName}」を選択 → 不正解(正解は「${targetItem.answer}」)`;
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

    async function finishRound() {
      const score = roundCodes.filter((c) => prefElements.get(c).classList.contains("answered-correct")).length;
      const total = roundCodes.length;

      resultScope.textContent = reviewMode ? `${region.label}(復習)` : region.label;
      resultScore.textContent = `${score} / ${total}`;

      if (reviewMode) {
        resultBest.textContent = "苦手だった問題の復習でした";
      } else {
        await fetch("/api/rounds", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ quiz_id: quizId, scope: region.key, attempts: attemptsLog }),
        });
        const best = await fetchBest(region);
        resultBest.textContent = best && score >= best.score ? "自己ベスト更新！" : best ? `自己ベスト: ${best.score} / ${best.total}` : "";
      }

      const reviewBtn = document.getElementById("review-missed-btn");
      if (reviewBtn) {
        if (!reviewMode && missedCodes.length > 0) {
          reviewBtn.hidden = false;
          reviewBtn.textContent = `間違えた${missedCodes.length}問だけもう一度`;
        } else {
          reviewBtn.hidden = true;
        }
      }

      playScreen.hidden = true;
      resultScreen.hidden = false;
    }

    retryBtn.addEventListener("click", () => startRound(region));
    backBtn.addEventListener("click", () => {
      resultScreen.hidden = true;
      playScreen.hidden = true;
      scopeScreen.hidden = false;
    });

    const reviewBtn = document.getElementById("review-missed-btn");
    if (reviewBtn) {
      reviewBtn.addEventListener("click", () => {
        const codes = missedCodes.slice();
        startReview(codes);
      });
    }

    fetchItems().then(() => {
      scopeLoading.remove();
      scopeButtons.querySelectorAll(".scope-btn").forEach((btn) => {
        btn.disabled = false;
      });
    });
  }

  window.PrefectureMapQuiz = { run, REGIONS };
})();
