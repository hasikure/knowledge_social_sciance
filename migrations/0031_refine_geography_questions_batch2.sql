-- 0031: 地理追加問題バッチ2の答え漏れ・曖昧さを修正する。
-- 正本CSV: data/items_syakai-nihon-chiri.csv と data/items_syakai-sekai-chiri.csv。
UPDATE items SET label='日本の近海で、数日がかりで行われる漁業を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-134';
UPDATE items SET label='大型船で世界の海に出て、まぐろやかつおなどをとる漁業を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-135';
UPDATE items SET label='日帰りで、小型船や定置網などを使って行う漁業を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-136';
UPDATE items SET label='ビニールハウスや温室を使い、野菜や花を計画的に栽培する農業を何というか。', extra_json='{"accept":["施設園芸"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-144';
UPDATE items SET label='山地から平地に出た川が土砂を積もらせ、果樹園が広がる、水はけのよい地形を何というか。' WHERE quiz_id='nihon-chiri' AND item_key='q-145';
UPDATE items SET label='北海道を除く日本で、初夏に雨の日が長く続く季節を何というか。', extra_json='{"accept":["つゆ","ばいう"]}' WHERE quiz_id='nihon-chiri' AND item_key='q-157';

UPDATE items SET label='ヒンドゥー教徒が聖なる川として沐浴する、インド北部の大河は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-27';
UPDATE items SET label='中国北部を流れ、黄色い土砂を大量に運ぶことから名づけられた川は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-31';
UPDATE items SET extra_json='{"accept":["島しょ国","島嶼国","海洋国"]}' WHERE quiz_id='sekai-chiri' AND item_key='q-34';
UPDATE items SET label='スペリオル湖・ヒューロン湖などからなり、周辺にシカゴやデトロイトなどの工業都市がある湖群の総称は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-40';
UPDATE items SET label='アメリカ合衆国とカナダの国境付近にある湖群から大西洋へ流れる川は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-44';
UPDATE items SET label='中央ヨーロッパから東ヨーロッパへ流れ、黒海に注ぐ国際河川は何か。' WHERE quiz_id='sekai-chiri' AND item_key='q-48';
