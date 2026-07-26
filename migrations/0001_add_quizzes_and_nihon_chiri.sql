-- 0001: quizzes マスタの追加と、日本地理クイズの投入
--
-- 本番D1には既に items(145件) / rounds / attempts が存在するため、
-- seed.sql をそのまま流すとUNIQUE制約違反になる。このmigrationは
-- 「quizzesテーブルの新設」と「nihon-chiriの15件追加」だけを行い、
-- 既存の145件には一切触れない。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0001_add_quizzes_and_nihon_chiri.sql

CREATE TABLE IF NOT EXISTS quizzes (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  genre TEXT NOT NULL,
  url TEXT NOT NULL,
  max_score INTEGER NOT NULL DEFAULT 10,
  is_archived INTEGER NOT NULL DEFAULT 0
);

-- 既存4クイズ + 新規1クイズ。再実行しても重複しないよう OR IGNORE。
INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('sekai-isan', '日本の世界遺産', 'syakai', 'syakai/sekai-isan/', 10, 0);
INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('chikei', '日本の地形', 'syakai', 'syakai/chikei/', 10, 0);
INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('todofuken', '都道府県', 'syakai', 'archive/todofuken/', 10, 1);
INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('kencho', '県庁所在地', 'syakai', 'archive/kencho/', 10, 1);
INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('nihon-chiri', '日本地理', 'syakai', 'syakai/nihon-chiri/', 10, 0);

-- 日本地理クイズの問題(15件)。既存itemsには触れない。
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nan-tan', '日本の一番南にある島（極南端）の名前は何ですか？', '沖ノ鳥島', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nihon-alps', '飛騨山脈、木曽山脈、赤石山脈の3つの山脈を合わせた総称を何といいますか？', '日本アルプス', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tone-gawa', '日本で一番流域面積が広い川の名前は何ですか？', '利根川', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'rias-kaigan', '三陸海岸や志摩半島に見られる、複雑に入り組んだ鋸刃状の海岸地形を何といいますか？', 'リアス海岸', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'yamase', '東北地方の太平洋側で、夏に吹き冷害の原因となる冷たく湿った北東の風を何といいますか？', 'やませ', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kanto-loam', '関東平野のほぼ中央を流れる利根川などの流域に広がる、火山灰が降り積もってできた赤土の台地を何といいますか？', '関東ローム層', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'korechi', '中部地方の八ヶ岳山麓や菅平高原などで盛んな、夏の涼しい気候を利用してレタスやキャベツなどを栽培する農業を何といいますか？', '高冷地農業', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kinko', '大阪市やその周辺など、大消費地に近い立地を生かして野菜などを栽培する農業を何といいますか？', '近郊農業', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'setouchi', '瀬戸内海沿岸の地域に見られる、年中温暖で雨が少ない気候を何といいますか？', '瀬戸内の気候', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shirasu', '九州南部に広がる、シラスと呼ばれる火山灰が堆積した台地を何といいますか？', 'シラス台地', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shimokita-hanto', '青森県にある、むつ湾を囲むまさかりの形をした半島は何ですか？', '下北半島', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kuroshio', '日本の太平洋側を南から北へ流れる、日本海流とも呼ばれる暖流の名前は何ですか？', '黒潮', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shinano-gawa', '日本で最も長い川の名前は何ですか？', '信濃川', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'karst', '山口県の秋吉台などに代表される、石灰岩が雨水などで侵食されてできた地形を何といいますか？', 'カルスト地形', 'basic', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'rakuno', '北海道の根釧台地などで盛んな、乳牛などを飼育して生乳や乳製品を生産する農業を何といいますか？', '酪農', 'basic', NULL);
