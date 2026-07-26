(() => {
  // AtCoder風の色段位。他人との比較ではなく、0〜100の達成率だけで決まる
  // 絶対評価のランク表示。ダッシュボードの総合レベルと、ジャンル別の
  // 習熟度ページの両方から参照する。
  const TIERS = [
    { max: 9, name: "Hallo, New World!", bg: "#808080", fg: "#ffffff" },
    { max: 24, name: "目指せ脱初心者", bg: "#804000", fg: "#ffffff" },
    { max: 39, name: "どんどん学習中", bg: "#008000", fg: "#ffffff" },
    { max: 54, name: "中級者の仲間入り", bg: "#00acc1", fg: "#00272b" },
    { max: 69, name: "上級者は目の前", bg: "#1e40ff", fg: "#ffffff" },
    { max: 84, name: "これは得意分野！", bg: "#c7a600", fg: "#302600" },
    { max: 94, name: "頂上まで走り抜こう！", bg: "#f57c00", fg: "#351b00" },
    { max: 100, name: "マスター認定", bg: "#e6242d", fg: "#ffffff" },
  ];

  function tierFor(pct) {
    return TIERS.find((t) => pct <= t.max) || TIERS[TIERS.length - 1];
  }

  // 色階級とメッセージを確認するための凡例。数値は表示しない。
  function renderLegend(container) {
    TIERS.forEach((t) => {
      const item = document.createElement("span");
      item.className = "tier-legend-item";

      const dot = document.createElement("span");
      dot.className = "tier-dot tier-dot-sm";
      dot.style.background = t.bg;

      const label = document.createElement("span");
      label.textContent = t.name;

      item.append(label, dot);
      container.appendChild(item);
    });
  }

  window.TierScale = { TIERS, tierFor, renderLegend };
})();
