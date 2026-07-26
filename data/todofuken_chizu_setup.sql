-- 都道府県(地図)クイズを一覧に表示するための登録。
-- data/todofuken_chizu_items.csv の47件をitemsに投入した後、これも実行すること。
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived)
VALUES ('todofuken-chizu', '都道府県(地図)', 'syakai', 'syakai/todofuken-chizu/', 10, 0);
