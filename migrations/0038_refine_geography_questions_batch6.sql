-- 0038: 第6弾の設問と既存問題の答え先出しを精査して修正する。
-- 正本CSV: data/items_syakai-nihon-chiri.csv / data/items_syakai-sekai-chiri.csv
UPDATE items
SET label = '東北地方の太平洋側で夏に吹く、冷たく湿った北東の風を何といいますか？'
WHERE quiz_id = 'nihon-chiri' AND item_key = 'q-05';

UPDATE items
SET label = 'ここは四国地方に位置し、瀬戸内海に面する。対岸には本州がある。都道府県の中で面積が最も小さく、降水量が少ないため農業用水を確保する施設が数多くつくられてきた。うどんの生産・消費量で全国的に知られる。これはどこの都道府県か。'
WHERE quiz_id = 'nihon-chiri' AND item_key = 'q-52';

UPDATE items
SET label = '東京・大阪・名古屋を中心に人口や産業が集まる三つの地域をまとめて何というか。'
WHERE quiz_id = 'nihon-chiri' AND item_key = 'q-121';

UPDATE items
SET label = '沿岸国が水産資源や海底資源を管理する権利を持つ、海岸から離れた水域を何というか。'
WHERE quiz_id = 'nihon-chiri' AND item_key = 'q-139';

UPDATE items
SET label = '農業や漁業など、自然から直接資源を得る産業を何というか。'
WHERE quiz_id = 'nihon-chiri' AND item_key = 'q-164';

UPDATE items
SET label = '北海に面し、フランス・ドイツ・オランダなどに囲まれた国はどこか。'
WHERE quiz_id = 'sekai-chiri' AND item_key = 'q-67';

UPDATE items
SET label = '将来の世代が必要とするものを損なうことなく、現在の世代の必要も満たすように行う開発の考え方を何というか。'
WHERE quiz_id = 'sekai-chiri' AND item_key = 'q-125';
