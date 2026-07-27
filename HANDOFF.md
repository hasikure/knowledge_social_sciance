# chishiki-quiz 共通引き継ぎ

> **Codex・Claude・Gemini共通の作業記録**。作業を始める前に必ず読み、設計・実装・デプロイ・未解決事項に変更があれば、同じ作業コミットでこの文書も更新する。秘密情報（パスワード、Cookie、APIキー）は記録しない。

## 現在のスナップショット（2026-07-27）

- **最新コミット**: `3693488 Refresh the handoff snapshot` の次に歴史クイズを追加（`main` へpush済み、Cloudflare Pagesの自動デプロイ対象）
- **トップ画面**: 教科から始める導線と、教科 → 分野 → 個別クイズのネスト型「習熟度一覧」を実装済み。個別項目はコンパクトなタイルで色を確認できる。
- **習熟度の色**: 8段階（グレー〜赤）＋文言。色の意味は `genres/` の「色の見方」コラムにのみ表示する。
- **先生用メニュー**: 統計・履歴 / 問題一覧 / 問題の登録 の3つ。いずれも生徒からは見えない。
- **コンテンツ**: 本番は `quizzes` 8件 / `items` 491問。現役は6クイズ397問（歴史170・日本地理107・都道府県(地図)47・世界遺産26・地形25・地図記号22）、旧地図クリック式2本94問は `is_archived=1`。分野は地理と歴史の2つ。
- **未解決／次の拡張**: 歴史・公民・理科を追加する際は、トップの `SECTION_BY_QUIZ` に分野を追加する。長期的には `quizzes` テーブルに分野列を持たせ、暫定マッピングを廃止する。問題データはCSVに一本化済み（7章参照）。

## 共通運用ルール

1. **開始時**: この文書と `git status` を確認する。
2. **変更時**: 実装内容、確認結果、デプロイの有無、次の作業をこの「現在のスナップショット」または更新履歴へ追記する。
3. **コミット時**: コード変更とこの文書の更新を同じコミットに含める。関係ない未追跡ファイルは追加しない。
4. **競合時**: 他のエージェントの更新を消さず、最新内容を取り込んで追記する。

## 更新履歴

### 2026-07-27 — Claude（5回目）

- **歴史クイズを114問 → 170問に拡充**。`migrations/0006_add_rekishi_seido.sql` で**本番適用済み**。
  - 制度・用語: 班田収授法・口分田・租調庸・防人・荘園・守護と地頭・執権・御恩と奉公・惣・座・土一揆・下剋上・分国法・楽市楽座・兵農分離・五人組・出島・朱印船貿易・株仲間・打ちこわし など
  - 世界史との関連: ルネサンス・宗教改革・コロンブス・名誉革命・アメリカ独立宣言・フランス革命・産業革命・アヘン戦争・南北戦争・辛亥革命・ロシア革命・国際連盟・第二次世界大戦
  - 近代の政策と戦後: 富国強兵・殖産興業・版籍奉還・徴兵令・西南戦争・下関条約・三国干渉・ポーツマス条約・農地改革・財閥解体・冷戦・朝鮮戦争・石油危機
  - 時代別は 古代34・中世41・近世42・近代40・現代13。年あり85・人物あり57。
- **不具合修正**: 人物名がラベルの3項目(平清盛・源頼朝・コロンブス)に `year` が入っており、「『源頼朝』は西暦何年のことか」という不自然な出題が発生しうる状態だった。`year` を外して解消(年の情報はヒント文に残るので学習内容は変わらない)。同じmigrationに `UPDATE` を含めてある。
  - **今後の注意**: `year` は「出来事」を表す項目にだけ付けること。ラベルが人名の項目に付けると年代問題が成立しない。
- **まだ手薄な領域**: 縄文・弥生・古墳時代(三内丸山遺跡・登呂遺跡・稲作の伝来・古墳・埴輪・渡来人)、江戸の三大改革以外の出来事(生類憐みの令・田沼意次・大塩平八郎の乱)、大正デモクラシー(米騒動・普通選挙法・治安維持法)。あと50問程度は足せる。
- 検証: 170問にitem_key重複・hint欠けが無いこと、100問連続出題して人物への年代問題が0件であること、3パターンすべてが出ることをブラウザで確認。JSエラーなし。
### 2026-07-27 — Claude（4回目）

