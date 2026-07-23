(() => {
  function shuffle(array) {
    const a = array.slice();
    for (let i = a.length - 1; i > 0; i--) {
      const j = Math.floor(Math.random() * (i + 1));
      [a[i], a[j]] = [a[j], a[i]];
    }
    return a;
  }

  function pickDistractors(pool, excludeValues, count) {
    const unique = [...new Set(pool)].filter((v) => !excludeValues.includes(v));
    return shuffle(unique).slice(0, count);
  }

  // Efraimidis-Spirakis weighted sampling without replacement: each item gets
  // a random key raised to 1/weight, and the top-N keys win. Higher weight
  // (weaker items) -> more likely to land near the top.
  function weightedSample(items, weightOf, n) {
    const withKeys = items.map((item) => {
      const w = Math.max(weightOf(item), 0.0001);
      return { item, key: Math.pow(Math.random(), 1 / w) };
    });
    withKeys.sort((a, b) => b.key - a.key);
    return withKeys.slice(0, n).map((x) => x.item);
  }

  function run(config) {
    const container = document.getElementById(config.mountId || "quiz-app");
    if (!container) return;

    const { quizId, questionTypes, title } = config;
    const scope = config.scope || "all";
    const roundSize = config.roundSize || 10;

    let allItems = [];
    let round = [];
    let current = 0;
    let score = 0;
    let attemptsLog = []; // [{ item_id, is_correct }] for the current (normal) round
    let missedItems = []; // full item objects missed in the most recent round
    let reviewMode = false; // true = immediate "redo what you missed", never sent to the API

    async function fetchItems() {
      const res = await fetch(`/api/items?quiz_id=${encodeURIComponent(quizId)}&scope=${encodeURIComponent(scope)}`);
      allItems = await res.json();
    }

    async function fetchBest() {
      const res = await fetch(`/api/rounds?quiz_id=${encodeURIComponent(quizId)}&scope=${encodeURIComponent(scope)}`);
      if (!res.ok) return null;
      return res.json();
    }

    function buildRound(pool) {
      const size = Math.min(roundSize, pool.length);
      const chosenItems = reviewMode ? shuffle(pool) : weightedSample(pool, (item) => item.weight, size);
      round = chosenItems.map((item) => {
        const type = questionTypes[Math.floor(Math.random() * questionTypes.length)];
        const q = type.build(item, allItems);
        q.itemId = item.id;
        q.sourceItem = item;
        return q;
      });
      current = 0;
      score = 0;
      attemptsLog = [];
      missedItems = [];
    }

    async function renderStart() {
      container.innerHTML = "";
      const h1 = document.createElement("h1");
      h1.textContent = title;
      const loading = document.createElement("p");
      loading.className = "best-score";
      loading.textContent = "読み込み中...";
      container.append(h1, loading);

      const [best] = await Promise.all([fetchBest(), fetchItems()]);

      container.innerHTML = "";
      const best2 = document.createElement("p");
      best2.className = "best-score";
      best2.textContent = best ? `自己ベスト: ${best.score} / ${best.total}` : "自己ベスト: まだ記録がありません";

      const button = document.createElement("button");
      button.type = "button";
      button.className = "primary-btn";
      button.textContent = best ? "もう一度挑戦する" : "スタート";
      button.addEventListener("click", () => {
        reviewMode = false;
        buildRound(allItems);
        renderQuestion();
      });

      container.append(h1, best2, button);
    }

    function renderQuestion() {
      container.innerHTML = "";
      const q = round[current];

      const progress = document.createElement("p");
      progress.className = "progress";
      progress.textContent = reviewMode
        ? `復習 ${current + 1} / ${round.length}`
        : `${current + 1} / ${round.length}`;

      const prompt = document.createElement("p");
      prompt.className = "prompt";
      prompt.textContent = q.prompt;

      const choicesWrap = document.createElement("div");
      choicesWrap.className = "choices";
      q.choices.forEach((choice, index) => {
        const btn = document.createElement("button");
        btn.type = "button";
        btn.className = "choice-btn";
        btn.textContent = choice;
        btn.addEventListener("click", () => handleAnswer(index, btn, choicesWrap, q));
        choicesWrap.appendChild(btn);
      });

      container.append(progress, prompt, choicesWrap);
    }

    function handleAnswer(index, button, wrap, q) {
      Array.from(wrap.children).forEach((btn) => {
        btn.disabled = true;
      });
      const isCorrect = index === q.correctIndex;
      button.classList.add(isCorrect ? "correct" : "incorrect");
      if (isCorrect) {
        score += 1;
      } else {
        wrap.children[q.correctIndex].classList.add("correct");
        missedItems.push(q.sourceItem);
      }

      if (!reviewMode) {
        attemptsLog.push({ item_id: q.itemId, is_correct: isCorrect });
      }

      const next = document.createElement("button");
      next.type = "button";
      next.className = "primary-btn next-btn";
      next.textContent = current + 1 < round.length ? "次へ" : "結果を見る";
      next.addEventListener("click", () => {
        current += 1;
        if (current < round.length) {
          renderQuestion();
        } else {
          renderResult();
        }
      });
      container.appendChild(next);
    }

    async function renderResult() {
      container.innerHTML = "";

      let best = null;
      if (!reviewMode) {
        const res = await fetch("/api/rounds", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ quiz_id: quizId, scope, attempts: attemptsLog }),
        });
        if (res.ok) {
          // 自己ベスト表示のため、直後にもう一度取得する。
          best = await fetchBest();
        }
      }

      const h2 = document.createElement("h2");
      h2.textContent = reviewMode ? "復習結果" : "結果";

      const resultText = document.createElement("p");
      resultText.className = "result-score";
      resultText.textContent = `${score} / ${round.length}`;

      const bestText = document.createElement("p");
      bestText.className = "best-score";
      if (reviewMode) {
        bestText.textContent = "苦手だった問題の復習でした";
      } else if (best) {
        bestText.textContent = score >= best.score ? "自己ベスト更新！" : `自己ベスト: ${best.score} / ${best.total}`;
      }

      const buttons = [];
      const retry = document.createElement("button");
      retry.type = "button";
      retry.className = "primary-btn";
      retry.textContent = "もう一度";
      retry.addEventListener("click", renderStart);
      buttons.push(retry);

      if (!reviewMode && missedItems.length > 0) {
        const reviewBtn = document.createElement("button");
        reviewBtn.type = "button";
        reviewBtn.className = "primary-btn";
        reviewBtn.textContent = `間違えた${missedItems.length}問だけもう一度`;
        reviewBtn.addEventListener("click", () => {
          reviewMode = true;
          buildRound(missedItems);
          renderQuestion();
        });
        buttons.push(reviewBtn);
      }

      container.append(h2, resultText, bestText, ...buttons);
    }

    renderStart();
  }

  window.ChishikiQuiz = { run, shuffle, pickDistractors };
})();
