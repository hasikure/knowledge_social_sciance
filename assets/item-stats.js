(() => {
  function key(quizId) {
    return `chishikiQuiz:${quizId}:itemStats`;
  }

  function load(quizId) {
    try {
      return JSON.parse(localStorage.getItem(key(quizId)) || "{}");
    } catch (e) {
      return {};
    }
  }

  // Mastery is a 5-way read of "how is this item going right now":
  //   unseen            未出題          never attempted
  //   mastered          2回連続正解      last 2 answers both correct
  //   correct-once      1回正解         correct, but didn't just come off a correct
  //   struggling        2回連続で間違えた last 2 answers both wrong
  //   incorrect-once    1回間違えた      wrong, but didn't just come off a wrong
  //
  // This only needs the last result plus a same-direction streak count
  // (capped at 2) — no need to keep the full attempt history.
  function record(quizId, itemId, isCorrect) {
    const stats = load(quizId);
    const s = stats[itemId] || { attempts: 0, correct: 0, lastResult: null, streak: 0 };
    const result = isCorrect ? "correct" : "incorrect";

    s.attempts += 1;
    if (isCorrect) s.correct += 1;
    s.streak = s.lastResult === result ? Math.min(2, s.streak + 1) : 1;
    s.lastResult = result;

    stats[itemId] = s;
    localStorage.setItem(key(quizId), JSON.stringify(stats));
  }

  function masteryLevel(stat) {
    if (!stat || !stat.attempts) return "unseen";
    if (stat.lastResult === "correct") {
      return stat.streak >= 2 ? "mastered" : "correct-once";
    }
    return stat.streak >= 2 ? "struggling" : "incorrect-once";
  }

  function getMasteryLevel(quizId, itemId) {
    const stats = load(quizId);
    return masteryLevel(stats[itemId]);
  }

  // Items whose most recent attempt was wrong (both "incorrect-once" and
  // "struggling"): the raw material for a "review only what you got wrong" mode.
  function getWeakIds(quizId) {
    const stats = load(quizId);
    return Object.keys(stats).filter((id) => stats[id].lastResult === "incorrect");
  }

  function getStats(quizId) {
    return load(quizId);
  }

  window.ItemStats = { record, getWeakIds, getStats, getMasteryLevel, masteryLevel };
})();
