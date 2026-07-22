// items テーブルへの初期データ投入用SQLを生成する。
// 実行: node scripts/generate-seed.js > seed.sql
// 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./seed.sql

function sqlEscape(v) {
  if (v === null || v === undefined) return "NULL";
  return `'${String(v).replace(/'/g, "''")}'`;
}

function insertStatement(row) {
  const { quiz_id, item_key, label, answer, category, extra } = row;
  const extraJson = extra ? JSON.stringify(extra) : null;
  return `INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES (${sqlEscape(quiz_id)}, ${sqlEscape(item_key)}, ${sqlEscape(label)}, ${sqlEscape(answer)}, ${sqlEscape(category)}, ${sqlEscape(extraJson)});`;
}

// ---- 世界遺産 (26件) ----
const SEKAI_ISAN = [
  { name: "法隆寺地域の仏教建造物", prefectures: ["奈良県"], type: "文化遺産", year: 1993, hint: "現存する世界最古の木造建築群として知られる仏教寺院" },
  { name: "姫路城", prefectures: ["兵庫県"], type: "文化遺産", year: 1993, hint: "白鷺城とも呼ばれる、白い外観が美しい天守を持つ城" },
  { name: "古都京都の文化財", prefectures: ["京都府", "滋賀県"], type: "文化遺産", year: 1994, hint: "清水寺や金閣寺など、古い都に残る社寺・城の総称" },
  { name: "白川郷・五箇山の合掌造り集落", prefectures: ["岐阜県", "富山県"], type: "文化遺産", year: 1995, hint: "急な茅葺き屋根が特徴的な、豪雪地帯の伝統的な家屋群" },
  { name: "原爆ドーム", prefectures: ["広島県"], type: "文化遺産", year: 1996, hint: "原子爆弾の惨禍を伝える、骨組みだけが残された建物" },
  { name: "厳島神社", prefectures: ["広島県"], type: "文化遺産", year: 1996, hint: "海上に立つ朱色の大鳥居で知られる神社" },
  { name: "古都奈良の文化財", prefectures: ["奈良県"], type: "文化遺産", year: 1998, hint: "東大寺や興福寺など、かつての都に残る寺社群" },
  { name: "日光の社寺", prefectures: ["栃木県"], type: "文化遺産", year: 1999, hint: "「見ざる言わざる聞かざる」の彫刻で知られる東照宮を含む社寺群" },
  { name: "琉球王国のグスク及び関連遺産群", prefectures: ["沖縄県"], type: "文化遺産", year: 2000, hint: "首里城跡を中心とする、かつての王国の城・聖地群" },
  { name: "紀伊山地の霊場と参詣道", prefectures: ["三重県", "奈良県", "和歌山県"], type: "文化遺産", year: 2004, hint: "熊野古道など、山岳信仰の霊場と参詣道からなる遺産" },
  { name: "石見銀山遺跡とその文化的景観", prefectures: ["島根県"], type: "文化遺産", year: 2007, hint: "かつて世界有数の産出量を誇った、銀の採掘・精錬の遺跡" },
  { name: "平泉", prefectures: ["岩手県"], type: "文化遺産", year: 2011, hint: "中尊寺金色堂など、浄土思想を表す寺院・庭園群" },
  { name: "富士山", prefectures: ["山梨県", "静岡県"], type: "文化遺産", year: 2013, hint: "信仰の対象であり、多くの芸術作品の題材となった日本一の山" },
  { name: "富岡製糸場と絹産業遺産群", prefectures: ["群馬県"], type: "文化遺産", year: 2014, hint: "明治時代に建てられた、日本の近代製糸業を支えた工場" },
  { name: "明治日本の産業革命遺産", prefectures: ["福岡県", "佐賀県", "長崎県", "熊本県", "鹿児島県", "山口県", "岩手県", "静岡県"], type: "文化遺産", year: 2015, hint: "製鉄・製鋼、造船、石炭産業に関する、幕末から明治期の産業施設群" },
  { name: "ル・コルビュジエの建築作品(国立西洋美術館)", prefectures: ["東京都"], type: "文化遺産", year: 2016, hint: "フランス人建築家が設計した、上野にある美術館を含む国際的な建築群" },
  { name: "「神宿る島」宗像・沖ノ島と関連遺産群", prefectures: ["福岡県"], type: "文化遺産", year: 2017, hint: "女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産" },
  { name: "長崎と天草地方の潜伏キリシタン関連遺産", prefectures: ["長崎県", "熊本県"], type: "文化遺産", year: 2018, hint: "禁教期にひそかに信仰を続けた人々に関わる教会・集落群" },
  { name: "百舌鳥・古市古墳群", prefectures: ["大阪府"], type: "文化遺産", year: 2019, hint: "仁徳天皇陵古墳を含む、日本最大級の前方後円墳が集まる古墳群" },
  { name: "北海道・北東北の縄文遺跡群", prefectures: ["北海道", "青森県", "岩手県", "秋田県"], type: "文化遺産", year: 2021, hint: "三内丸山遺跡など、狩猟採集による定住生活を示す縄文時代の遺跡群" },
  { name: "佐渡島の金山", prefectures: ["新潟県"], type: "文化遺産", year: 2024, hint: "江戸時代に日本最大の産出量を誇った、手作業による採掘技術が評価された金山" },
  { name: "屋久島", prefectures: ["鹿児島県"], type: "自然遺産", year: 1993, hint: "樹齢数千年ともいわれる屋久杉で知られる、亜熱帯から亜寒帯までの植生が分布する島" },
  { name: "白神山地", prefectures: ["青森県", "秋田県"], type: "自然遺産", year: 1993, hint: "世界最大級のブナの原生林が広がる山地" },
  { name: "知床", prefectures: ["北海道"], type: "自然遺産", year: 2005, hint: "流氷が育む豊かな生態系と、ヒグマなど野生動物の宝庫として知られる半島" },
  { name: "小笠原諸島", prefectures: ["東京都"], type: "自然遺産", year: 2011, hint: "独自の進化を遂げた生物が多く、「東洋のガラパゴス」とも呼ばれる諸島" },
  { name: "奄美大島、徳之島、沖縄島北部及び西表島", prefectures: ["鹿児島県", "沖縄県"], type: "自然遺産", year: 2021, hint: "アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々" },
];