- **歴史クイズを63問 → 114問に拡充**。`migrations/0005_add_rekishi_bunka.sql` で**本番適用済み**。
  - 追加したのは、それまでほぼ空だった**文化史と人物**。各時代の文学・美術・宗教・学問(古事記/源氏物語/鎌倉新仏教/能/水墨画/元禄・化政文化/蘭学/国学 など)と、紫式部・雪舟・千利休・松尾芭蕉・杉田玄白・福沢諭吉・陸奥宗光などの人物。
  - 時代別は 古代26・中世27・近世29・近代25・現代7。年あり69・人物あり52。
  - 年号は 陸奥宗光の領事裁判権撤廃(1894)・小村寿太郎の関税自主権回復(1911)・民撰議院設立の建白書(1874)・大日本沿海輿地全図の完成(1821) を出典にあたって確認した。
- **問題を選ぶ基準**(今後の追加時の参考): ①中学の教科書に必ず出る定番であること ②年号に争いがないこと(鎌倉幕府の成立は1185年説と1192年説があるため、「源頼朝が征夷大将軍に任じられた年」に置き換えている) ③一問一答として自然に問えること。
- **まだ手薄な領域**: 制度・用語(班田収授法・荘園・守護と地頭・惣・座・楽市楽座・五人組)、世界史との関連(ルネサンス・宗教改革・産業革命・フランス革命)、戦後(石油危機・55年体制・バブル経済)。中学歴史だけならあと50〜80問は足せる。
- 検証: 114問にitem_keyの重複とhint欠けが無いこと、3パターンすべてが出題されること、5ラウンド完走をブラウザで確認。JSエラーなし。

### 2026-07-27 — Claude（3回目）

- **歴史クイズ(`rekishi`)を追加**。63項目、`migrations/0004_add_rekishi.sql` で**本番適用済み**。地理以外の分野はこれが最初。
  - 古代〜現代を1クイズにまとめ、`category` で時代(古代・中世・近世・近代・現代)を分ける。
  - 出題は3パターン: 説明→語句 / 出来事→年代 / 業績→人物。1項目から複数の問い方を作るので、`extra_json` に `hint` / `year` / `person` / `achievement` を持たせている(63項目中、年あり58・人物あり27)。
- **共有エンジン(`assets/quiz.js`)に2つ追加**。他クイズにも効くので注意。
  - `questionTypes[].supports(item)` — その項目に出せる問い方だけに絞る。年代を持たない項目に年代問題を出さないため。未定義なら全項目に出せるとみなすので、既存クイズは影響を受けない。
  - **別解の許容** — 正誤判定が完全一致ではなくなった。問題タイプが `accept`(配列)を返せばその表記すべてを正解にする。指定が無い場合も、正解が「黒潮(日本海流)」のように括弧で別名を併記していれば「黒潮」「日本海流」どちらでも正解にする。
    - これにより、**地形クイズの5項目(飛騨山脈・木曽山脈・赤石山脈・黒潮・親潮)が括弧まで正確に打たないと不正解だった問題が解消**した。
    - 歴史の年代問題は `accept` で「1192」「1192年」の両方を受け付ける。
- トップの `SECTION_BY_QUIZ` に `rekishi: "歴史"` を追加。
- **検証**: 3パターンすべてが出題されること、年代が両表記で正解になること、括弧の別解が通ること、既存5クイズ+歴史の計6クイズが10問完走すること、トップに地理/歴史の2分野が出ることをブラウザで確認。JSエラーなし。
### 2026-07-27 — Claude（2回目）

- **先生用に「問題一覧」ページ(`teacher/items/`)を追加**。登録済みの問題を見る場所が無かったため。
  - クイズをタブで切り替え、`#` / 問題文(地図記号は記号の絵) / 正解 / 分類 / 補足 / 習熟度 を表で表示する。アーカイブ済みのクイズも見られる(その旨の注記が出る)。現役クイズが先、アーカイブ済みが後ろの順。
  - 生徒がURLを直接開いてもアクセス拒否になる(`/api/me` の role で判定)。
