# 学習アプリ 開発資料（Claude Code 引き継ぎ用）

## 1. 概要

中学理科・中学社会の一問一答を出題し、正答/誤答を記録する1人用の学習アプリ。
- ホスティング: **Cloudflare Pages**（GitHub連携で自動デプロイ）
- データベース: **Cloudflare D1**（SQLite）
- 認証: 自作のログイン画面（生徒用 / 先生用の2アカウント、Cookieセッション）
- 利用者: 生徒1名（本人）＋ 保護者/先生（自分）の管理用アクセス

すでに設計・コードの土台は用意済み。Claude Codeには **残りのフロントエンド実装 と 動作確認・デプロイ** をお願いしたい。

---

## 2. 現在の状態（すでにできていること）

- Cloudflareアカウント作成済み、GitHub連携済み（Private repoでも動作確認済み）
- Cloudflare Pages（Workers）へのデプロイ経路は疎通済み（`https://xxxx.workers.dev` でURL発行済み）
- 以下のファイルは作成済みでリポジトリに配置予定（本資料と同じフォルダに同梱）：
  - `functions/_middleware.js` … ログイン画面 + セッション認証（生徒/先生の2アカウント）
  - `functions/api/questions.js` … 問題の一覧取得・追加API
  - `functions/api/record.js` … 解答結果の記録API
  - `functions/api/stats.js` … 正答率などの統計取得API
  - `schema.sql` … D1のテーブル定義
  - `wrangler.toml` … D1バインディング設定（database_idは要書き換え）

**まだ存在しないもの**：フロントエンド（実際にクイズを出題し、回答し、結果を見る画面）。ここがClaude Codeへの主な依頼内容。

---

## 3. リポジトリのディレクトリ構成（想定）

```
repo-root/
├── public/                      ← 静的ファイル置き場（フロントエンドはここに作る）
│   ├── index.html                (要作成: クイズ画面)
│   └── (必要に応じてCSS/JS分割)
├── functions/
│   ├── _middleware.js            (作成済み: 認証)
│   └── api/
│       ├── questions.js          (作成済み)
│       ├── record.js             (作成済み)
│       └── stats.js              (作成済み)
├── schema.sql                    (作成済み: D1スキーマ)
└── wrangler.toml                 (作成済み: D1バインディング設定)
```

> Build output directory は `public` を想定。Cloudflare Pages側の設定で
> Build output directory を `public` に合わせること（HTML/JS/CSSをそこに置く場合）。
> ルート直下に直接 index.html を置く場合は空欄のままでもよい。

---

## 4. データベース（D1）仕様

### テーブル

```sql
questions(id, category, question, answer, created_at)
attempts(id, question_id, user_answer, is_correct, answered_at)
```

詳細は同梱の `schema.sql` を参照。

### セットアップコマンド（初回のみ、ローカルのターミナルで）

```bash
npx wrangler d1 create learning-app-db
# 出力される database_id を wrangler.toml に貼り付ける

npx wrangler d1 execute learning-app-db --remote --file=./schema.sql
```

### 無料枠の目安
- 読み取り: 500万行/日、書き込み: 10万行/日、ストレージ: 5GB
- 1人利用の学習アプリなら実質的に上限を気にする必要なし

---

## 5. API仕様（すでに実装済み）

| メソッド | パス | 内容 |
|---|---|---|
| GET | `/api/questions` | 問題一覧を取得（`?category=X` で絞り込み可） |
| POST | `/api/questions` | 問題を追加 `{ category, question, answer }` |
| POST | `/api/record` | 解答結果を記録 `{ question_id, user_answer, is_correct }` |
| GET | `/api/stats` | 全体正答率・カテゴリ別正答率・苦手問題トップ10・直近履歴を取得 |

すべて `functions/_middleware.js` の認証を通過した後でないとアクセスできない（未ログインは401 JSON）。

---

## 6. 認証仕様（すでに実装済み）

