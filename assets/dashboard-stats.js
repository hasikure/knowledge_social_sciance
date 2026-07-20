(() => {
  const PLAY_DATES_KEY = "chishikiQuiz:playDates";

  function dateStr(d) {
    return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
  }

  function loadDates() {
    try {
      return new Set(JSON.parse(localStorage.getItem(PLAY_DATES_KEY) || "[]"));
    } catch (e) {
      return new Set();
    }
  }

  // Call when a quiz round is completed, to mark today as a "played" day.
  function recordPlay() {
    const dates = loadDates();
    dates.add(dateStr(new Date()));
    localStorage.setItem(PLAY_DATES_KEY, JSON.stringify([...dates]));
  }

  // Consecutive days played, counting back from today. If today hasn't been
  // played yet, the streak still counts as "alive" as long as yesterday was
  // played (so a same-day visit before playing doesn't show 0 and discourage
  // the student); it only resets to 0 once a full day is skipped.
  function getStreak() {
    const dates = loadDates();
    if (dates.size === 0) return 0;

    const oneDay = 24 * 60 * 60 * 1000;
    let cursor = new Date();
    if (!dates.has(dateStr(cursor))) {
      cursor = new Date(cursor.getTime() - oneDay);
      if (!dates.has(dateStr(cursor))) return 0;
    }

    let streak = 0;
    while (dates.has(dateStr(cursor))) {
      streak += 1;
      cursor = new Date(cursor.getTime() - oneDay);
    }
    return streak;
  }

  window.DashboardStats = { recordPlay, getStreak };
})();
