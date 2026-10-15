-- 0024: 2026-10-15 精査に基づき、歴史50問のうち既存問題の文面・別解を修正。
-- items.id を維持する UPDATE のみ。attempts と回答履歴は変更しない。
-- 本番適用前に内容を確認すること。

UPDATE items SET label = '縄文時代などに石器の材料として使われた、黒く光る火山岩を何というか。'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-23';
UPDATE items SET label = '縄文時代より前で、狩りや採集を中心に生活していた時代を何というか。'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-20';
UPDATE items SET label = '弥生時代に、敵の侵入を防ぐため周囲を堀や柵で囲んだ集落を何というか。',
  extra_json = '{"accept":["環壕集落"]}'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-24';
UPDATE items SET label = '弥生時代に農具・工具・武器などに使われた金属器を何というか。'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-25';
UPDATE items SET label = '3世紀ごろの中国の歴史書で、邪馬台国や卑弥呼について記している部分は何か。',
  extra_json = '{"accept":["魏書倭人伝","『魏志』倭人伝"]}'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-26';
UPDATE items SET extra_json = '{"accept":["おおきみ","大王（おおきみ）"]}'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-27';
UPDATE items SET extra_json = '{"accept":["石ぼうちょう","石庖丁"]}'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-28';
UPDATE items SET label = '弥生時代に稲作が広まると、人々の間にどのような差が生まれたか。',
  answer = '貧富の差', extra_json = '{"accept":["身分の差","貧富や身分の差"]}'
WHERE quiz_id = 'rekishi-genshi' AND item_key = 'q-29';

UPDATE items SET label = '天智天皇が都を移した宮は何か。'
WHERE quiz_id = 'rekishi-asuka' AND item_key = 'q-27';
UPDATE items SET label = '大宰府の近くに築かれた、堤と濠からなる防御施設は何か。',
  extra_json = '{"accept":["みずき"]}'
WHERE quiz_id = 'rekishi-asuka' AND item_key = 'q-33';

UPDATE items SET label = '新しく開墾した土地を三代に限って私有できるとした法は何か。'
WHERE quiz_id = 'rekishi-nara' AND item_key = 'q-17';
UPDATE items SET label = '聖武天皇が全国に国分寺と国分尼寺を置くよう命じたものは何か。'
WHERE quiz_id = 'rekishi-nara' AND item_key = 'q-19';
UPDATE items SET extra_json = '{"accept":["安倍仲麻呂","阿倍仲麿"]}'
WHERE quiz_id = 'rekishi-nara' AND item_key = 'q-22';
UPDATE items SET label = '孝謙上皇側と対立した貴族が、764年に起こした反乱を何というか。'
WHERE quiz_id = 'rekishi-nara' AND item_key = 'q-26';

UPDATE items SET label = '平城京の次に桓武天皇が置いた都は何か。'
WHERE quiz_id = 'rekishi-heian' AND item_key = 'q-31';
UPDATE items SET label = '東北地方を中心に暮らしていた人々を当時何と呼んだか。',
  extra_json = '{"accept":["えみし","夷"]}'
WHERE quiz_id = 'rekishi-heian' AND item_key = 'q-33';
UPDATE items SET label = '平将門の乱とほぼ同じころ、瀬戸内海で海賊を率いて起こった反乱を何というか。'
WHERE quiz_id = 'rekishi-heian' AND item_key = 'q-35';
UPDATE items SET label = '平安時代、地方で同族や主従関係をもとに形成された武士の集団を何というか。'
WHERE quiz_id = 'rekishi-heian' AND item_key = 'q-37';
UPDATE items SET label = '保元の乱の後、平清盛と源義朝が争い、清盛が勝利した戦いを何というか。'
WHERE quiz_id = 'rekishi-heian' AND item_key = 'q-38';

UPDATE items SET label = '豊臣秀吉が朝鮮に大軍を送り、1592年に始まった最初の戦いを何というか。'
WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'q-17';
UPDATE items SET label = '豊臣秀吉が朝鮮に再び大軍を送り、1597年に始まった二度目の戦いを何というか。'
WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'q-19';
UPDATE items SET label = '豊臣秀吉が宣教師に国外退去を命じたものを何というか。'
WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'q-21';
UPDATE items SET label = 'ポルトガル人・スペイン人との貿易を通じて伝わったパン・カステラ・活版印刷などの文化を何というか。'
WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'q-23';
UPDATE items SET label = '豊臣秀吉が石山本願寺の跡地に築き、天下統一の拠点とした城は何か。',
  answer = '大坂城', extra_json = '{"accept":["大阪城"]}'
WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'q-24';
