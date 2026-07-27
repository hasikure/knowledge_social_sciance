-- 0015: rounds に role 列を足す
--
-- 先生が動作確認でクイズを1ラウンド回すと、それが生徒の習熟度・連続プレイ日数・
-- レベル・統計にそのまま入ってしまっていた。誰のプレイかを記録して、生徒の
-- 記録からは先生の分を外す。
--
-- 既存の行は role が NULL になる。NULL は「この列が無かった頃の記録」=生徒の
-- ものとして扱う(問い合わせ側は COALESCE(role,'student') で判定する)。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0015_add_round_role.sql
-- 冪等ではない: ALTER TABLE は2回目に "duplicate column name: role" で失敗する。
--               既に role 列があるなら実行しなくてよい。

ALTER TABLE rounds ADD COLUMN role TEXT;
