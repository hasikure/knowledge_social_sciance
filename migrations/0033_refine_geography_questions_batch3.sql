-- 0033: 地理追加問題バッチ3の表現・別解を調整する。
-- 正本CSV: data/items_syakai-nihon-chiri.csv と data/items_syakai-sekai-chiri.csv。
-- 問題IDを維持し、既存の解答履歴を保持する。
UPDATE items SET label='原料の輸入や製品の輸出に便利なため、工業地域が多く集まる、海に面した地域を何というか。', extra_json='{"accept":["臨海","臨海地域","臨海工業地域"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-158';
UPDATE items SET label='輸出額から輸入額を引いた差額を示す収支を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-160';
UPDATE items SET label='東京の多摩丘陵や大阪の千里丘陵などで、都市計画にもとづいて開発された大規模な住宅都市を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-163';
UPDATE items SET extra_json='{"accept":["少子高齢社会"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-167';
UPDATE items SET label='二酸化炭素などの温室効果ガスの排出量から、森林などによる吸収量を差し引いて、全体として実質ゼロにする考え方を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-182';

UPDATE items SET extra_json='{"accept":["メガシティー","巨大都市"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-58';
UPDATE items SET extra_json='{"accept":["ボスフォラス海峡","ボスポラス","ボスフォラス"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-63';
UPDATE items SET label='オランダで、干拓によってつくられた低地を何というか。', extra_json='{"accept":["ポルダー地帯","干拓地"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-65';
UPDATE items SET extra_json='{"accept":["ルール地方","ルール工業地帯","ルール"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-66';
UPDATE items SET label='中南米の多くの国で公用語として使われている言語は何か。', answer='スペイン語', extra_json=NULL WHERE quiz_id='sekai-chiri' AND item_key='q-69';