- **地図記号のSVG定義を `assets/chizu-kigou-symbols.js` に切り出した**。クイズ画面と一覧ページの2箇所から使うため。`ChizuKigou.build(item_key)` が `<svg>` 要素を返し、`ChizuKigou.keys()` で定義済みキーを列挙できる。**記号を足すときはこのファイルとCSVの両方に同じ `item_key` で追加すること**。
- 検証: 生徒でのアクセス拒否、7クイズ分のタブ表示、地図記号22件すべての絵の描画、アーカイブ注記、クイズ本体が壊れていないことをブラウザで確認。JSエラーなし。

### 2026-07-27 — Claude

- **地図記号クイズ(`chizu-kigou`)を追加**。22記号、`migrations/0003_add_chizu_kigou.sql` で**本番適用済み**。
  - 記号はSVGで自前描画し、`item_key` と `id="sym-<item_key>"` を対応させて引く。外部画像を使わないので著作権・リンク切れの心配がない。(当初はページ内の `<template>` に置いていたが、同日中に `assets/chizu-kigou-symbols.js` へ切り出した。下の「2回目」を参照。)
  - 卍 / 文 / 〒 は記号そのものが文字なので `<text>` で描画している。`text-anchor` と `dominant-baseline` はCSSではなく**SVG属性で指定しないと中央に来ない**(一度ハマった)。
  - 線は `currentColor` で描き、色は `.quiz-symbol-visual` 側で決めるためダークモードに追従する。
  - **画像問題を作るときの雛形**でもある。`build(item)` が `{prompt, answer, visual}` を返せば `visual`(DOM要素)が問題文の上に表示される。写真を使う場合は `extra_json` に画像パスを入れて `<img>` を組み立てればよい。
  - **検証**: 22記号すべての描画をスクリーンショットで目視確認。10問1ラウンドを通しでプレイし、7/10の採点・自己ベスト更新・復習ボタン・トップの集計(7/50、Lv3)が想定どおりであることを確認。
- トップの `SECTION_BY_QUIZ` に `chizu-kigou` を追加。**クイズを足したらここも更新すること**(未登録だと「その他」に落ちる)。
- `assets/tier.js` の最下位ランク名の綴りを修正(Hallo → Hello)。

### 2026-07-26 — Claude（2回目）

- **問題データをCSVに一本化**。`scripts/generate-seed.js` のJSハードコードを廃止し、`data/quizzes.csv` + `data/items_<quiz_id>.csv` を正本とするCSV→SQL変換スクリプトに書き換えた。RFC4180準拠パーサ内蔵（npm依存は増やしていない）。生成時に必須列・未知の`quiz_id`・`item_key`重複・`extra_json`のJSON妥当性を検証し、`ファイル名:行番号`付きでエラーにする。
  - 旧CSV4本と `todofuken_chizu_setup.sql` は per-quiz CSV に統合したため削除。
  - **検証**: 生成した `seed.sql` を空のローカルD1に流し、本番エクスポートと突き合わせて quizzes 6件・items 299件が一致することを確認（差分は下記の改行修正9件のみ）。
- **バグ修正**: 農水産ランキング9問の問題文で、改行が実際の改行でなくリテラルの `\n`（2文字）としてDBに入っており、画面に「\n」が見えていた。`migrations/0002_fix_literal_newlines.sql` を追加し**本番適用済み**（9行更新、再実行しても安全）。
- これにより、前回記載した残課題（CSV投入手順が非定型・`generate-seed.js` が現状を再現できない）は解消。

### 2026-07-26 — Claude

- 詳細資料側の記述を本番の実態に合わせて更新（コード変更なし、文書のみ）。
  - 「本番DBの状態」を実測値に差し替え（`quizzes` 5→6件 / `items` 160→299問、履歴は0件）。
  - 7章を「未完了の作業」から「投入の経緯と残課題」に改題。CSV139問と `todofuken-chizu` は投入済みのため完了として記載し、代わりに残課題（CSV投入手順が非定型・`generate-seed.js` が現状を再現できない）を明記。
  - ファイル構成の「★未完了」「★未投入」マーカーと、直近コミット一覧を最新化。