// ---- 地形 (25件) ----
const CHIKEI = [
  { name: "奥羽山脈", category: "山地・山脈", hint: "東北地方を南北に走る、日本で最も長い山脈" },
  { name: "飛騨山脈(北アルプス)", category: "山地・山脈", hint: "「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる" },
  { name: "木曽山脈(中央アルプス)", category: "山地・山脈", hint: "日本アルプスの一つで、長野県に位置する" },
  { name: "赤石山脈(南アルプス)", category: "山地・山脈", hint: "日本アルプスの一つで、山梨県・長野県・静岡県にまたがる" },
  { name: "富士山", category: "山地・山脈", hint: "日本最高峰(標高3776m)。静岡県と山梨県にまたがる" },
  { name: "関東平野", category: "平野", hint: "日本最大の平野" },
  { name: "越後平野", category: "平野", hint: "新潟県に広がる、日本有数の稲作地帯" },
  { name: "濃尾平野", category: "平野", hint: "愛知県・岐阜県に広がり、「輪中」と呼ばれる堤防で知られる" },
  { name: "石狩平野", category: "平野", hint: "北海道に広がる、稲作がさかんな平野" },
  { name: "筑紫平野", category: "平野", hint: "九州最大の平野で、佐賀県・福岡県に広がる" },
  { name: "信濃川", category: "川", hint: "日本で最も長い川(約367km)" },
  { name: "利根川", category: "川", hint: "流域面積が日本一で、「坂東太郎」とも呼ばれる川" },
  { name: "石狩川", category: "川", hint: "北海道を流れる、日本三大河川の一つ" },
  { name: "木曽川", category: "川", hint: "濃尾平野を流れる、木曽三川の一つ" },
  { name: "淀川", category: "川", hint: "琵琶湖から大阪湾へ流れる川" },
  { name: "琵琶湖", category: "湖", hint: "日本最大の湖。滋賀県にある" },
  { name: "黒潮(日本海流)", category: "海流", hint: "日本の太平洋側を流れる暖流" },
  { name: "親潮(千島海流)", category: "海流", hint: "三陸沖などを流れる寒流" },
  { name: "対馬海流", category: "海流", hint: "日本海側を流れる暖流" },
  { name: "リマン海流", category: "海流", hint: "日本海側を北から南へ流れる寒流" },
  { name: "房総半島", category: "半島", hint: "千葉県にある半島" },
  { name: "紀伊半島", category: "半島", hint: "近畿地方最大の半島" },
  { name: "能登半島", category: "半島", hint: "石川県にある、日本海に突き出た半島" },
  { name: "津軽海峡", category: "海峡", hint: "本州と北海道を隔てる海峡" },
  { name: "関門海峡", category: "海峡", hint: "本州と九州を隔てる海峡" },
];

