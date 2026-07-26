-- 0002: 出題文に紛れ込んだリテラルの \n を実際の改行に直す
--
-- 農水産ランキングの9問(nihon-chiri / category='nousuisan')で、問題文の改行が
-- バックスラッシュ+n の2文字としてDBに入っていた。表示側は textContent + CSS の
-- white-space: pre-wrap なので、実際の改行でないと折り返されず「\n」がそのまま
-- 画面に出てしまう。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0002_fix_literal_newlines.sql
-- 冪等: 既に実改行になっている行は replace が何もしないため、再実行しても安全。

UPDATE items
SET label = replace(label, '\n', char(10))
WHERE instr(label, '\n') > 0;
