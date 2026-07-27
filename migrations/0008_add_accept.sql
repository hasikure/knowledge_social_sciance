-- 0008: 表記ゆれ対策(accept)と、廃止された地図記号への注記
--
-- 精査レポートの指摘への対応。CSVに accept 列を新設し、項目ごとの別解を
-- extra_json.accept として持たせた。判定側(assets/quiz.js)は accept に加えて
-- カナ⇄かな・全角半角・接尾辞(県/市など)の有無・長音や中黒の違いを吸収する。
--
-- あわせて、2013年の図式改訂で廃止された「桑畑」「工場」のヒントに注記を入れた。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0008_add_accept.sql
-- 冪等: UPDATE のみなので再実行しても安全。

UPDATE items SET extra_json = '{"hint":"仏教に由来する印をかたどっている","accept":["寺","お寺"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'jiin';
UPDATE items SET extra_json = '{"hint":"「文」の字をかたどっている","accept":["小中学校","小学校・中学校","小学校","中学校"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'shochugakko';
UPDATE items SET extra_json = '{"hint":"「文」の字を丸で囲んでいる","accept":["高校"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kotogakko';
UPDATE items SET extra_json = '{"hint":"機械の歯車をかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kojo';
UPDATE items SET extra_json = '{"hint":"桑の木の枝ぶりをかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kuwabatake';
UPDATE items SET extra_json = '{"accept":["沖の鳥島"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nan-tan';
UPDATE items SET extra_json = '{"accept":["リアス式海岸","リアス"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'rias-kaigan';
UPDATE items SET extra_json = '{"accept":["関東ローム"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'kanto-loam';
UPDATE items SET extra_json = '{"accept":["瀬戸内気候","瀬戸内式気候"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'setouchi';
UPDATE items SET extra_json = '{"accept":["カルスト"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'karst';
UPDATE items SET extra_json = '{"hint":"604年、役人の心構えを示すために定められたきまり","year":604,"person":"聖徳太子","achievement":"十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した","accept":["十七条憲法"]}' WHERE quiz_id = 'rekishi' AND item_key = 'jushichijo';
UPDATE items SET extra_json = '{"hint":"752年に開眼供養が行われた、仏教の力で国を守ろうとしてつくられた大仏","year":752,"person":"聖武天皇","achievement":"仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた","accept":["大仏","奈良の大仏","盧舎那仏"]}' WHERE quiz_id = 'rekishi' AND item_key = 'todaiji';
UPDATE items SET extra_json = '{"hint":"894年、唐のおとろえと航海の危険を理由に取りやめられた","year":894,"person":"菅原道真","achievement":"894年、遣唐使の停止を提案した","accept":["遣唐使の廃止","遣唐使廃止","遣唐使停止","遣唐使の中止"]}' WHERE quiz_id = 'rekishi' AND item_key = 'kentoshi-teishi';
UPDATE items SET extra_json = '{"hint":"葛飾北斎がえがいた、さまざまな場所からの富士山の風景画集","person":"葛飾北斎","achievement":"『富嶽三十六景』をえがき、風景版画で人気を集めた","accept":["富岳三十六景"]}' WHERE quiz_id = 'rekishi' AND item_key = 'hokusai';
UPDATE items SET extra_json = '{"hint":"全国を測量してつくられた、日本で初めての正確な日本地図。1821年に完成した","year":1821,"person":"伊能忠敬","achievement":"全国を歩いて測量し、正確な日本地図のもとをつくった","accept":["伊能図"]}' WHERE quiz_id = 'rekishi' AND item_key = 'inou';
UPDATE items SET extra_json = '{"hint":"1894年、外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した","year":1894,"person":"陸奥宗光","achievement":"1894年に領事裁判権の撤廃に成功した","accept":["治外法権の撤廃","治外法権撤廃","領事裁判権撤廃","領事裁判権の廃止","治外法権の廃止"]}' WHERE quiz_id = 'rekishi' AND item_key = 'ryojisaibanken';
UPDATE items SET extra_json = '{"hint":"1911年、外務大臣が実現し、条約改正が完全に達成された","year":1911,"person":"小村寿太郎","achievement":"1911年に関税自主権の回復を実現し、条約改正を完成させた","accept":["関税自主権回復","関税自主権の完全回復"]}' WHERE quiz_id = 'rekishi' AND item_key = 'kanzei';
UPDATE items SET extra_json = '{"hint":"室町時代、農民が寄合を開いて村のきまりを定めた自治組織","accept":["惣村"]}' WHERE quiz_id = 'rekishi' AND item_key = 'so-mura';
UPDATE items SET extra_json = '{"hint":"室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆","accept":["徳政一揆"]}' WHERE quiz_id = 'rekishi' AND item_key = 'tsuchiikki';
UPDATE items SET extra_json = '{"hint":"大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる","accept":["大仙陵古墳","仁徳天皇陵古墳","仁徳天皇陵","大山古墳"]}' WHERE quiz_id = 'rekishi' AND item_key = 'daisen';
UPDATE items SET extra_json = '{"hint":"3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権","accept":["大和朝廷","ヤマト政権","ヤマト王権","大和王権"]}' WHERE quiz_id = 'rekishi' AND item_key = 'yamato';
UPDATE items SET extra_json = '{"hint":"徳川綱吉が出した、犬をはじめ生き物を大切にすることを命じた極端な法令","person":"徳川綱吉","achievement":"生類憐みの令を出し、学問を重んじる政治を行った","accept":["生類憐れみの令","生類あわれみの令"]}' WHERE quiz_id = 'rekishi' AND item_key = 'shorui';
UPDATE items SET extra_json = '{"hint":"1837年、ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱","year":1837,"accept":["大塩の乱"]}' WHERE quiz_id = 'rekishi' AND item_key = 'oshio';
UPDATE items SET extra_json = '{"hint":"1825年、日本に近づく外国船を追い払うことを命じた幕府の法令","year":1825,"accept":["外国船打払令","無二念打払令"]}' WHERE quiz_id = 'rekishi' AND item_key = 'uchiharai';
UPDATE items SET extra_json = '{"hint":"作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう","accept":["マニュファクチュア"]}' WHERE quiz_id = 'rekishi' AND item_key = 'manufacture';
UPDATE items SET extra_json = '{"hint":"1918年、原敬が首相となって成立した、日本で初めての本格的なもの","year":1918,"person":"原敬","achievement":"1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた","accept":["本格的な政党内閣","原敬内閣"]}' WHERE quiz_id = 'rekishi' AND item_key = 'seitonaikaku';
UPDATE items SET extra_json = '{"hint":"1933年、満州国を認められなかった日本が通告した","year":1933,"accept":["国際連盟脱退","連盟脱退"]}' WHERE quiz_id = 'rekishi' AND item_key = 'renmei-dattai';
UPDATE items SET extra_json = '{"hint":"フランス人建築家が設計した、上野にある美術館を含む国際的な建築群","prefectures":["東京都"],"year":2016,"accept":["国立西洋美術館"]}' WHERE quiz_id = 'sekai-isan' AND item_key = 'ル・コルビュジエの建築作品(国立西洋美術館)';
UPDATE items SET extra_json = '{"hint":"女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産","prefectures":["福岡県"],"year":2017,"accept":["宗像・沖ノ島","神宿る島 宗像・沖ノ島と関連遺産群"]}' WHERE quiz_id = 'sekai-isan' AND item_key = '「神宿る島」宗像・沖ノ島と関連遺産群';
UPDATE items SET extra_json = '{"hint":"アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々","prefectures":["鹿児島県","沖縄県"],"year":2021,"accept":["奄美・沖縄","奄美大島と沖縄島","奄美大島"]}' WHERE quiz_id = 'sekai-isan' AND item_key = '奄美大島、徳之島、沖縄島北部及び西表島';
