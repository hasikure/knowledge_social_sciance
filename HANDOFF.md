# chishiki-quiz 共通引き継ぎ

> **Codex・Claude・Gemini共通の作業記録**。作業を始める前に必ず読み、設計・実装・デプロイ・未解決事項に変更があれば、同じ作業コミットでこの文書も更新する。秘密情報（パスワード、Cookie、APIキー）は記録しない。

## 現在のスナップショット（2026-07-26）

- **最新コミット**: `3617fd0 Organize dashboard mastery overview`（`main` へpush済み、Cloudflare Pagesの自動デプロイ対象）
- **トップ画面**: 教科から始める導線と、教科 → 分野 → 個別クイズのネスト型「習熟度一覧」を実装済み。個別項目はコンパクトなタイルで色を確認できる。
- **習熟度の色**: 8段階（グレー〜赤）＋文言。色の意味は `genres/` の「色の見方」コラムにのみ表示する。
- **未解決／次の拡張**: 歴史・公民・理科を追加する際は、トップの `SECTION_BY_QUIZ` に分野を追加する。長期的には `quizzes` テーブルに分野列を持たせ、暫定マッピングを廃止する。

## 共通運用ルール

1. **開始時**: この文書と `git status` を確認する。
2. **変更時**: 実装内容、確認結果、デプロイの有無、次の作業をこの「現在のスナップショット」または更新履歴へ追記する。
3. **コミット時**: コード変更とこの文書の更新を同じコミットに含める。関係ない未追跡ファイルは追加しない。
4. **競合時**: 他のエージェントの更新を消さず、最新内容を取り込んで追記する。

## 更新履歴

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

### 本番DBの状態(最後に確認できた時点)

`quizzes` 5件 / `items` 160件。内訳は下表。プレイ履歴は `rounds` 1件・`attempts` 1件(所有者による動作確認分)。

| quiz_id | 表示名 | items | is_archived |
|---|---|---|---|
| `sekai-isan` | 日本の世界遺産 | 26 | 0 |
| `chikei` | 日本の地形 | 25 | 0 |
| `nihon-chiri` | 日本地理 | 15 | 0 |
| `todofuken` | 都道府県 | 47 | 1 |
| `kencho` | 県庁所在地 | 47 | 1 |

### マイグレーション運用

- `schema.sql` + `seed.sql` は**空のDBを初期化するためのもの**。既にデータが入っているDBに流すとUNIQUE制約違反で落ちる。
- 既存DBへの変更は `migrations/` にファイルを追加して適用する。既存の連番は `0001_add_quizzes_and_nihon_chiri.sql`(適用済み)。冪等にするため全INSERTを `INSERT OR IGNORE` で書く方針。
- `seed.sql` は手で書かず **`node scripts/generate-seed.js > seed.sql` で生成する**。生成元スクリプトに `QUIZZES` / `SEKAI_ISAN` / `CHIKEI` / `NIHON_CHIRI` / `PREFECTURES` の各データが入っている。ここを更新せずに `seed.sql` だけ直接編集すると、次に生成し直したとき差分が消える。

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

