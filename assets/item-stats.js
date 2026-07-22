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

  function record(quizId, itemId, isCorrect) {
    const stats = load(quizId);
    const s = stats[itemId] || { attempts: 0, correct: 0 };
    s.attempts += 1;
    if (isCorrect) s.correct += 1;
    s.lastResult = isCorrect ? "correct" : "incorrect";
    stats[itemId] = s;
    localStorage.setItem(key(quizId), JSON.stringify(stats));
  }

  // Items whose most recent attempt was wrong: the raw material for a
  // "review only what you got wrong" mode.
  function getWeakIds(quizId) {
    const stats = load(quizId);
    return Object.keys(stats).filter((id) => stats[id].lastResult === "incorrect");
  }

  function getStats(quizId) {
    return load(quizId);
  }

  window.ItemStats = { record, getWeakIds, getStats };
})();
