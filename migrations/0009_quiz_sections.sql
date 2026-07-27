-- 0009: クイズの分野(section)と表示順(sort_order)をDBで持つ
--
-- それまで分野の割り当ては index.html の SECTION_BY_QUIZ にベタ書きで、
-- クイズを1本足すたびに手で追記する必要があった。理科のように単元が多い教科を
-- 入れると破綻するため、quizzes テーブルの列に移した。
--
-- sort_order は表示順。分野の並び順も「その分野に属する最初のクイズの順序」で決まる。
-- 10刻みにしてあるので、間に挿入したいときは中間の値を使う。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0009_quiz_sections.sql
-- 冪等ではない: ALTER TABLE は2回目に失敗する(列が既にあるため)。適用済みか確認してから流すこと。

ALTER TABLE quizzes ADD COLUMN section TEXT NOT NULL DEFAULT '';
ALTER TABLE quizzes ADD COLUMN sort_order INTEGER NOT NULL DEFAULT 0;

UPDATE quizzes SET section = '地理', sort_order = 10 WHERE id = 'nihon-chiri';
UPDATE quizzes SET section = '地理', sort_order = 20 WHERE id = 'todofuken-chizu';
UPDATE quizzes SET section = '地理', sort_order = 30 WHERE id = 'chikei';
UPDATE quizzes SET section = '地理', sort_order = 40 WHERE id = 'chizu-kigou';
UPDATE quizzes SET section = '地理', sort_order = 50 WHERE id = 'sekai-isan';
UPDATE quizzes SET section = '歴史', sort_order = 100 WHERE id = 'rekishi';
UPDATE quizzes SET section = '地理', sort_order = 900 WHERE id = 'todofuken';
UPDATE quizzes SET section = '地理', sort_order = 910 WHERE id = 'kencho';
