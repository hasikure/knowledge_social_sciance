-- 0019: rounds に mode 列を足す（修了テスト）
--
-- 「マスター認定」への最後の関門として、そのクイズの全問(最大50問)を
-- 一度に解く修了テストを追加した。通常の10問ラウンドと区別する必要がある。
--
--   mode = 'exam'  修了テスト
--   mode が NULL   通常の10問ラウンド(この列を足す前の記録もすべてこれ)
--
-- 修了テストは1回が最大50問なので、自己ベスト(1ラウンド10点満点)と
-- 総合スコアの集計からは必ず外すこと。定着度・レベル・連続日数・統計には
-- 通常どおり含める(実際に解いた記録なので)。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0019_add_round_mode.sql
-- 冪等ではない: ALTER TABLE は2回目に "duplicate column name: mode" で失敗する。

ALTER TABLE rounds ADD COLUMN mode TEXT;
