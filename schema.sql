-- クイズマスタ
-- 画面は 教科(genre) -> 分野(section) -> クイズ の3階層で表示する。
-- 例: 社会 -> 歴史 -> 歴史クイズ / 理科 -> 生物 -> 植物のつくり
CREATE TABLE IF NOT EXISTS quizzes (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  genre TEXT NOT NULL,      -- 教科。'syakai' | 'rika' など
  section TEXT NOT NULL,    -- 分野。'地理' | '歴史' | '物理' など
  url TEXT NOT NULL,        -- サイトルート起点のパス 例: 'syakai/chikei/'
  max_score INTEGER NOT NULL DEFAULT 10,  -- 1ラウンドの満点(=出題数)
  sort_order INTEGER NOT NULL DEFAULT 0,  -- 表示順。分野の並び順もこれで決まる
  is_archived INTEGER NOT NULL DEFAULT 0  -- 1なら導線から外す(データは残す)
);

-- 出題項目マスタ(全クイズの問題をここに統合)
CREATE TABLE IF NOT EXISTS items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL REFERENCES quizzes(id),       -- 'sekai-isan' | 'todofuken' | 'kencho' | 'chikei'
  item_key TEXT NOT NULL,      -- クイズ内で一意な識別子(項目名 or 都道府県コード)
  label TEXT NOT NULL,         -- 表示名
  answer TEXT NOT NULL,        -- 正解として選ばせる文字列(通常はlabelと同じ。県庁所在地クイズのみ異なる)
  category TEXT,               -- 地形の分類 / 世界遺産の種別 / 都道府県の地方区分など
  extra_json TEXT,             -- クイズ固有の補足情報(hint, prefectures, yearなど)をJSON文字列で
  UNIQUE(quiz_id, item_key)
);

-- 1プレイ(ラウンド)ごとのサマリ。通常プレイのみを記録し、復習モードは記録しない。
CREATE TABLE IF NOT EXISTS rounds (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL,
  scope TEXT NOT NULL DEFAULT 'all',  -- 'all' | 'tohoku' など(都道府県/県庁所在地クイズのみ使用)
  score INTEGER NOT NULL,
  total INTEGER NOT NULL,
  played_at TEXT DEFAULT (datetime('now')),
  role TEXT, -- 'student' | 'teacher'。先生の動作確認プレイを生徒の記録から外すために持つ。
             -- NULL はこの列を足す前の記録で、生徒のものとして扱う。
  mode TEXT  -- 'exam' なら修了テスト(最大50問)。NULL は通常の10問ラウンド。
             -- 修了テストは自己ベスト・総合スコアの集計から外すこと。
);

-- 解答履歴(1問1レコード)。通常プレイのみ。5段階習熟度・統計の元データ。
CREATE TABLE IF NOT EXISTS attempts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  item_id INTEGER NOT NULL REFERENCES items(id),
  round_id INTEGER NOT NULL REFERENCES rounds(id),
  is_correct INTEGER NOT NULL,  -- 1 = 正答, 0 = 誤答
  answered_at TEXT DEFAULT (datetime('now'))
);

CREATE INDEX IF NOT EXISTS idx_items_quiz_id ON items(quiz_id);
CREATE INDEX IF NOT EXISTS idx_rounds_quiz_scope ON rounds(quiz_id, scope);
CREATE INDEX IF NOT EXISTS idx_rounds_played_at ON rounds(played_at);
CREATE INDEX IF NOT EXISTS idx_attempts_item_id ON attempts(item_id);
CREATE INDEX IF NOT EXISTS idx_attempts_round_id ON attempts(round_id);
CREATE INDEX IF NOT EXISTS idx_attempts_answered_at ON attempts(answered_at);
