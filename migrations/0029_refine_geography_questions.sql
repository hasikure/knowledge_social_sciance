-- 0029: 地理追加問題の曖昧さ・重複・答えのヒント漏れを修正する。
-- 正本CSV: data/items_syakai-nihon-chiri.csv と data/items_syakai-sekai-chiri.csv。
UPDATE items SET label='冬に日本海側へ雪をもたらす季節風は、主にどの方角から吹くか。', answer='北西', category='気候', extra_json='{"accept":["北西の風","北西季節風"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-108';
UPDATE items SET label='冬に関東地方（特に群馬県など）で吹く、山を越えて乾燥した風を何というか。', answer='からっ風', category='気候', extra_json='{"accept":["空っ風","からっかぜ"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-109';
UPDATE items SET label='冬に流氷が沿岸に接岸することでも知られる、北海道北東部に面した海は何か。', answer='オホーツク海', category='地域・自然', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-110';
UPDATE items SET label='沖縄県など南西諸島に見られる気候区分を何というか。', answer='南西諸島の気候', category='気候', extra_json='{"accept":["亜熱帯","亜熱帯気候","亜熱帯の気候","南西諸島"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-111';
UPDATE items SET label='大都市の近くで、野菜や花などを新鮮なうちに出荷する農業を何というか。', answer='近郊農業', category='農業', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-113';
UPDATE items SET label='十勝平野などで、小麦・じゃがいも・てんさいなどを輪作で栽培する農業を何というか。', answer='畑作', category='農業', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-114';
UPDATE items SET extra_json='{"accept":["北九州工業地帯"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-119';
UPDATE items SET label='都心の人口が再び増加し、中心部に人々が戻ってくる現象を何というか。', answer='都心回帰', category='人口・都市', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-123';
UPDATE items SET label='人口や産業が大都市に過度に集まることで、住宅不足や交通渋滞などが起こる問題を何というか。', answer='過密', category='人口・都市', extra_json='{"accept":["過密化"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-125';
UPDATE items SET label='根釧台地などで盛んな、乳牛を飼育して牛乳や乳製品を生産する農業を何というか。', answer='酪農', category='農業', extra_json=NULL WHERE quiz_id='nihon-chiri' AND item_key='q-130';
UPDATE items SET extra_json='{"accept":["米","米作り","米づくり","水田農業"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-131';
UPDATE items SET label='沖縄県の沿岸に発達し、多様な海の生物のすみかにもなる地形を何というか。', answer='サンゴ礁', category='自然・地形', extra_json='{"accept":["珊瑚礁"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-132';

UPDATE items SET label='地球上で東西に引かれ、緯度を示す線を何というか。' WHERE quiz_id='sekai-chiri' AND item_key='q-05';
UPDATE items SET label='赤道付近に広がり、一年中高温で、毎日のようにスコールが降る気候を何というか。' WHERE quiz_id='sekai-chiri' AND item_key='q-08';
UPDATE items SET label='南アジアや東南アジアで広く栽培されている、アジアの主食作物は何か。', extra_json='{"accept":["稲","稲作","こめ"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-13';
UPDATE items SET label='アフリカ大陸北部の乾燥地域の南縁に広がり、砂漠化が問題となっている半乾燥地域を何というか。' WHERE quiz_id='sekai-chiri' AND item_key='q-16';
UPDATE items SET extra_json='{"accept":["ライン"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-18';
UPDATE items SET extra_json='{"accept":["グレートプレーンズ","グレート・プレーンズ"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-19';
UPDATE items SET label='世界最大の流域面積をもち、流域に熱帯雨林（セルバ）が広がる川は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-22';
UPDATE items SET label='オーストラリアの先住民を何というか。', answer='アボリジニ', category='世界の地域', extra_json='{"accept":["アボリジナル"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-24';
UPDATE items SET label='オーストラリア西部のピルバラ地方で多く産出され、日本にも輸出される資源は何か。', answer='鉄鉱石', category='資源・産業', extra_json='{"accept":["鉄鉱石資源"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-25';
