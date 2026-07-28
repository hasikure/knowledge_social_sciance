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

  // 比較用の正規化。書き方の違いで不正解にしないための処理をまとめる。
  //
  //  - 前後の空白を落とし、全角空白と連続空白を1つの半角空白に
  //  - 全角の英数字を半角に(１１９２ -> 1192)
  //  - カタカナをひらがなに(ヤマセ と やませ を同じ扱いに)
  //  - 長音・中黒・各種カッコなど、打ち方が割れる記号を取り除く
  //
  // ひらがな化はカタカナ語(リアス海岸など)にも効くので、
  // 「りあす海岸」のような入力も通る。中学生向けとしてはこれで良しとする。
  function normalizeAnswer(s) {
    return String(s)
      .trim()
      .replace(/[Ａ-Ｚａ-ｚ０-９]/g, (c) => String.fromCharCode(c.charCodeAt(0) - 0xfee0))
      .replace(/[ァ-ヶ]/g, (c) => String.fromCharCode(c.charCodeAt(0) - 0x60))
      .replace(/[\s　]+/g, "")
      .replace(/[ー・･‐-‒–—―ｰ]/g, "")
      .replace(/[（）()「」『』［］\[\]]/g, "")
      .toLowerCase();
  }

  // 「青森県」に対する「青森」のように、末尾の語をつけてもつけなくても
  // 正解にしたいものを両方向に展開する。
  const OPTIONAL_SUFFIXES = ["県", "府", "都", "市", "区", "町", "村"];

  function withOptionalSuffixes(value) {
    const out = [value];
    for (const suffix of OPTIONAL_SUFFIXES) {
      // 「青森県」-> 「青森」。ただし「県」一文字だけになる場合は展開しない。
      if (value.endsWith(suffix) && value.length > suffix.length + 1) {
        out.push(value.slice(0, -suffix.length));
      }
    }
    return out;
  }

  // 「飛騨山脈(北アルプス)」のように括弧で別名を併記した書き方を、
  // 全体・括弧の前・括弧の中 に分解する。
  //
  // データ側の別解は accept 列に統一してあるので、正解が括弧付きになることは無い。
  // これは主に入力側のための処理で、生徒が両方の呼び名を併記してきた場合に
  // 正解として扱うためにある。
  const PAREN = /^(.+?)\s*[（(](.+?)[）)]\s*$/;

  function withoutParen(value) {
    const m = String(value).match(PAREN);
    return m ? [value, m[1].trim(), m[2].trim()] : [value];
  }

  // 正解として受け付ける表記の一覧。
  // 問題タイプが accept(配列)を返していればそれを、無ければ answer を出発点にする。
  function answerCandidates(q) {
    const base =
      Array.isArray(q.accept) && q.accept.length > 0 ? q.accept.slice() : [String(q.answer)];
    return base.flatMap(withoutParen).flatMap(withOptionalSuffixes);
  }

  function isAnswerCorrect(rawValue, q) {
    const given = String(rawValue).trim();
    if (normalizeAnswer(given) === "") return false;

    // 入力側も同じように展開して比べる。
    // 「青森」に「青森県」、「飛騨山脈」に「飛騨山脈(北アルプス)」と答えた場合を通す。
    const givenVariants = withoutParen(given).flatMap(withOptionalSuffixes).map(normalizeAnswer);
    const accepted = answerCandidates(q).map(normalizeAnswer);
    return givenVariants.some((v) => v !== "" && accepted.includes(v));
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
    let missedQuestions = []; // 結果画面に出す「間違えた問題」(問題文と正解)
    let roundResults = []; // 各問の正誤。進み具合の丸に使う(未解答は undefined)
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

    // 問題タイプは supports(item) を持てる。持たない場合は全項目に出せるとみなす。
    // 例: 年代を答えさせる問題は、年が分かっている項目にだけ出す。
    function pickQuestionType(item) {
      const usable = questionTypes.filter((type) => !type.supports || type.supports(item));
      const pool = usable.length > 0 ? usable : questionTypes;
      return pool[Math.floor(Math.random() * pool.length)];
    }

    function buildRound(pool) {
      const size = Math.min(roundSize, pool.length);
      const chosenItems = reviewMode ? shuffle(pool) : weightedSample(pool, (item) => item.weight, size);
      round = chosenItems.map((item) => {
        const type = pickQuestionType(item);
        const q = type.build(item, allItems);

        // CSVの accept 列(= extra.accept)は、その項目の答えそのものを問う
        // 問題にだけ効かせる。年代や人物を問う問題に混ぜると、別の答えを
        // 正解にしてしまうため。
        const itemAccept = item.extra && item.extra.accept;
        if (Array.isArray(itemAccept) && !q.accept && q.answer === item.answer) {
          q.accept = [q.answer, ...itemAccept];
        }

        q.itemId = item.id;
        q.sourceItem = item;
        return q;
      });
      current = 0;
      score = 0;
      roundResults = [];
      missedQuestions = [];
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
      button.textContent = best ? "もう一度挑戦する" : "学習を始める";
      button.addEventListener("click", () => {
        reviewMode = false;
        buildRound(allItems);
        renderQuestion();
      });

      container.append(h1, best2, button);
    }

    // 解答済みの丸を並べた進み具合。緑=正解 / 赤=不正解 / 白=これから。
    // 数字の「3 / 10」だけだと、ここまでの手応えが画面から分からないため。
    function renderProgress() {
      const bar = document.createElement("div");
      bar.className = "quiz-head";

      const name = document.createElement("span");
      name.className = "quiz-head-name";
      name.textContent = reviewMode ? `${title} · 復習` : title;

      const dots = document.createElement("div");
      dots.className = "quiz-dots";
      for (let i = 0; i < round.length; i++) {
        const dot = document.createElement("span");
        dot.className = "quiz-dot";
        if (roundResults[i] === true) dot.classList.add("is-correct");
        else if (roundResults[i] === false) dot.classList.add("is-incorrect");
        else if (i === current) dot.classList.add("is-current");
        dots.appendChild(dot);
      }

      const count = document.createElement("span");
      count.className = "quiz-head-count";
      count.textContent = `${current + 1} / ${round.length}`;

      bar.append(name, dots, count);
      return bar;
    }

    function renderQuestion() {
      container.innerHTML = "";
      const q = round[current];

      const progress = renderProgress();

      const prompt = document.createElement("p");
      prompt.className = "prompt";
      prompt.textContent = q.prompt;

      const form = document.createElement("form");
      form.className = "answer-form";
      const input = document.createElement("input");
      input.type = "text";
      input.className = "answer-input";
      input.autocomplete = "off";
      input.autofocus = true;
      const submit = document.createElement("button");
      submit.type = "submit";
      submit.className = "primary-btn";
      submit.textContent = "決定";
      form.append(input, submit);
      form.addEventListener("submit", (e) => {
        e.preventDefault();
        handleAnswer(input.value, form, q);
      });

      container.append(progress);
      if (q.visual) container.append(q.visual);
      container.append(prompt, form);
      input.focus();
    }

    function handleAnswer(rawValue, form, q) {
      form.querySelector("input").disabled = true;
      form.querySelector("button").disabled = true;

      const isCorrect = isAnswerCorrect(rawValue, q);
      roundResults[current] = isCorrect;
      container.classList.add(isCorrect ? "is-correct-flash" : "is-incorrect-flash");

      // 進み具合の丸をその場で塗る(「次へ」を押すまで待たせない)
      const dot = container.querySelectorAll(".quiz-dot")[current];
      if (dot) {
        dot.classList.remove("is-current");
        dot.classList.add(isCorrect ? "is-correct" : "is-incorrect");
      }

      // 正誤は文字だけでなく、印と色の面で返す。
      // 間違えたときは、自分が書いた答えと正解を並べて見せる。
      const feedback = document.createElement("div");
      feedback.className = "answer-feedback " + (isCorrect ? "correct" : "incorrect");

      const mark = document.createElement("span");
      mark.className = "answer-mark";
      mark.textContent = isCorrect ? "○" : "×";

      const body = document.createElement("div");
      body.className = "answer-feedback-body";
      const head = document.createElement("p");
      head.className = "answer-feedback-head";
      head.textContent = isCorrect ? "正解" : "不正解";
      body.appendChild(head);

      if (isCorrect) {
        const xp = document.createElement("span");
        xp.className = "xp-pop";
        xp.textContent = "+10 XP";
        head.append(" ", xp);
      } else {
        const given = String(rawValue).trim();
        const detail = document.createElement("p");
        detail.className = "answer-feedback-detail";
        detail.textContent = given ? `あなたの答え: ${given}` : "答えが入力されていません";
        const right = document.createElement("p");
        right.className = "answer-feedback-answer";
        right.textContent = q.answer;
        body.append(detail, right);
      }

      feedback.append(mark, body);
      form.after(feedback);

      if (isCorrect) {
        score += 1;
      } else {
        missedItems.push(q.sourceItem);
        missedQuestions.push(q);
      }

      if (!reviewMode) {
        attemptsLog.push({ item_id: q.itemId, is_correct: isCorrect });
      }

      const next = document.createElement("button");
      next.type = "button";
      next.className = "primary-btn next-btn";
      next.textContent = current + 1 < round.length ? "次へ" : "結果を見る";
      next.addEventListener("click", () => {
        container.classList.remove("is-correct-flash", "is-incorrect-flash");
        current += 1;
        if (current < round.length) {
          renderQuestion();
        } else {
          renderResult();
        }
      });
      container.appendChild(next);
      next.focus();
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

      const missedCount = round.length - score;

      const h2 = document.createElement("h2");
      h2.textContent = reviewMode ? "復習おつかれさま" : "おつかれさま";

      // スコアを円グラフで返す。数字だけだと10問やった手応えが残らない。
      const panel = document.createElement("div");
      panel.className = "result-panel";

      const ratio = round.length === 0 ? 0 : score / round.length;
      const R = 52;
      const C = 2 * Math.PI * R;
      const ring = document.createElementNS("http://www.w3.org/2000/svg", "svg");
      ring.setAttribute("viewBox", "0 0 128 128");
      ring.setAttribute("class", "result-ring");
      ring.setAttribute("aria-hidden", "true");
      const track = document.createElementNS("http://www.w3.org/2000/svg", "circle");
      const fill = document.createElementNS("http://www.w3.org/2000/svg", "circle");
      for (const c of [track, fill]) {
        c.setAttribute("cx", "64");
        c.setAttribute("cy", "64");
        c.setAttribute("r", String(R));
        c.setAttribute("fill", "none");
        c.setAttribute("stroke-width", "12");
        c.setAttribute("stroke-linecap", "round");
      }
      track.setAttribute("class", "result-ring-track");
      fill.setAttribute("class", "result-ring-fill");
      fill.setAttribute("stroke-dasharray", `${C} ${C}`);
      fill.setAttribute("stroke-dashoffset", String(C));
      fill.setAttribute("transform", "rotate(-90 64 64)");
      ring.append(track, fill);
      // 描画後に伸ばす(CSSのtransitionを効かせるため)
      requestAnimationFrame(() => fill.setAttribute("stroke-dashoffset", String(C * (1 - ratio))));

      const ringWrap = document.createElement("div");
      ringWrap.className = "result-ring-wrap";
      const ringText = document.createElement("div");
      ringText.className = "result-ring-text";
      ringText.innerHTML = `<strong>${score}</strong><span>/ ${round.length}</span>`;
      ringWrap.append(ring, ringText);

      const summary = document.createElement("div");
      summary.className = "result-summary";

      const message = document.createElement("p");
      message.className = "result-message";
      if (reviewMode) message.textContent = "苦手だった問題の復習でした";
      else if (score === round.length) message.textContent = "全問正解！";
      else if (ratio >= 0.8) message.textContent = "あと少しで全問正解";
      else if (ratio >= 0.5) message.textContent = "半分以上できました";
      else message.textContent = "ここが伸びしろです";
      summary.appendChild(message);

      if (!reviewMode) {
        // 獲得した経験値。ダッシュボードと同じ配分(正解10 / 不正解3)。
        const gained = score * 10 + missedCount * 3;
        const xp = document.createElement("p");
        xp.className = "result-xp";
        xp.textContent = `+${gained} XP`;
        summary.appendChild(xp);
      }

      const bestText = document.createElement("p");
      bestText.className = "best-score";
      if (reviewMode) {
        bestText.textContent = "この結果は記録に残していません";
      } else if (best) {
        bestText.textContent = score >= best.score ? "自己ベスト更新！" : `自己ベスト: ${best.score} / ${best.total}`;
      }
      summary.appendChild(bestText);

      panel.append(ringWrap, summary);

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

      const actions = document.createElement("div");
      actions.className = "result-actions";
      actions.append(...buttons);

      container.append(h2, panel, actions);

      // 間違えた問題と正解を並べる。「間違えた分だけもう一度」を押す前に、
      // 何を落としたのかがその場で分かるように。
      const missed = missedQuestions;
      if (missed.length > 0) {
        const review = document.createElement("section");
        review.className = "result-review";
        const heading = document.createElement("h3");
        heading.textContent = `間違えた ${missed.length} 問`;
        review.appendChild(heading);

        const list = document.createElement("ul");
        list.className = "result-review-list";
        for (const q of missed) {
          const li = document.createElement("li");
          const prompt = document.createElement("p");
          prompt.className = "result-review-prompt";
          prompt.textContent = q.prompt;
          const answer = document.createElement("p");
          answer.className = "result-review-answer";
          answer.textContent = q.answer;
          li.append(prompt, answer);
          list.appendChild(li);
        }
        review.appendChild(list);
        container.appendChild(review);
      }
    }

    renderStart();
  }

  // isAnswerCorrect / normalizeAnswer は動作確認用にも公開している。
  // 正誤判定の仕様を確かめたいときはブラウザのコンソールから直接呼べる。
  //   ChishikiQuiz.isAnswerCorrect("青森", { answer: "青森県" })  -> true
  window.ChishikiQuiz = { run, shuffle, pickDistractors, isAnswerCorrect, normalizeAnswer };
})();
