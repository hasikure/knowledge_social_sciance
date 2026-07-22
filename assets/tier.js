(() => {
  // AtCoder風の色段位。他人との比較ではなく、0〜100の達成率だけで決まる
  // 絶対評価のランク表示。ダッシュボードの総合レベルと、ジャンル別の
  // 習熟度ページの両方から参照する。
  const TIERS = [
    { max: 9, name: "灰", bg: "#808080", fg: "#ffffff" },
    { max: 24, name: "茶", bg: "#804000", fg: "#ffffff" },
    { max: 39, name: "緑", bg: "#008000", fg: "#ffffff" },
    { max: 54, name: "水", bg: "#00acc1", fg: "#00272b" },
    { max: 69, name: "青", bg: "#1e40ff", fg: "#ffffff" },
    { max: 84, name: "黄", bg: "#d4b600", fg: "#3a2e00" },
    { max: 94, name: "橙", bg: "#ff8c00", fg: "#3a1e00" },
    { max: 100, name: "赤", bg: "#e6242d", fg: "#ffffff" },
  ];

  function tierFor(pct) {
    return TIERS.find((t) => pct <= t.max) || TIERS[TIERS.length - 1];
  }

  window.TierScale = { TIERS, tierFor };
})();