- `/login` … ログイン画面（自作HTML、ID/パスワード入力）
- `/logout` … ログアウト（Cookie削除）
- ログイン成功で30日間有効なセッションCookieを発行
- 2種類のアカウント：
  - `STUDENT_USER` / `STUDENT_PASS` … 生徒用
  - `TEACHER_USER` / `TEACHER_PASS` … 先生(自分)用
- ログイン後、`functions/api/*.js` からは `context.data.role`（`"student"` または `"teacher"`）で役割を参照可能
  - 例: 問題の追加（`POST /api/questions`）は `teacher` のみ許可する、といった制御をここに追加してもよい（現状は未制限）

### 必要な環境変数（Cloudflareダッシュボード Settings > Variables and Secrets）

| 変数名 | 内容 | Type |
|---|---|---|
| `STUDENT_USER` | 生徒用ID | Text |
| `STUDENT_PASS` | 生徒用パスワード | Secret |
| `TEACHER_USER` | 先生用ID | Text |
| `TEACHER_PASS` | 先生用パスワード | Secret |
| `SESSION_SECRET` | セッション署名用ランダム文字列（32文字以上） | Secret |

生成例: `node -e "console.log(require('crypto').randomBytes(32).toString('hex'))"`

---

## 7. Claude Codeにお願いしたいタスク

### 必須タスク

1. **フロントエンド（クイズ画面）の実装**
   - `/api/questions` から問題を取得し、1問ずつランダム出題
   - 回答入力 → 正誤判定 → `/api/record` に結果をPOST
   - カテゴリ選択（中学理科 / 中学社会など）で絞り込めるようにする
   - シンプルで見やすいUI（スマホでも操作しやすいレイアウト）
   - 素のHTML+JSで良い（フレームワーク不要、Cloudflare Pages Functionsとの相性重視）

2. **統計/履歴画面**
   - `/api/stats` を使って、正答率・苦手問題・直近の解答履歴を表示するページ
   - 先生用アカウント（`role === "teacher"`）でログインした時だけ見られるようにできるとなお良い

3. **問題登録画面（先生用）**
   - `/api/questions` へのPOSTを使って、新しい問題を追加できる簡易フォーム
   - `role === "teacher"` の場合のみアクセスできるようにする

4. **動作確認**
   - `npx wrangler pages dev` （または `wrangler dev`）でローカル動作確認
   - ログイン→出題→回答→統計反映までの一連の流れをテスト

5. **デプロイ**
   - GitHubにpush → Cloudflare Pages側で自動ビルド・デプロイされることを確認
   - D1のスキーマ適用（`schema.sql`）とバインディング設定（`wrangler.toml`のdatabase_id）を忘れずに

### 任意タスク（余裕があれば）

- 問題データの一括投入（理科・社会の一問一答教材からいくつか問題をこちらで用意する予定。CSVやJSON形式で渡すので、`/api/questions`へ一括登録するスクリプトがあると助かる）
- 苦手問題を優先的に出題する「復習モード」
- 正答時のちょっとしたアニメーション演出（モチベーション維持のため）

---

## 8. 参考：これまでの検討経緯（背景情報）

- 当初GitHub Pagesでのパスワード保護を検討 → 静的ホスティングだけでは限界があるためCloudflare Pages + Access/Workersに移行
- Basic認証（ブラウザ標準ダイアログ）→ 見た目が良くないため自作ログイン画面に変更
- データ保存はブラウザのlocalStorageも検討したが、複数端末利用や永続性を考慮しCloudflare D1を採用
- 無料枠のみで運用コストはほぼゼロの想定

---

## 9. 同梱ファイル一覧

```
PROJECT_BRIEF.md          ← 本資料
schema.sql                ← D1テーブル定義
wrangler.toml             ← D1バインディング設定（database_id要書き換え）
functions/_middleware.js  ← ログイン認証（生徒/先生2アカウント）
functions/api/questions.js
functions/api/record.js
functions/api/stats.js
```
