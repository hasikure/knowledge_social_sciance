-- 問題マスタ
CREATE TABLE IF NOT EXISTS questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  category TEXT,                 -- 例: "英単語", "数学", "歴史" など
  question TEXT NOT NULL,
  answer TEXT NOT NULL,
  created_at TEXT DEFAULT (datetime('now'))
);

-- 解答履歴（1回の解答ごとに1レコード）
CREATE TABLE IF NOT EXISTS attempts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  question_id INTEGER NOT NULL,
  user_answer TEXT,
  is_correct INTEGER NOT NULL,   -- 1 = 正答, 0 = 誤答
  answered_at TEXT DEFAULT (datetime('now')),
  FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE INDEX IF NOT EXISTS idx_attempts_question_id ON attempts(question_id);
CREATE INDEX IF NOT EXISTS idx_attempts_answered_at ON attempts(answered_at);
