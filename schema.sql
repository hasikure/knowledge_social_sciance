-- 出題項目マスタ(全クイズの問題をここに統合)
CREATE TABLE IF NOT EXISTS items (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  quiz_id TEXT NOT NULL,       -- 'sekai-isan' | 'todofuken' | 'kencho' | 'chikei'
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
  played_at TEXT DEFAULT (datetime('now'))
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