- 本番D1へ `SELECT` で実測して確認。書き込みは行っていない。

### 2026-07-26 — Codex

- `HANDOFF_FOR_CODEX.md` を全エージェント共通の引き継ぎ資料としてGit管理に追加。
- トップのネスト型習熟度一覧、色階級の説明コラム、直近のデプロイ状態を反映。

---

## 既存の詳細資料（2026-07-26 時点）

家庭教師が生徒1名のために運用している学習クイズアプリ。この資料だけで現状を把握して作業に入れることを目指して書いている。

---

## 1. 全体像

- **用途**: 中学社会の一問一答クイズ。プレイヤーは生徒1名のみ。先生(=リポジトリ所有者)は統計閲覧と問題登録を行う。
- **本番URL**: `https://chishiki-quiz.pages.dev/`
- **リポジトリ**: `hasikure/knowledge_social_sciance`(mainブランチにpushするとCloudflare Pagesが自動デプロイ)
- **スタック**: Cloudflare Pages + Pages Functions + D1(SQLite互換)。ビルド工程はなく、静的HTML/CSS/JSをそのまま配信する。フレームワーク・npm依存はゼロ。

### 認証

`functions/_middleware.js` による自作認証。OAuthやCloudflare Accessは使っていない。

- 生徒/先生の2アカウント。ユーザー名・パスワードは環境変数(Cloudflare Pagesのsecret)で管理。
- ログイン成功でHMAC署名した `app_session` Cookie(HttpOnly, 30日)を発行。`role` クレームに `student` / `teacher` が入る。
- **全ページ・全APIがログイン必須**。未ログイン時はページなら `/login` へ302、APIなら401。
- Cookieが HttpOnly なのでJSから role を読めない。フロントは `/api/me` で自分のroleを取得する。

**重要**: 本番のパスワード類(`STUDENT_PASS` / `TEACHER_PASS` / `SESSION_SECRET`)はリポジトリ所有者本人が `wrangler pages secret put` で設定・管理している。**AIエージェント側はこの値を知らないし、知る必要もない。本番の認証後動作確認は所有者に依頼すること。** ローカルテストには後述の `.dev.vars` のテスト用資格情報を使う。

---

## 2. データベース

### スキーマ (`schema.sql`)

```sql
CREATE TABLE quizzes (          -- クイズマスタ
  id TEXT PRIMARY KEY,          -- 'sekai-isan' | 'chikei' | 'nihon-chiri' | ...
  name TEXT NOT NULL,           -- 表示名
  genre TEXT NOT NULL,          -- 現状すべて 'syakai'。教科の単位
  url TEXT NOT NULL,            -- サイトルート起点のパス 例: 'syakai/chikei/'
  max_score INTEGER NOT NULL DEFAULT 10,  -- 1ラウンドの満点(=出題数)
  is_archived INTEGER NOT NULL DEFAULT 0  -- 1なら導線から外す(データは残す)
);

CREATE TABLE items (            -- 出題項目マスタ(全クイズ共通)
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL REFERENCES quizzes(id),
  item_key TEXT NOT NULL,       -- クイズ内で一意な識別子
  label TEXT NOT NULL,          -- 表示名(一問一答クイズでは問題文そのものを入れることもある)
  answer TEXT NOT NULL,         -- 正解文字列
  category TEXT,                -- 用途はクイズごとに異なる(後述)
  extra_json TEXT,              -- クイズ固有情報のJSON文字列(hint, prefectures等)
  UNIQUE(quiz_id, item_key)
);

CREATE TABLE rounds (           -- 1プレイ分のサマリ
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL,
  scope TEXT NOT NULL DEFAULT 'all',
  score INTEGER NOT NULL,
  total INTEGER NOT NULL,
  played_at TEXT DEFAULT (datetime('now'))
);

CREATE TABLE attempts (         -- 解答履歴(1問1レコード)
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_id INTEGER NOT NULL REFERENCES items(id),
  round_id INTEGER NOT NULL REFERENCES rounds(id),
  is_correct INTEGER NOT NULL,
  answered_at TEXT DEFAULT (datetime('now'))
);
```

