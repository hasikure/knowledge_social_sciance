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

  // 正解として受け付ける表記の一覧。
  // 問題タイプが accept(配列)を返していればそれを、無ければ answer を出発点にする。
  // 「黒潮(日本海流)」のように括弧で別名が併記されていれば、どちらの名前でも正解にする。
  function answerCandidates(q) {
    const base =
      Array.isArray(q.accept) && q.accept.length > 0 ? q.accept.slice() : [String(q.answer)];

    const expanded = [];
    for (const value of base) {
      expanded.push(value);
      const paren = String(value).match(/^(.+?)\s*[（(](.+?)[）)]\s*$/);
      if (paren) expanded.push(paren[1], paren[2]);
    }

    return expanded.flatMap(withOptionalSuffixes);
  }

  function isAnswerCorrect(rawValue, q) {
    const given = normalizeAnswer(rawValue);
    if (given === "") return false;
    // 入力側も接尾辞を外して比べる(正解「青森」に「青森県」と答えた場合)
    const givenVariants = withOptionalSuffixes(given).map(normalizeAnswer);
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
      const feedback = document.createElement("p");
      feedback.className = "answer-feedback " + (isCorrect ? "correct" : "incorrect");
      feedback.textContent = isCorrect ? "正解！" : `不正解 (正解: ${q.answer})`;
      form.after(feedback);

      if (isCorrect) {
        score += 1;
        const xp = document.createElement("span");
        xp.className = "xp-pop";
        xp.textContent = "+10 XP";
        feedback.append(" ", xp);
      } else {
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

  // isAnswerCorrect / normalizeAnswer は動作確認用にも公開している。
  // 正誤判定の仕様を確かめたいときはブラウザのコンソールから直接呼べる。
  //   ChishikiQuiz.isAnswerCorrect("青森", { answer: "青森県" })  -> true
  window.ChishikiQuiz = { run, shuffle, pickDistractors, isAnswerCorrect, normalizeAnswer };
})();
