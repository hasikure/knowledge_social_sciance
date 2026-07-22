(() => {
  const PLAY_LOG_KEY = "chishikiQuiz:playLog"; // { "2026-07-20": 3, ... } date -> rounds played that day

  function dateStr(d) {
    return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}-${String(d.getDate()).padStart(2, "0")}`;
  }

  function loadLog() {
    try {
      return JSON.parse(localStorage.getItem(PLAY_LOG_KEY) || "{}");
    } catch (e) {
      return {};
    }
  }

  // Call when a quiz round is completed: +1 to today's count.
  function recordPlay() {
    const log = loadLog();
    const today = dateStr(new Date());
    log[today] = (log[today] || 0) + 1;
    localStorage.setItem(PLAY_LOG_KEY, JSON.stringify(log));
  }

  // Consecutive days played, counting back from today. If today hasn't been
  // played yet, the streak still counts as "alive" as long as yesterday was
  // played (so a same-day visit before playing doesn't show 0 and discourage
  // the student); it only resets to 0 once a full day is skipped.
  function getStreak() {
    const log = loadLog();
    const played = (d) => Boolean(log[dateStr(d)]);
    if (Object.keys(log).length === 0) return 0;

    const oneDay = 24 * 60 * 60 * 1000;
    let cursor = new Date();
    if (!played(cursor)) {
      cursor = new Date(cursor.getTime() - oneDay);
      if (!played(cursor)) return 0;
    }

    let streak = 0;
    while (played(cursor)) {
      streak += 1;
      cursor = new Date(cursor.getTime() - oneDay);
    }
    return streak;
  }

  // Monday 00:00 of the week containing `d` (getDay(): 0=Sun..6=Sat).
  function mostRecentMonday(d) {
    const day = d.getDay();
    const diff = day === 0 ? 6 : day - 1;
    const monday = new Date(d.getFullYear(), d.getMonth(), d.getDate() - diff);
    return monday;
  }

  // Total rounds played since this week's Monday (inclusive of today).
  function getWeeklyPlayCount() {
    const log = loadLog();
    const monday = mostRecentMonday(new Date());
    let count = 0;
    Object.entries(log).forEach(([key, n]) => {
      const [y, m, d] = key.split("-").map(Number);
      const entryDate = new Date(y, m - 1, d);
      if (entryDate >= monday) count += n;
    });
    return count;
  }

  window.DashboardStats = { recordPlay, getStreak, getWeeklyPlayCount };
})();
