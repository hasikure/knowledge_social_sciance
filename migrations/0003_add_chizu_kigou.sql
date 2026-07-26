-- 0003: 地図記号クイズの追加
--
-- 記号そのものは syakai/chizu-kigou/index.html の <template> にSVGで持つ。
-- DBには item_key と答えだけを入れ、item_key で対応するSVGを引く。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0003_add_chizu_kigou.sql
-- 冪等: OR IGNORE なので再実行しても安全。

INSERT OR IGNORE INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('chizu-kigou', '地図記号', 'syakai', 'syakai/chizu-kigou/', 10, 0);

INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jinja', '神社', '神社', '建物・施設', '{"hint":"鳥居をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jiin', '寺院', '寺院', '建物・施設', '{"hint":"仏教に由来する印をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'yubinkyoku', '郵便局', '郵便局', '建物・施設', '{"hint":"郵便のマークを丸で囲んでいる"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shochugakko', '小・中学校', '小・中学校', '建物・施設', '{"hint":"「文」の字をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kotogakko', '高等学校', '高等学校', '建物・施設', '{"hint":"「文」の字を丸で囲んでいる"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shiyakusho', '市役所', '市役所', '建物・施設', '{"hint":"二重丸で表す"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'choson-yakuba', '町村役場', '町村役場', '建物・施設', '{"hint":"丸ひとつで表す"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koban', '交番', '交番', '建物・施設', '{"hint":"警棒を2本交差させた形"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'keisatsusho', '警察署', '警察署', '建物・施設', '{"hint":"交差した警棒を丸で囲んでいる"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shobosho', '消防署', '消防署', '建物・施設', '{"hint":"昔の消火道具「さすまた」の形"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kojo', '工場', '工場', '建物・施設', '{"hint":"機械の歯車をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'toshokan', '図書館', '図書館', '建物・施設', '{"hint":"開いた本の形"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hakubutsukan', '博物館', '博物館', '建物・施設', '{"hint":"柱のある建物をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'rojin-home', '老人ホーム', '老人ホーム', '建物・施設', '{"hint":"建物の中に杖が描かれている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'todai', '灯台', '灯台', '建物・施設', '{"hint":"光を放つ様子をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'minato', '港', '港', '建物・施設', '{"hint":"船の錨をかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'onsen', '温泉', '温泉', '自然・その他', '{"hint":"湯気が立ちのぼる様子"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'sankakuten', '三角点', '三角点', '自然・その他', '{"hint":"測量の基準となる点。三角形で表す"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'chabatake', '茶畑', '茶畑', '土地利用', '{"hint":"茶の実を3つ並べた形"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kuwabatake', '桑畑', '桑畑', '土地利用', '{"hint":"桑の木の枝ぶりをかたどっている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koyojurin', '広葉樹林', '広葉樹林', '土地利用', '{"hint":"丸い樹冠の木で表す"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shinyojurin', '針葉樹林', '針葉樹林', '土地利用', '{"hint":"とがった樹冠の木で表す"}');
