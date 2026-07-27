-- 0005: 歴史クイズに文化史・人物を追加
--
-- 0004 の63問に対し、文化史(古代〜近代の文学・美術・宗教・学問)と人物を追加する。
-- 年号は 陸奥宗光(1894)・小村寿太郎(1911)・民撰議院設立の建白書(1874)・
-- 大日本沿海輿地全図(1821) などを一次情報にあたって確認済み。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0005_add_rekishi_bunka.sql
-- 冪等: OR IGNORE なので再実行しても安全。

INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kojiki', '古事記', '古事記', '古代', '{"hint":"712年にまとめられた、日本最古の歴史書","year":712}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonshoki', '日本書紀', '日本書紀', '古代', '{"hint":"720年にまとめられた、日本の正式な歴史書","year":720}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manyoshu', '万葉集', '万葉集', '古代', '{"hint":"奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpyo', '天平文化', '天平文化', '古代', '{"hint":"奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shosoin', '正倉院', '正倉院', '古代', '{"hint":"東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokufu', '国風文化', '国風文化', '古代', '{"hint":"遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genji', '源氏物語', '源氏物語', '古代', '{"hint":"光源氏を主人公とする、国風文化を代表する長編物語","person":"紫式部","achievement":"かな文字を用いて長編物語『源氏物語』を書いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'makura', '枕草子', '枕草子', '古代', '{"hint":"「春はあけぼの」で始まる、宮中の生活をつづった随筆","person":"清少納言","achievement":"宮中の生活を随筆『枕草子』につづった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokinshu', '古今和歌集', '古今和歌集', '古代', '{"hint":"紀貫之らが天皇の命令でまとめた、最初の勅撰和歌集","person":"紀貫之","achievement":"『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodo', '浄土信仰', '浄土信仰', '古代', '{"hint":"阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'saicho', '天台宗', '天台宗', '古代', '{"hint":"最澄が唐から伝え、比叡山延暦寺を中心に広まった仏教の宗派","person":"最澄","achievement":"唐にわたって天台宗を学び、比叡山に延暦寺を建てた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kukai', '真言宗', '真言宗', '古代', '{"hint":"空海が唐から伝え、高野山金剛峯寺を中心に広まった仏教の宗派","person":"空海","achievement":"唐にわたって真言宗を学び、高野山に金剛峯寺を建てた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ganjin', '唐招提寺', '唐招提寺', '古代', '{"hint":"何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺","person":"鑑真","achievement":"何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkokin', '新古今和歌集', '新古今和歌集', '中世', '{"hint":"鎌倉時代に後鳥羽上皇の命令でまとめられた歌集"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heike', '平家物語', '平家物語', '中世', '{"hint":"平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hojoki', '方丈記', '方丈記', '中世', '{"hint":"「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tsurezure', '徒然草', '徒然草', '中世', '{"hint":"「つれづれなるままに」で始まる、兼好法師の随筆"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kongorikishi', '金剛力士像', '金剛力士像', '中世', '{"hint":"運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshu', '浄土宗', '浄土宗', '中世', '{"hint":"「南無阿弥陀仏」と念仏を唱えれば救われると説いた、法然が開いた宗派","person":"法然","achievement":"念仏を唱えれば救われると説き、浄土宗を開いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshinshu', '浄土真宗', '浄土真宗', '中世', '{"hint":"自分の罪を自覚した悪人こそ救われると説いた、親鸞が開いた宗派","person":"親鸞","achievement":"法然の弟子で、浄土真宗を開いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichirenshu', '日蓮宗', '日蓮宗', '中世', '{"hint":"「南無妙法蓮華経」と題目を唱えることを説いた宗派","person":"日蓮","achievement":"題目を唱えることを説き、日蓮宗を開いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zen', '禅宗', '禅宗', '中世', '{"hint":"座禅によってさとりを開こうとする仏教。武士の気風に合い広まった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'noh', '能', '能', '中世', '{"hint":"足利義満の保護を受けた観阿弥・世阿弥の父子が大成した舞台芸能","person":"世阿弥","achievement":"父の観阿弥とともに能を大成した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'suibokuga', '水墨画', '水墨画', '中世', '{"hint":"墨の濃淡だけで自然をえがく絵画。室町時代に雪舟が日本独自の様式を完成させた","person":"雪舟","achievement":"明にわたって学び、日本の水墨画を大成した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shoin', '書院造', '書院造', '中世', '{"hint":"床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'momoyama', '桃山文化', '桃山文化', '近世', '{"hint":"安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wabicha', 'わび茶', 'わび茶', '近世', '{"hint":"簡素さの中に美を見いだす茶の湯。千利休が大成した","person":"千利休","achievement":"質素なわび茶を大成し、茶の湯を芸術の域に高めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genroku', '元禄文化', '元禄文化', '近世', '{"hint":"17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyozoshi', '浮世草子', '浮世草子', '近世', '{"hint":"町人の暮らしや欲望をありのままにえがいた小説。井原西鶴が代表","person":"井原西鶴","achievement":"『日本永代蔵』などの浮世草子で町人の生活をえがいた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haikai', '俳諧', '俳諧', '近世', '{"hint":"五・七・五の形式の文芸。松尾芭蕉が芸術性を高めた","person":"松尾芭蕉","achievement":"各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'joruri', '人形浄瑠璃', '人形浄瑠璃', '近世', '{"hint":"人形をあやつって物語を演じる芸能。近松門左衛門が脚本を書いた","person":"近松門左衛門","achievement":"『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kasei', '化政文化', '化政文化', '近世', '{"hint":"19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyoe', '浮世絵', '浮世絵', '近世', '{"hint":"町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hokusai', '富嶽三十六景', '富嶽三十六景', '近世', '{"hint":"葛飾北斎がえがいた、さまざまな場所からの富士山の風景画集","person":"葛飾北斎","achievement":"『富嶽三十六景』をえがき、風景版画で人気を集めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hiroshige', '東海道五十三次', '東海道五十三次', '近世', '{"hint":"歌川広重がえがいた、江戸から京都までの宿場の風景画集","person":"歌川広重","achievement":"『東海道五十三次』をえがいた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'rangaku', '蘭学', '蘭学', '近世', '{"hint":"オランダ語を通じてヨーロッパの学問や技術を学ぶ学問"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai', '解体新書', '解体新書', '近世', '{"hint":"1774年、オランダ語の人体解剖書を翻訳して出版された医学書","year":1774,"person":"杉田玄白","achievement":"前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokugaku', '国学', '国学', '近世', '{"hint":"仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問","person":"本居宣長","achievement":"『古事記伝』を著し、国学を大成した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou', '大日本沿海輿地全図', '大日本沿海輿地全図', '近世', '{"hint":"全国を測量してつくられた、日本で初めての正確な日本地図。1821年に完成した","year":1821,"person":"伊能忠敬","achievement":"全国を歩いて測量し、正確な日本地図のもとをつくった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'terakoya', '寺子屋', '寺子屋', '近世', '{"hint":"町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunmei', '文明開化', '文明開化', '近代', '{"hint":"明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakusei', '学制', '学制', '近代', '{"hint":"1872年に公布された、6歳以上の男女すべてを小学校に通わせることを目指した制度","year":1872}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakumon', '学問のすゝめ', '学問のすゝめ', '近代', '{"hint":"「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物","person":"福沢諭吉","achievement":"『学問のすゝめ』を著し、欧米の思想を広めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jiyuminken', '自由民権運動', '自由民権運動', '近代', '{"hint":"国民が政治に参加する権利を求め、国会の開設を要求した運動"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho', '民撰議院設立の建白書', '民撰議院設立の建白書', '近代', '{"hint":"1874年に政府に提出され、自由民権運動の出発点となった意見書","year":1874,"person":"板垣退助","achievement":"民撰議院設立の建白書を提出し、のちに自由党をつくった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto', '立憲改進党', '立憲改進党', '近代', '{"hint":"1882年に大隈重信がつくった、イギリス流の議会政治を目指した政党","year":1882,"person":"大隈重信","achievement":"立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikokugikai', '帝国議会', '帝国議会', '近代', '{"hint":"1890年に初めて開かれた議会。衆議院と貴族院の二院制だった","year":1890}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken', '領事裁判権の撤廃', '領事裁判権の撤廃', '近代', '{"hint":"1894年、外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した","year":1894,"person":"陸奥宗光","achievement":"1894年に領事裁判権の撤廃に成功した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei', '関税自主権の回復', '関税自主権の回復', '近代', '{"hint":"1911年、外務大臣が実現し、条約改正が完全に達成された","year":1911,"person":"小村寿太郎","achievement":"1911年に関税自主権の回復を実現し、条約改正を完成させた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yahata', '八幡製鉄所', '八幡製鉄所', '近代', '{"hint":"日清戦争の賠償金をもとに建設され、1901年に操業を始めた官営の製鉄所","year":1901}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kodo', '高度経済成長', '高度経済成長', '現代', '{"hint":"1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期"}');
