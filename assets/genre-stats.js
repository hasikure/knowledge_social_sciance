(() => {
  // 5段階の習熟度に重みをつけて0〜1のスコアにする。
  // 「未出題」と「2連続で間違えた」はどちらも今のところ信頼できないので0、
  // 「1回間違えた」は直近1回だけの失敗なので少し救済して0.3、
  // 「1回正解」はまだ安定していないので0.7、
  // 「2連続正解」だけを満点の1.0とする。
  const MASTERY_WEIGHT = {
    unseen: 0,
    "incorrect-once": 0.3,
    "correct-once": 0.7,
    mastered: 1.0,
    struggling: 0,
  };

  // 世界遺産・地形クイズの項目名、都道府県コードの一覧。各クイズページの
  // 埋め込みデータと同じ内容(itemStatsのキーと突き合わせるため)。
  const SEKAI_ISAN_NAMES = ["法隆寺地域の仏教建造物","姫路城","古都京都の文化財","白川郷・五箇山の合掌造り集落","原爆ドーム","厳島神社","古都奈良の文化財","日光の社寺","琉球王国のグスク及び関連遺産群","紀伊山地の霊場と参詣道","石見銀山遺跡とその文化的景観","平泉","富士山","富岡製糸場と絹産業遺産群","明治日本の産業革命遺産","ル・コルビュジエの建築作品(国立西洋美術館)","「神宿る島」宗像・沖ノ島と関連遺産群","長崎と天草地方の潜伏キリシタン関連遺産","百舌鳥・古市古墳群","北海道・北東北の縄文遺跡群","佐渡島の金山","屋久島","白神山地","知床","小笠原諸島","奄美大島、徳之島、沖縄島北部及び西表島"];
  const CHIKEI_NAMES = ["奥羽山脈","飛騨山脈(北アルプス)","木曽山脈(中央アルプス)","赤石山脈(南アルプス)","富士山","関東平野","越後平野","濃尾平野","石狩平野","筑紫平野","信濃川","利根川","石狩川","木曽川","淀川","琵琶湖","黒潮(日本海流)","親潮(千島海流)","対馬海流","リマン海流","房総半島","紀伊半島","能登半島","津軽海峡","関門海峡"];
  const PREFECTURE_CODES = Array.from({ length: 47 }, (_, i) => String(i + 1));

  const GENRES = [
    {
      name: "世界遺産",
      url: "syakai/sekai-isan/",
      itemSets: [{ quizId: "sekai-isan", ids: SEKAI_ISAN_NAMES }],
    },
    {
      name: "日本の地名",
      url: "syakai/todofuken/",
      itemSets: [
        { quizId: "todofuken", ids: PREFECTURE_CODES },
        { quizId: "kencho", ids: PREFECTURE_CODES },
      ],
    },
    {
      name: "日本の地形",
      url: "syakai/chikei/",
      itemSets: [{ quizId: "chikei", ids: CHIKEI_NAMES }],
    },
  ];

  function genreScorePct(itemSets) {
    let totalWeight = 0;
    let count = 0;
    itemSets.forEach(({ quizId, ids }) => {
      ids.forEach((id) => {
        const level = ItemStats.getMasteryLevel(quizId, id);
        totalWeight += MASTERY_WEIGHT[level];
        count += 1;
      });
    });
    return count > 0 ? (totalWeight / count) * 100 : 0;
  }

  function renderGenreRows(container, urlPrefix) {
    GENRES.forEach((genre) => {
      const pct = genreScorePct(genre.itemSets);
      const tier = TierScale.tierFor(pct);

      const row = document.createElement("a");
      row.className = "genre-row";
      row.href = `${urlPrefix || ""}${genre.url}`;

      const name = document.createElement("span");
      name.className = "genre-row-name";
      name.textContent = genre.name;

      const right = document.createElement("span");
      right.className = "genre-row-right";

      const pctLabel = document.createElement("span");
      pctLabel.className = "genre-row-pct";
      pctLabel.textContent = `${Math.round(pct)}%`;

      const badge = document.createElement("span");
      badge.className = "tier-badge";
      badge.textContent = tier.name;
      badge.style.background = tier.bg;
      badge.style.color = tier.fg;

      right.append(pctLabel, badge);
      row.append(name, right);
      container.appendChild(row);
    });
  }

  window.GenreStats = { GENRES, genreScorePct, renderGenreRows, MASTERY_WEIGHT };
})();
