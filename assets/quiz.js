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

  function run(config) {
    const container = document.getElementById(config.mountId || "quiz-app");
    if (!container) return;

    const { quizId, items, questionTypes, title } = config;
    const getId = config.getId || ((item) => (item.id !== undefined ? item.id : item.name));
    const questionsPerRound = config.questionsPerRound || items.length;
    const bestKey = `chishikiQuiz:${quizId}:bestScore`;
    const hasItemStats = !!window.ItemStats;

    let round = [];
    let current = 0;
    let score = 0;
    let reviewMode = false;

    function buildRound(pool) {
      const source = pool || items;
      const size = pool ? source.length : questionsPerRound;
      const chosenItems = shuffle(source).slice(0, size);
      round = chosenItems.map((item) => {
        const type = questionTypes[Math.floor(Math.random() * questionTypes.length)];
        const q = type.build(item, items);
        q.itemId = getId(item);
        return q;
      });
      current = 0;
      score = 0;
    }

    function renderStart() {
      container.innerHTML = "";
      const h1 = document.createElement("h1");
      h1.textContent = title;

      const bestScore = localStorage.getItem(bestKey);
      const best = document.createElement("p");
      best.className = "best-score";
      best.textContent = bestScore
        ? `自己ベスト: ${bestScore} / ${questionsPerRound}`
        : "自己ベスト: まだ記録がありません";

      const button = document.createElement("button");
      button.type = "button";
      button.className = "primary-btn";
      button.textContent = bestScore ? "もう一度挑戦する" : "スタート";
      button.addEventListener("click", () => {
        reviewMode = false;
        buildRound();
        renderQuestion();
      });

      container.append(h1, best, button);

      if (hasItemStats) {
        const weakIds = new Set(window.ItemStats.getWeakIds(quizId));
        const weakItems = items.filter((item) => weakIds.has(getId(item)));
        if (weakItems.length > 0) {
          const reviewNote = document.createElement("p");
          reviewNote.className = "best-score";
          reviewNote.style.marginTop = "20px";
          reviewNote.textContent = `前回間違えた問題が ${weakItems.length} 問あります`;

          const reviewBtn = document.createElement("button");
          reviewBtn.type = "button";
          reviewBtn.className = "primary-btn";
          reviewBtn.textContent = "苦手な問題だけ復習する";
          reviewBtn.addEventListener("click", () => {
            reviewMode = true;
            buildRound(weakItems);
            renderQuestion();
          });

          container.append(reviewNote, reviewBtn);
        }
      }
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
      }

      if (hasItemStats && q.itemId !== undefined) {
        window.ItemStats.record(quizId, q.itemId, isCorrect);
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

    function renderResult() {
      container.innerHTML = "";

      let prevBest = 0;
      let isNewBest = false;
      if (!reviewMode) {
        prevBest = Number(localStorage.getItem(bestKey) || 0);
        isNewBest = score > prevBest;
        if (isNewBest) {
          localStorage.setItem(bestKey, String(score));
        }
      }
      if (window.DashboardStats) window.DashboardStats.recordPlay();

      const h2 = document.createElement("h2");
      h2.textContent = reviewMode ? "復習結果" : "結果";

      const resultText = document.createElement("p");
      resultText.className = "result-score";
      resultText.textContent = `${score} / ${round.length}`;

      const bestText = document.createElement("p");
      bestText.className = "best-score";
      bestText.textContent = reviewMode
        ? "苦手だった問題の復習でした"
        : isNewBest
          ? "自己ベスト更新！"
          : `自己ベスト: ${Math.max(prevBest, score)} / ${round.length}`;

      const retry = document.createElement("button");
      retry.type = "button";
      retry.className = "primary-btn";
      retry.textContent = "もう一度";
      retry.addEventListener("click", renderStart);

      container.append(h2, resultText, bestText, retry);
    }

    renderStart();
  }

  window.ChishikiQuiz = { run, shuffle, pickDistractors };
})();