正誤判定は `assets/quiz.js` の `normalizeAnswer()` で、前後空白の除去・全角空白の半角化・連続空白の圧縮をしてから完全一致で比較する。表記ゆれの吸収はこれ以上やっていない。

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
  syakai/todofuken-chizu/ 都道府県(地図)クイズ ★未完了、後述
  rika/index.html         理科(プレースホルダ)

  archive/todofuken/      旧・都道府県クイズ(地図クリック式)
  archive/kencho/         旧・県庁所在地クイズ(地図クリック式)
                          → 導線からは外したがURL直打ちで遊べる。DBでは is_archived=1

  teacher/index.html          先生用メニュー
  teacher/stats/index.html    統計・履歴(全体正答率/クイズ別/苦手トップ10/直近20件)
  teacher/questions/index.html 問題登録フォーム

  assets/quiz.js              クイズエンジン(入力式・重み付き抽選・即時復習)
  assets/prefecture-map-quiz.js 旧地図クリック式エンジン(archive/ が使用)
  assets/tier.js              達成率→色
  assets/style.css

  functions/_middleware.js    認証ゲート
  functions/_lib/mastery.js   習熟度判定・重み・ジャンルスコア(アンダースコア始まりなのでルーティングされない)
  functions/api/*.js          後述

  schema.sql                  空DB初期化用
  seed.sql                    空DB初期化用(自動生成、直接編集しない)
  scripts/generate-seed.js    seed.sql の生成元
  migrations/                 既存DBへの差分適用
  wrangler.toml               Pages設定 + D1バインディング(binding名 DB)
  data/                       ★未投入のCSV群、後述
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

## 7. 未完了の作業(引き継ぎの本題)

直近で新コンテンツと新クイズが追加されたが、**DBへの投入が済んでおらず、現時点では本番で見えない状態**。

### 7-1. `data/` 配下のCSVが未投入

列は `quiz_id,item_key,label,answer,category,extra_json` で `items` テーブルにそのまま入る形式。**CSVをDBに流し込む仕組み(ローダースクリプト)は存在しない**ので、それも含めて作る必要がある。

| ファイル | 投入先 quiz_id | 件数 | 内容 |
|---|---|---|---|
| `data/todofuken_setsumei.csv` | `nihon-chiri` | 47 | 都道府県の説明文→県名 |
| `data/tokusanhin.csv` | `nihon-chiri` | 36 | 伝統工芸品・特産品→都道府県 |
| `data/nousuisan_ranking.csv` | `nihon-chiri` | 9 | 農水産物の都道府県別ランキング表の空欄補充 |
| `data/todofuken_chizu_items.csv` | `todofuken-chizu` | 47 | 下記の新クイズ用 |

内容面の注意点(作成者による申し送り):
- 農水産ランキングの数値は二次情報源から取得。一次資料(e-Stat等)での裏取りが望ましい。
- 特産品の「黒糖」は沖縄以外(鹿児島の奄美群島など)でも生産されるため、正誤判定で割れる可能性がある。

### 7-2. 都道府県(地図)クイズが未登録

「地図で色がついている県はどこか」をテキスト入力で答える新クイズ。`archive/todofuken/` のクリック式を置き換える位置づけ。

- `syakai/todofuken-chizu/index.html` — 実装済み。地方ごとにズームしたSVG地図を `<template>` に持ち、出題ごとに複製して該当県だけ着色する。
- `assets/quiz.js` — `renderQuestion()` が `q.visual`(DOM要素)を表示できるよう拡張済み。既存クイズへの影響はない後方互換の変更のはず**だが、共有エンジンを触っているので既存3クイズの回帰確認が必要**。
- `data/todofuken_chizu_setup.sql` — `quizzes` テーブルへの登録INSERT。**これを実行しないとクイズ一覧に出てこない。**

### 7-3. やること

1. CSVを `items` に投入する手順(スクリプト or migration)を用意して適用する。既存データを壊さないよう `INSERT OR IGNORE` ベースで。
2. `data/todofuken_chizu_setup.sql` を適用して `todofuken-chizu` を `quizzes` に登録する。この際 `migrations/0002_*.sql` として連番管理に載せるのが望ましい。
3. ローカルで動作確認:
   - 社会クイズ一覧に「都道府県(地図)」が出る
   - 地図の該当県だけ着色された状態で出題され、県名入力で正解になる
   - **既存の世界遺産・地形・日本地理が壊れていない**(`quiz.js` 共有のため必須)
   - ダッシュボードの総合スコア分母が増えたクイズ数に追随している
4. 本番D1にmigrationを適用 → commit → push(pushで自動デプロイ)
5. 認証後の最終確認は所有者に依頼する

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
1dc5b25 feat: add map quiz features and new geography items   ← 7-1/7-2の作業(DB未投入)
e9af0b6 Move quiz metadata into the database and switch to typed answers
596dd63 Switch level to cumulative XP from questions answered
9c805e9 Add teacher-only stats/history and question-registration pages
```

`e9af0b6` で「クイズ情報をコードのハードコードからDB(`quizzes`テーブル)へ移す」「4択→入力式」「地図クイズをarchive送り」を行い、対応するmigration `0001` は本番適用済み。`1dc5b25` はコード側のみで、DB側の投入が残っている状態。