### 設計上の約束ごと(踏まないと壊れる箇所)

- **ユーザー識別カラムを持たない**。生徒が1人しかいない前提。複数生徒対応は現時点で要件外。
- **5段階習熟度は保存しない**。`attempts` の同一 `item_id` の直近2件を `ROW_NUMBER() OVER (PARTITION BY item_id ORDER BY answered_at DESC)` で都度算出する(未出題/1回正解/2回連続正解/1回間違い/2回連続間違い)。冗長な状態を持たない方針。ロジックは `functions/_lib/mastery.js`。
- **`category` の意味はクイズごとに違う**。地形なら「山地・山脈」等の分類、世界遺産なら「文化遺産/自然遺産」、地図クイズなら地方区分(スコープ絞り込みに使う)。汎用カラムとして扱うこと。
- **復習(即時フォローアップ)はDBに一切書き込まない**。詳細は次章。

### 本番DBの状態(2026-07-26 時点で確認)

`quizzes` 6件 / `items` 299件。うち現役(生徒がプレイできる)は4クイズ205問。プレイ履歴は `rounds` 0件・`attempts` 0件(まっさらな状態)。

| quiz_id | 表示名 | items | is_archived |
|---|---|---|---|
| `nihon-chiri` | 日本地理 | 107 | 0 |
| `todofuken-chizu` | 都道府県(地図) | 47 | 0 |
| `sekai-isan` | 日本の世界遺産 | 26 | 0 |
| `chikei` | 日本の地形 | 25 | 0 |
| `todofuken` | 都道府県 | 47 | 1 |
| `kencho` | 県庁所在地 | 47 | 1 |

`genre` は現状すべて `syakai`。

### マイグレーション運用

- `schema.sql` + `seed.sql` は**空のDBを初期化するためのもの**。既にデータが入っているDBに流すとUNIQUE制約違反で落ちる。
- 既存DBへの変更は `migrations/` にファイルを追加して適用する。既存の連番は `0001`〜`0005`(いずれも適用済み。ファイル名は migrations/ を参照)。冪等にするため全INSERTを `INSERT OR IGNORE` で書く方針。
- `seed.sql` は手で書かず **`node scripts/generate-seed.js > seed.sql` で生成する**。元データは `data/` 配下のCSV(7章参照)。`seed.sql` を直接編集しても次の生成で消える。

---

## 3. 出題ロジック

### 通常ラウンド

- 1ラウンド **固定10問**(`quizzes.max_score`)。
- 出題は **重み付きランダム抽選(Efraimidis-Spirakis法: `key = random()^(1/weight)` の上位N件)**。習熟度が低い項目ほど weight が大きく、選ばれやすい。実装は `assets/quiz.js` の `weightedSample()`、weightの値は `functions/_lib/mastery.js` の `SELECTION_WEIGHT`。
- 「全項目を毎回出す」方式ではない点に注意。

### 即時復習フォローアップ

ラウンド終了直後に「間違えた N 問だけもう一度」ボタンが出る。これは**純粋な練習であり、スコアにも習熟度にも一切影響しない**。`rounds` にも `attempts` にも書き込まない(`reviewMode` フラグでPOSTを丸ごとスキップ)。この仕様は所有者が明示的に決めたもので、変えないこと。

### 解答形式

現在はすべて**テキスト入力の一問一答**。以前は4択だったが、「地形の分類を答えさせる問題は名前に答えが入っている(例: 奥羽山脈→山地・山脈)」等の理由で廃止し、入力式に統一した。

正誤判定は `assets/quiz.js` の `isAnswerCorrect()`。`normalizeAnswer()` で前後空白の除去・全角空白の半角化・連続空白の圧縮をしたうえで、**受け付ける表記のどれかと一致すれば正解**とする。

