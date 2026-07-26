# 仕様書: chishiki-quiz DBスキーマ再設計の依頼

## このアプリについて

家庭教師が生徒1名のために作っている学習クイズアプリ。Cloudflare Pages + Pages Functions + D1(SQLite互換)で構築。
生徒/先生の2アカウント制(HMAC署名Cookieによる自作ログイン)。GitHubリポジトリ `hasikure/knowledge_social_sciance` にPush→Cloudflare Pagesが自動デプロイ。

現在有効なクイズは2本:
- `sekai-isan`(日本の世界遺産、26件)
- `chikei`(日本の地形、25件)

過去に `todofuken`(都道府県、47件)・`kencho`(県庁所在地、47件)という地図クリック式クイズもあったが、直近で `archive/` ディレクトリに退避し本番の導線からは外した(データ自体はDBに残っている)。

## 現状のDBスキーマ

```sql
CREATE TABLE IF NOT EXISTS items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL,       -- 'sekai-isan' | 'todofuken' | 'kencho' | 'chikei'
  item_key TEXT NOT NULL,      -- クイズ内で一意な識別子
  label TEXT NOT NULL,         -- 表示名
  answer TEXT NOT NULL,        -- 正解として入力させる文字列(通常はlabelと同じ)
  category TEXT,               -- 地形の分類/世界遺産の種別/都道府県の地方区分など、用途がクイズごとに違う
  extra_json TEXT,             -- クイズ固有の補足情報(hint等)をJSON文字列で
  UNIQUE(quiz_id, item_key)
);

CREATE TABLE IF NOT EXISTS rounds (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL,
  scope TEXT NOT NULL DEFAULT 'all',  -- 地図クイズの地方区分絞り込み用。他クイズは常に'all'
  score INTEGER NOT NULL,
  total INTEGER NOT NULL,
  played_at TEXT DEFAULT (datetime('now'))
);

CREATE TABLE IF NOT EXISTS attempts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_id INTEGER NOT NULL REFERENCES items(id),
  round_id INTEGER NOT NULL REFERENCES rounds(id),
  is_correct INTEGER NOT NULL,
  answered_at TEXT DEFAULT (datetime('now'))
);
```

設計上のポイント:
- `user_id`のようなユーザー識別カラムは存在しない(生徒は1人だけの前提)。
- 5段階習熟度(未出題/1回正解/2回連続正解/1回間違い/2回連続間違い)は`attempts`に保存せず、同じ`item_id`の直近2件を`ROW_NUMBER() OVER (PARTITION BY item_id ORDER BY answered_at DESC)`で都度クエリして判定する設計(冗長な状態を持たない)。
- 出題は「固定10問を、苦手なものほど選ばれやすい重み付き抽選(Efraimidis-Spirakis法)で選ぶ」方式。ラウンド直後に「間違えた問題だけもう一度出す」即時復習フォローアップがあるが、これは一切DBに書き込まない(スコア・習熟度に影響しない練習専用)。
- 出題文(prompt)や選択肢は`items`テーブルには一切保存されておらず、各クイズのフロントエンドJS(`syakai/<quiz>/index.html`内)がその場で組み立てる。例えば地形クイズの「次の説明にあてはまる地形は？」は`item.extra_json.hint`を使ってJS側が文字列を生成している。

## API構成(参考)

- `GET/POST /api/items` — 問題の一覧取得(習熟度・重み付き)/先生専用の新規登録
- `GET/POST /api/rounds` — 自己ベスト取得/ラウンド結果の記録(scoreとattemptsをまとめて書き込み)
- `GET /api/dashboard` — トップページ集計値(後述のバグの発生源)
- `GET /api/stats` — 先生専用、全体正答率・苦手トップ10・直近履歴
- `GET /api/me` — ログイン中のroleを返す

## 見つかっている問題点(再設計の動機)

### 1. スコア表示の分母がズレているバグ

`functions/api/dashboard.js`に以下のハードコードされた定数がある:

```js
const QUIZ_MAX = {
  "sekai-isan": 26,
  chikei: 25,
};
```

これは「そのクイズの全項目数」だが、実際のプレイは常に10問固定の重み付きラウンドなので、1ラウンドのベストスコアは最大でも10にしかならない。しかしダッシュボードの「総合スコア」表示は

```
totalScore = 各クイズのベストラウンドscoreの合計(最大 10+10=20)
totalMax   = QUIZ_MAXの合計(26+25=51)
pct        = totalScore / totalMax * 100
```

という計算をしており、満点プレイしても最大 20/51 ≒ 39% にしかならない。分子(ラウンド単位のスコア)と分母(全項目数)のスケールが噛み合っていない。

### 2. クイズのメタ情報がコードに散在していて拡張性が低い

「どのクイズが存在するか・有効か・表示名は何か・満点はいくつか」という情報がDBではなく、以下の複数ファイルにハードコードされている。クイズを1本増減するだけで全部を手で直す必要があった(直近で地図クイズ2本をarchive行きにした際も4箇所以上を編集した):

- `functions/api/dashboard.js` の `QUIZ_MAX` / `GENRES`
- `index.html` の `GENRE_URL`
- `genres/index.html` の `GENRE_URL`
- `teacher/questions/index.html` の `<select id="quiz_id">` の選択肢
- `syakai/index.html` のクイズ一覧リンク

満点数(QUIZ_MAX)も`items`テーブルの実件数から動的に算出していないため、先生が問題を追加してもこの定数を手動で更新しない限り表示が古いままになる。

## 依頼したいこと

1. `items` / `rounds` / `attempts` を中心とした現行スキーマを、以下を満たす形に再設計してほしい:
   - クイズの一覧・表示名・有効/無効(archiveかどうか)・ジャンル分類を、コードのハードコードではなくDB側(例: 新設する`quizzes`テーブル)で管理できるようにする。
   - スコア表示の分母は、DBから動的に算出できる値(実際のプレイ単位に合ったもの)にする。上記の「39%止まり」の不整合を解消する設計にしてほしい。
2. 移行方針(migration)も提示してほしい。本番D1には現在145件の`items`と実際のプレイ履歴(`rounds`/`attempts`)が入っており、これを失わずに新スキーマへ移行する必要がある。
3. スキーマ変更に伴い、修正が必要になる既存コードの箇所(`functions/api/*.js`、フロントエンドの該当ファイル)の一覧も示してほしい。

## スコープ外(今回は対応しない)

- 問題タイプ(4択 or 入力形式、画像付き問題など)をDB側でデータ駆動にする設計は**今回はスコープ外**。出題パターン(prompt生成ロジック)は今後も各クイズのHTML内JSに直接コードとして書いていく運用で問題ない。画像を使いたくなった場合も`items.extra_json`(スキーマレスなJSON)に`image`キーを追加するだけで足りると考えている。
- ユーザー管理の複雑化(生徒が複数人になる、など)は現時点では想定していない。生徒は1名のみ。

## 制約

- Cloudflare D1(SQLite方言)。外部キー制約はスキーマ上宣言されているが、PRAGMA `foreign_keys`は明示的にONにしていない。
- 生徒用ページはJSからのfetchのみでDBに触れる(サーバーサイドはCloudflare Pages Functions)。
- 本番の実行環境・データを壊さないマイグレーション手順が必須。
