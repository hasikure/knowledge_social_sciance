-- 0010: 別解の書き方を accept 列に統一する
--
-- 「飛騨山脈(北アルプス)」のように answer の括弧で別名を併記していた6項目を、
-- answer=飛騨山脈 / accept=北アルプス に分けた。括弧まで正確に打たないと不正解に
-- 見えてしまい、別解の表現も accept 列と二本立てになっていたため。
-- item_key と label も括弧なしに揃える(item_key は内部IDで、attempts は item_id で
-- 紐づいているため付け替えても履歴は壊れない)。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0010_unify_accept.sql
-- 冪等: UPDATE のみ。旧 item_key が無ければ何も起きない。

UPDATE items SET item_key = '飛騨山脈', label = '飛騨山脈', answer = '飛騨山脈', extra_json = '{"hint":"「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる","accept":["北アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '飛騨山脈(北アルプス)';
UPDATE items SET item_key = '木曽山脈', label = '木曽山脈', answer = '木曽山脈', extra_json = '{"hint":"日本アルプスの一つで、長野県に位置する","accept":["中央アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '木曽山脈(中央アルプス)';
UPDATE items SET item_key = '赤石山脈', label = '赤石山脈', answer = '赤石山脈', extra_json = '{"hint":"日本アルプスの一つで、山梨県・長野県・静岡県にまたがる","accept":["南アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '赤石山脈(南アルプス)';
UPDATE items SET item_key = '黒潮', label = '黒潮', answer = '黒潮', extra_json = '{"hint":"日本の太平洋側を流れる暖流","accept":["日本海流"]}' WHERE quiz_id = 'chikei' AND item_key = '黒潮(日本海流)';
UPDATE items SET item_key = '親潮', label = '親潮', answer = '親潮', extra_json = '{"hint":"三陸沖などを流れる寒流","accept":["千島海流"]}' WHERE quiz_id = 'chikei' AND item_key = '親潮(千島海流)';
UPDATE items SET item_key = 'ル・コルビュジエの建築作品', label = 'ル・コルビュジエの建築作品', answer = 'ル・コルビュジエの建築作品', extra_json = '{"hint":"フランス人建築家が設計した、上野にある美術館を含む国際的な建築群","prefectures":["東京都"],"year":2016,"accept":["国立西洋美術館"]}' WHERE quiz_id = 'sekai-isan' AND item_key = 'ル・コルビュジエの建築作品(国立西洋美術館)';