- 問題タイプが `accept`(配列)を返していればその表記すべてを正解にする(例: 年代問題の「1192」「1192年」)。
- 指定が無い場合、正解が「黒潮(日本海流)」のように括弧で別名を併記していれば、全体・括弧の前・括弧の中のいずれでも正解にする。
- ひらがな/漢字の相互変換のような表記ゆれの吸収はしていない。必要なら `accept` に列挙する。

また、問題タイプは `supports(item)` を持てる。返り値が false の項目にはその問い方を出さない(例: 年が分かっていない項目に年代問題を出さない)。未定義なら全項目に出せるとみなす。

### 問題文の生成場所

**問題文と正解の組み立てはDBではなく、各クイズページのJSが行う**。`questionTypes` 配列に `build(item)` を書き、`{ prompt, answer }` を返す。例(`syakai/chikei/index.html`):

```js
const questionTypes = [
  {
    build(item) {
      return {
        prompt: `次の説明にあてはまる地形は？\n「${item.extra.hint}」`,
        answer: item.label,
      };
    },
  },
];
```

出題パターンをDB側でデータ駆動にする案は**意図的に見送っている**(所有者判断)。新しい出題形式が必要なら、該当ページのJSを直接編集する運用。画像付き問題が必要になった場合は `items.extra_json` にキーを足せば足りる想定。

---

## 4. レベル / スコアの計算

`functions/api/dashboard.js` に実装。

### 経験値とレベル

正答率ではなく**これまで解いた問題数の累積**でレベルが上がる。

- 正解 = 10XP、不正解 = 3XP(即時復習はDB未記録なので加算されない)
- レベル到達に必要な累積XP: `a*x + b*x^2 + c*x^3`(x = level-1)
  - `a = 22.265962638928332`, `b = 2.737369622541412`, `c = -0.003332261469693653`
  - 上限 Lv100
- この係数は「Lv2到達=25XP(序盤は軽く)」「Lv80到達=約2000問」「Lv100到達=約3000問」の3点を満たすよう連立方程式を解いて決めたもの。カーブを変えたい場合は同じ方法で解き直すこと。

### 総合スコア

`totalScore` = 有効クイズごとのベストラウンドscoreの合計、`totalMax` = 有効クイズの `max_score` の合計。

以前は分母に「全項目数」を使っていたため、10問ラウンドで満点を取っても最大39%にしかならないバグがあった。**分子と分母のスケールを揃えること**(ラウンド単位 vs ラウンド単位)。

### 段位(色)

`assets/tier.js` が達成率%を8段階の色(灰→赤)に変換する。AtCoder風だが**他人との比較ではなく本人の到達度**を示すもの。

---

## 5. ファイル構成

```
/                         トップ(ダッシュボード)
  index.html              レベル・連続日数・総合スコア・クイズ一覧・週次進捗
  genres/index.html       ジャンル別の習熟度%と色の凡例
  login                   (functions/_middleware.js が生成)

  syakai/index.html       社会クイズ一覧 (/api/quizzes からDB駆動で生成)
  syakai/sekai-isan/      世界遺産クイズ(3パターン: 説明→名称 / 名称→所在県 / 名称→文化or自然)
  syakai/chikei/          地形クイズ(1パターン: 説明→名称)
  syakai/nihon-chiri/     日本地理クイズ(1パターン: 問題文→答え)
  syakai/todofuken-chizu/ 都道府県(地図)クイズ(地図を見て県名を入力)
  syakai/chizu-kigou/     地図記号クイズ(記号を見て名称を入力。画像問題の雛形)
  syakai/rekishi/         歴史クイズ(説明→語句 / 出来事→年代 / 業績→人物の3パターン)
  rika/index.html         理科(プレースホルダ)

  archive/todofuken/      旧・都道府県クイズ(地図クリック式)
  archive/kencho/         旧・県庁所在地クイズ(地図クリック式)
                          → 導線からは外したがURL直打ちで遊べる。DBでは is_archived=1

  teacher/index.html          先生用メニュー
  teacher/stats/index.html    統計・履歴(全体正答率/クイズ別/苦手トップ10/直近20件)
  teacher/items/index.html    問題一覧(クイズ別。地図記号は記号の絵付き)
  teacher/questions/index.html 問題登録フォーム

  assets/quiz.js              クイズエンジン(入力式・重み付き抽選・即時復習)
  assets/prefecture-map-quiz.js 旧地図クリック式エンジン(archive/ が使用)
  assets/chizu-kigou-symbols.js 地図記号のSVG定義(クイズ画面と問題一覧で共用)
  assets/tier.js              達成率→色
  assets/style.css

  functions/_middleware.js    認証ゲート
  functions/_lib/mastery.js   習熟度判定・重み・ジャンルスコア(アンダースコア始まりなのでルーティングされない)
  functions/api/*.js          後述

  schema.sql                  空DB初期化用
  seed.sql                    空DB初期化用(自動生成、直接編集しない)
  scripts/generate-seed.js    CSV -> seed.sql の変換(検証も行う)
  migrations/                 既存DBへの差分適用
  wrangler.toml               Pages設定 + D1バインディング(binding名 DB)
  data/                       問題データの正本CSV(7章参照)
```

