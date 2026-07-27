-- 0006: 歴史クイズに制度・用語 / 世界史との関連 / 戦後 を追加
--
-- 0004(63問) + 0005(51問) に対する第3弾。
--   制度・用語: 班田収授法・租調庸・守護と地頭・惣・座・楽市楽座・五人組 など
--   世界史との関連: ルネサンス・宗教改革・産業革命・フランス革命・辛亥革命 など
--   戦後: 農地改革・財閥解体・冷戦・朝鮮戦争・石油危機 など
--
-- あわせて、人物名がラベルの3項目(平清盛・源頼朝・コロンブス)から year を外した。
-- 「『源頼朝』は西暦何年のことか」という不自然な出題になっていたため。
-- 年の情報はヒント文に残っているので、学習内容は変わらない。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0006_add_rekishi_seido.sql

INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'handen', '班田収授法', '班田収授法', '古代', '{"hint":"6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kubunden', '口分田', '口分田', '古代', '{"hint":"班田収授法によって人々に分け与えられた土地"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'so', '租', '租', '古代', '{"hint":"律令制の税のうち、収穫した稲の約3%を納めるもの"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'cho', '調', '調', '古代', '{"hint":"律令制の税のうち、絹や糸、地方の特産物を都に納めるもの"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yo', '庸', '庸', '古代', '{"hint":"律令制の税のうち、都での労役の代わりに布を納めるもの"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sakimori', '防人', '防人', '古代', '{"hint":"律令制のもとで、九州北部の防備にあたらされた兵士"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokushi', '国司', '国司', '古代', '{"hint":"地方の国を治めるために、中央から派遣された役人"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shoen', '荘園', '荘園', '古代', '{"hint":"貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shugo', '守護', '守護', '中世', '{"hint":"源頼朝が国ごとに置いた、軍事・警察の仕事をする役職"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jito', '地頭', '地頭', '中世', '{"hint":"源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shikken', '執権', '執権', '中世', '{"hint":"鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goonhoko', '御恩と奉公', '御恩と奉公', '中世', '{"hint":"将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gokenin', '御家人', '御家人', '中世', '{"hint":"将軍と主従関係を結んだ武士"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'so-mura', '惣', '惣', '中世', '{"hint":"室町時代、農民が寄合を開いて村のきまりを定めた自治組織"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'za', '座', '座', '中世', '{"hint":"商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tsuchiikki', '土一揆', '土一揆', '中世', '{"hint":"室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gekokujo', '下剋上', '下剋上', '中世', '{"hint":"地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunkokuho', '分国法', '分国法', '中世', '{"hint":"戦国大名が領国を治めるために独自に定めたきまり"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'rakuichi', '楽市・楽座', '楽市・楽座', '近世', '{"hint":"織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heino', '兵農分離', '兵農分離', '近世', '{"hint":"検地と刀狩によって、武士と農民の身分がはっきり分けられたこと"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goningumi', '五人組', '五人組', '近世', '{"hint":"近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tozama', '外様大名', '外様大名', '近世', '{"hint":"関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dejima', '出島', '出島', '近世', '{"hint":"鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shuinsen', '朱印船貿易', '朱印船貿易', '近世', '{"hint":"江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kurayashiki', '蔵屋敷', '蔵屋敷', '近世', '{"hint":"諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kabunakama', '株仲間', '株仲間', '近世', '{"hint":"幕府や藩に公認され、営業を独占した商工業者の同業組合"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchikowashi', '打ちこわし', '打ちこわし', '近世', '{"hint":"ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fukoku', '富国強兵', '富国強兵', '近代', '{"hint":"欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shokusan', '殖産興業', '殖産興業', '近代', '{"hint":"官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hanseki', '版籍奉還', '版籍奉還', '近代', '{"hint":"1869年、大名が治めていた土地と人民を天皇に返させた政策","year":1869}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chohei', '徴兵令', '徴兵令', '近代', '{"hint":"1873年、満20歳以上の男子に兵役の義務を課した法令","year":1873}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tomioka', '富岡製糸場', '富岡製糸場', '近代', '{"hint":"殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan', '西南戦争', '西南戦争', '近代', '{"hint":"1877年、政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱","year":1877,"person":"西郷隆盛","achievement":"明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimonoseki', '下関条約', '下関条約', '近代', '{"hint":"1895年に結ばれた日清戦争の講和条約。遼東半島や台湾を得た","year":1895}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangoku', '三国干渉', '三国干渉', '近代', '{"hint":"1895年、ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事","year":1895}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'portsmouth', 'ポーツマス条約', 'ポーツマス条約', '近代', '{"hint":"1905年に結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった","year":1905}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renaissance', 'ルネサンス', 'ルネサンス', '中世', '{"hint":"14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukyokaikaku', '宗教改革', '宗教改革', '中世', '{"hint":"16世紀、免罪符を売る教会を批判してルターらが始めた改革","person":"ルター","achievement":"免罪符を売る教会を批判し、宗教改革を始めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'columbus', 'コロンブス', 'コロンブス', '中世', '{"hint":"1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物","person":"コロンブス","achievement":"1492年に大西洋を横断し、アメリカ大陸付近の島に到達した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'magellan', 'マゼラン', 'マゼラン', '中世', '{"hint":"その船隊が初めて世界一周を成しとげた人物"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'meiyo', '名誉革命', '名誉革命', '近世', '{"hint":"1688年、イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた","year":1688}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dokuritsu', 'アメリカ独立宣言', 'アメリカ独立宣言', '近世', '{"hint":"1776年、イギリスからの独立にあたって出された、自由と平等をうたった宣言","year":1776}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'furansu', 'フランス革命', 'フランス革命', '近世', '{"hint":"1789年に始まり、自由・平等・国民主権をうたう人権宣言が出された革命","year":1789}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangyokakumei', '産業革命', '産業革命', '近世', '{"hint":"18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ahen', 'アヘン戦争', 'アヘン戦争', '近代', '{"hint":"1840年に始まったイギリスと清の戦争。清が敗れ、日本の対外政策にも影響した","year":1840}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku', '南北戦争', '南北戦争', '近代', '{"hint":"1861年に始まったアメリカの内戦。奴隷制をめぐって国内が二分された","year":1861,"person":"リンカン","achievement":"南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai', '辛亥革命', '辛亥革命', '近代', '{"hint":"1911年に起こり、清をたおして翌年に中華民国が成立した革命","year":1911,"person":"孫文","achievement":"三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'roshia', 'ロシア革命', 'ロシア革命', '近代', '{"hint":"1917年に起こり、世界で初めての社会主義国が生まれるきっかけとなった革命","year":1917}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokusairenmei', '国際連盟', '国際連盟', '近代', '{"hint":"1920年、第一次世界大戦の反省から世界平和のためにつくられた国際組織","year":1920}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dainiji', '第二次世界大戦', '第二次世界大戦', '近代', '{"hint":"1939年、ドイツのポーランド侵攻によって始まった世界的な戦争","year":1939}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nochikaikaku', '農地改革', '農地改革', '現代', '{"hint":"戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zaibatsu', '財閥解体', '財閥解体', '現代', '{"hint":"戦後、経済を支配していた大きな企業グループを解散させた改革"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'reisen', '冷戦', '冷戦', '現代', '{"hint":"戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chosen', '朝鮮戦争', '朝鮮戦争', '現代', '{"hint":"1950年に始まった戦争。日本は物資の生産で好景気となった","year":1950}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisso', '日ソ共同宣言', '日ソ共同宣言', '現代', '{"hint":"1956年、ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言","year":1956}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekiyu', '石油危機', '石油危機', '現代', '{"hint":"1973年、中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事","year":1973}');

-- 人物ラベルの項目から year を取り除く(extra_json を入れ替える)
UPDATE items SET extra_json = '{"hint":"1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物","person":"平清盛","achievement":"武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った"}' WHERE quiz_id = 'rekishi' AND item_key = 'dajodaijin-kiyomori';
UPDATE items SET extra_json = '{"hint":"1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物","person":"源頼朝","achievement":"守護・地頭を置き、鎌倉に幕府を開いた"}' WHERE quiz_id = 'rekishi' AND item_key = 'seiitaishogun';
UPDATE items SET extra_json = '{"hint":"1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物","person":"コロンブス","achievement":"1492年に大西洋を横断し、アメリカ大陸付近の島に到達した"}' WHERE quiz_id = 'rekishi' AND item_key = 'columbus';