// ---- 都道府県 / 県庁所在地 (各47件、同じコード体系) ----
const PREFECTURES = [
  [1, "北海道", "hokkaido", "札幌市"], [2, "青森県", "tohoku", "青森市"], [3, "岩手県", "tohoku", "盛岡市"],
  [4, "宮城県", "tohoku", "仙台市"], [5, "秋田県", "tohoku", "秋田市"], [6, "山形県", "tohoku", "山形市"],
  [7, "福島県", "tohoku", "福島市"], [8, "茨城県", "kanto", "水戸市"], [9, "栃木県", "kanto", "宇都宮市"],
  [10, "群馬県", "kanto", "前橋市"], [11, "埼玉県", "kanto", "さいたま市"], [12, "千葉県", "kanto", "千葉市"],
  [13, "東京都", "kanto", "東京"], [14, "神奈川県", "kanto", "横浜市"], [15, "新潟県", "chubu", "新潟市"],
  [16, "富山県", "chubu", "富山市"], [17, "石川県", "chubu", "金沢市"], [18, "福井県", "chubu", "福井市"],
  [19, "山梨県", "chubu", "甲府市"], [20, "長野県", "chubu", "長野市"], [21, "岐阜県", "chubu", "岐阜市"],
  [22, "静岡県", "chubu", "静岡市"], [23, "愛知県", "chubu", "名古屋市"], [24, "三重県", "kinki", "津市"],
  [25, "滋賀県", "kinki", "大津市"], [26, "京都府", "kinki", "京都市"], [27, "大阪府", "kinki", "大阪市"],
  [28, "兵庫県", "kinki", "神戸市"], [29, "奈良県", "kinki", "奈良市"], [30, "和歌山県", "kinki", "和歌山市"],
  [31, "鳥取県", "chugoku", "鳥取市"], [32, "島根県", "chugoku", "松江市"], [33, "岡山県", "chugoku", "岡山市"],
  [34, "広島県", "chugoku", "広島市"], [35, "山口県", "chugoku", "山口市"], [36, "徳島県", "shikoku", "徳島市"],
  [37, "香川県", "shikoku", "高松市"], [38, "愛媛県", "shikoku", "松山市"], [39, "高知県", "shikoku", "高知市"],
  [40, "福岡県", "kyushu-okinawa", "福岡市"], [41, "佐賀県", "kyushu-okinawa", "佐賀市"], [42, "長崎県", "kyushu-okinawa", "長崎市"],
  [43, "熊本県", "kyushu-okinawa", "熊本市"], [44, "大分県", "kyushu-okinawa", "大分市"], [45, "宮崎県", "kyushu-okinawa", "宮崎市"],
  [46, "鹿児島県", "kyushu-okinawa", "鹿児島市"], [47, "沖縄県", "kyushu-okinawa", "那覇市"],
];

const rows = [];

for (const item of SEKAI_ISAN) {
  rows.push({
    quiz_id: "sekai-isan",
    item_key: item.name,
    label: item.name,
    answer: item.name,
    category: item.type,
    extra: { hint: item.hint, prefectures: item.prefectures, year: item.year },
  });
}

for (const item of CHIKEI) {
  rows.push({
    quiz_id: "chikei",
    item_key: item.name,
    label: item.name,
    answer: item.name,
    category: item.category,
    extra: { hint: item.hint },
  });
}

for (const [code, name, region] of PREFECTURES) {
  rows.push({
    quiz_id: "todofuken",
    item_key: String(code),
    label: name,
    answer: name,
    category: region,
    extra: null,
  });
}

for (const [code, name, region, capital] of PREFECTURES) {
  rows.push({
    quiz_id: "kencho",
    item_key: String(code),
    label: name,
    answer: capital,
    category: region,
    extra: null,
  });
}

console.log(`-- Generated ${rows.length} rows (expect 26 + 25 + 47 + 47 = 145)`);
for (const row of rows) {
  console.log(insertStatement(row));
}