## 6. API

すべて `functions/api/` 配下。ログイン必須。

| エンドポイント | 内容 |
|---|---|
| `GET /api/me` | ログイン中の role を返す(Cookieが HttpOnly のため必要) |
| `GET /api/quizzes` | クイズ一覧。`?include_archived=true` は**先生のみ**有効(生徒が付けても無視される) |
| `GET /api/items?quiz_id=&scope=` | 項目一覧。習熟度(`mastery`)と抽選用の重み(`weight`)を計算して返す |
| `POST /api/items` | 問題の新規登録。**先生のみ**(それ以外は403) |
| `GET /api/rounds?quiz_id=&scope=` | 自己ベストの `{score, total}` |
| `POST /api/rounds` | ラウンド結果を記録。body は `{quiz_id, scope, attempts: [{item_id, is_correct}]}`。**`is_correct` は boolean**(数値0/1を渡すと400) |
| `GET /api/dashboard` | トップ用の集計(ベストスコア・総合スコア・XP/レベル・連続日数・週間回数・ジャンル別%) |
| `GET /api/stats` | 統計・履歴。**先生のみ**(それ以外は403) |

---

## 7. 問題データの管理(CSV一本化)

### 7-1. 正本は `data/` 配下のCSV

問題データもクイズ定義も**すべてCSVが正本**。JS内のハードコードは廃止した。Excel等でそのまま開ける。

| ファイル | 内容 |
|---|---|
| `data/quizzes.csv` | クイズ定義。列は `id,name,genre,url,max_score,is_archived` |
| `data/items_<quiz_id>.csv` | そのクイズの問題。列は `quiz_id,item_key,label,answer,category,extra_json` |

現在は `items_sekai-isan`(26) / `items_chikei`(25) / `items_nihon-chiri`(107) / `items_todofuken-chizu`(47) / `items_todofuken`(47) / `items_kencho`(47) の6ファイル、計299問。

`nihon-chiri` の中身は `category` で系統が分かれている: `basic`(15) / `todofuken` 都道府県の説明文→県名(47) / `tokusanhin` 特産品→都道府県(36) / `nousuisan` ランキング空欄補充(9)。

### 7-2. 問題を追加・修正する手順

1. 該当CSVを編集する(新しいクイズを足すなら `data/quizzes.csv` に1行足し、`data/items_<id>.csv` を作る)。
2. `node scripts/generate-seed.js > seed.sql` で再生成する。このときスクリプトが検証も行う。
   - 必須列(`quiz_id` / `item_key` / `label` / `answer`)の空チェック
   - `data/quizzes.csv` に無い `quiz_id` の検出
   - 同一クイズ内での `item_key` 重複の検出
   - `extra_json` がJSONとして妥当か
   - 問題があれば `ファイル名:行番号` 付きでエラーになる
3. **既存の本番DBには `seed.sql` を流さない**(UNIQUE制約違反になる)。差分だけを `migrations/000N_*.sql` に書いて適用する。`seed.sql` は空DBを作り直すとき専用。

CSVは `parseCsv()` がRFC4180準拠で読むため、セル内のカンマ・改行・二重引用符をそのまま書ける(ランキング問題は実際に複数行の問題文を1セルに入れている)。

