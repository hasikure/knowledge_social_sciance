-- 理科クイズを一時的に通常の出題導線から外す。
-- quizzes/items/attempts のデータは削除せず、is_archived を戻せば再表示できる。
UPDATE quizzes
SET is_archived = 1
WHERE genre = 'rika' AND is_archived = 0;
