-- 0035: 地理追加問題バッチ4の曖昧さ、答え漏れ、範囲を調整する。
-- 正本CSV: data/items_syakai-nihon-chiri.csv と data/items_syakai-sekai-chiri.csv。
-- 問題IDは維持し、既存の解答履歴を保持する。
UPDATE items SET label='通勤・通学で人が集まるため、東京の都心部などでは居住者数より多くなる、昼の時間帯のその地域にいる人口を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-183';
UPDATE items SET label='大量の冷却水が得られ、安全面から人口の少ない海岸沿いに建設される発電方法は何か。' WHERE quiz_id='nihon-chiri' AND item_key='q-192';
UPDATE items SET label='三重県の英虞湾などで真珠養殖に使われる代表的な貝は何か。', answer='アコヤガイ', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-201';
UPDATE items SET label='冬の季節風が山地にぶつかって雪を降らせるため、降雪量が多くなる日本の地域の気候を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-203';
UPDATE items SET label='国どうしの貿易で、輸出入の不均衡などをめぐって対立が生じることを何というか。', answer='貿易摩擦', category='貿易', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-206';
UPDATE items SET label='工場を建てる場所を選ぶ際に考慮する、原料・労働力・交通・市場などの条件を何というか。', answer='立地条件' WHERE quiz_id='nihon-chiri' AND item_key='q-207';

UPDATE items SET label='アルゼンチンなど南米南東部で盛んな牧畜で、多く生産・輸出される食肉は何か。', answer='牛肉', extra_json=NULL WHERE quiz_id='sekai-chiri' AND item_key='q-78';
UPDATE items SET label='首都ダッカ周辺に縫製工場が多く、衣類を世界各地へ輸出している南アジアの国はどこか。' WHERE quiz_id='sekai-chiri' AND item_key='q-80';
UPDATE items SET extra_json='{"accept":["情報産業","ICT産業","ICT","情報通信産業","ソフトウェア産業"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-81';
UPDATE items SET label='ギニア湾に面し、首都をアクラに置く、カカオ豆の輸出が多い国はどこか。' WHERE quiz_id='sekai-chiri' AND item_key='q-83';
UPDATE items SET label='ロシアから西ヨーロッパへ、パイプラインで多く送られる気体の化石燃料は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-87';
UPDATE items SET extra_json='{"accept":["パームオイル"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-88';
UPDATE items SET label='フォルクスワーゲンやBMWなどの企業が本拠を置く、ドイツの代表的な工業は何か。', extra_json='{"accept":["自動車産業"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-92';
UPDATE items SET label='スイスで、時計や光学機器などの製造を中心に発達した工業は何か。', extra_json='{"accept":["精密機械","精密工業"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-93';
UPDATE items SET label='オランダでチューリップなどの花を温室で栽培する農業を何というか。', answer='園芸農業', extra_json='{"accept":["施設園芸","施設園芸農業"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-94';
UPDATE items SET extra_json='{"accept":["ゴム"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-96';