### 7-3. 都道府県(地図)クイズ

「地図で色がついている県はどこか」をテキスト入力で答えるクイズ。`archive/todofuken/` のクリック式を置き換えるもの。

- `syakai/todofuken-chizu/index.html` — 地方ごとにズームしたSVG地図を `<template>` に持ち、出題ごとに複製して該当県だけ着色する。
- `assets/quiz.js` — `renderQuestion()` が `q.visual`(DOM要素)を表示できるよう拡張済み。**共有エンジンなので、ここを触ったら他の全クイズの回帰確認が必要。**

### 7-4. 残っている課題

- **内容の裏取り**(作成者による申し送り):
  - 農水産ランキングの数値は二次情報源から取得。一次資料(e-Stat等)での確認が望ましい。
  - 特産品の「黒糖」は沖縄以外(鹿児島の奄美群島など)でも生産されるため、正誤判定で割れる可能性がある。
- 教科の分野分けがトップの `SECTION_BY_QUIZ` によるハードコードのまま。歴史・公民・理科を足すときは、`quizzes` テーブルに分野列を持たせて暫定マッピングを廃止する。
- `teacher/questions/` から登録した問題はDBに直接入るため、CSVには反映されない。CSVとDBがずれるので、フォームから足したら同じ内容をCSVにも追記すること(将来的にはCSVエクスポート機能があると望ましい)。

---

## 8. ローカル開発

```bash
# 依存インストールは不要(npxで都度取得)

# 空のローカルD1を初期化
npx wrangler d1 execute chishiki-quiz-db --local --file=./schema.sql
npx wrangler d1 execute chishiki-quiz-db --local --file=./seed.sql

# 開発サーバ(.dev.vars を自動で読む)
npx wrangler pages dev . --port 8788
```

`http://localhost:8788/` を開き、テスト用資格情報でログインする。これらは `.dev.vars`(gitignore済み・ローカル専用)に定義されている。

- 生徒: `teststudent` / `testpass123`
- 先生: `testteacher` / `testpass456`

**ローカルD1は `.wrangler/` 配下のSQLiteファイルで、本番とは完全に別物。**テストプレイの記録が残るので、まっさらにしたい場合は `.wrangler/` を消して上記を再実行する。

### 本番DBを直接見る

```bash
npx wrangler d1 execute chishiki-quiz-db --remote --command="SELECT ..."
```

---

## 9. 環境の癖(ハマりどころ)

Windows + Git Bash 環境。以下は実際に踏んだもの。

- **`curl -w '%{http_code}'` が実際は成功しているのに `000` を返すことがある**(schannelのSSL再ネゴシエーション絡み)。ステータス確認は `curl -s -i ... | grep -m1 '^HTTP/'` でヘッダーを直接読むこと。
- **`node -e` に `/c/Users/...` 形式のパスを渡すと解決できない**。`C:/Users/...` 形式を使う。
- **wranglerを複数プロセスで同時に走らせるとnpxキャッシュとD1ファイルがロックされ `EBUSY` になる**。別のエージェントやdevサーバが動いていないか確認する。バージョンを固定(`npx wrangler@4.113.0`)すると自動アップグレードによる衝突を避けられる。
- ローカルdevサーバの停止は `netstat -ano | grep :8788` → `taskkill //PID <pid> //F`。

---

## 10. 直近のコミット

```
50f1493 Rename shared handoff document
c15397f Add shared agent handoff protocol
3617fd0 Organize dashboard mastery overview
1dc5b25 feat: add map quiz features and new geography items
e9af0b6 Move quiz metadata into the database and switch to typed answers
596dd63 Switch level to cumulative XP from questions answered
9c805e9 Add teacher-only stats/history and question-registration pages
```

`e9af0b6` で「クイズ情報をコードのハードコードからDB(`quizzes`テーブル)へ移す」「4択→入力式」「地図クイズをarchive送り」を行い、対応するmigration `0001` は本番適用済み。`1dc5b25` で都道府県(地図)クイズと新コンテンツを追加し、その後DB側の投入も完了している(7章参照)。
