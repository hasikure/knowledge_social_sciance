-- 0018: 問題文に埋まっていた答えを取り除く
--
-- 1行=1問にして「語句」「年代」「人物」を別々に追えるようにしたのに、
-- 語句問題の説明が年代と人物を書いてしまっていた。
--   ・年代問題120件すべてで、答えの西暦が対になる語句問題の文中にあった
--   ・人物問題25件で、答えの人物名が対になる語句問題の文中にあった
--   ・日本国憲法の説明が三原則を列挙していた(三原則はそれぞれ独立した問題になった)
--
-- 西暦を外すと主語が消える文が32件あったので、そこは書き直した。
-- 説明だけで事物が特定できること・同じクイズ内で説明が重複しないことは検査済み。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0018_remove_leaked_answers.sql
-- 冪等: UPDATE のみ。

-- 歴史の語句・人物問題 312件
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「役人の心構えを示すために定められたきまり」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'jushichijo';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'jushichijo-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「家柄によらず能力のある人を役人に取り立てるために定められた制度」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'kaniijunikai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「中国の進んだ制度や文化を学ぶために隋へ派遣された使節」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'kenzuishi';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「607年、遣隋使として隋にわたった」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'kenzuishi-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「蘇我氏を倒して始まった、天皇中心の国づくりを目指す政治改革」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'taika';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「中臣鎌足とともに蘇我氏を倒し、大化の改新を進めた」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'taika-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'jinshin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良盆地南部につくられた、日本で初めての本格的な都」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'fujiwarakyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「唐の律令にならってつくられた、律と令からなる国の基本法典」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'taihoritsuryo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'handen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「班田収授法によって人々に分け与えられた土地」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'kubunden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、収穫した稲の約3%を納めるもの」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'so';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、絹や糸、地方の特産物を都に納めるもの」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'cho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、都での労役の代わりに布を納めるもの」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'yo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制のもとで、九州北部の防備にあたらされた兵士」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'sakimori';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地方の国を治めるために、中央から派遣された役人」' WHERE quiz_id = 'rekishi-asuka' AND item_key = 'kokushi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「織田信長が今川義元を破った戦い」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'okehazama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「織田・徳川の連合軍が鉄砲を大量に使って武田軍を破った戦い」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'nagashino';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「楽市・楽座や関所の廃止を行い、長篠の戦いで鉄砲を活用した」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'nagashino-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「明智光秀にそむかれて織田信長が自害した事件」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'honnoji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「全国の田畑の面積と収穫高を調べ、年貢を確実に取るために行われた土地の調査」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'kenchi';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「太閤検地と刀狩を行い、兵農分離を進めて全国を統一した」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'kenchi-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「百姓から武器を取り上げ、一揆を防ぐために行われた政策」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'katanagari';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'rakuichi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「検地と刀狩によって、武士と農民の身分がはっきり分けられたこと」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'heino';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'momoyama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「簡素さの中に美を見いだす茶の湯。安土桃山時代に大成された」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'wabicha';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「質素なわび茶を大成し、茶の湯を芸術の域に高めた」' WHERE quiz_id = 'rekishi-azuchi' AND item_key = 'wabicha-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「イギリスと清の間で起こった戦争。清が敗れ、日本の対外政策にも影響した」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'ahen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「4隻の軍艦を率いて浦賀に来航し、日本に開国を求めたアメリカの使節」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'perry';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1853年に浦賀に来航し、日本に開国を求めた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'perry-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「下田と函館の2港を開いて、日本が開国することになった条約」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'washin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「領事裁判権を認め、関税自主権がない不平等条約。日本が5港を開いた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'shukotsusho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「政権を朝廷に返した出来事。江戸幕府が終わった」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'taiseihokan';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1867年に大政奉還を行い、政権を朝廷に返した」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'taiseihokan-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「新政府が示した政治の基本方針」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'gokajo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大名が治めていた土地と人民を天皇に返させた政策」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'hanseki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「藩を廃止して県を置き、中央から府知事・県令を派遣した改革」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'haihan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「土地の価格の3%を現金で納めさせるようにした改革。政府の収入を安定させた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'chiso';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「満20歳以上の男子に兵役の義務を課した法令」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'chohei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'fukoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'shokusan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'tomioka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日清戦争の賠償金をもとに福岡県につくられ、鉄鋼の国産化を進めた官営工場」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'yahata';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'bunmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「明治政府が公布した、6歳以上の男女すべてを小学校に通わせることを目指した制度」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'gakusei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'gakumon';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『学問のすゝめ』を著し、欧米の思想を広めた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'gakumon-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'seinan';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'seinan-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「国民が政治に参加する権利を求め、国会の開設を要求した運動」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'jiyuminken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「政府に提出され、自由民権運動の出発点となった意見書」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kenpakusho';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「民撰議院設立の建白書を提出し、のちに自由党をつくった」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kenpakusho-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「イギリス流の議会政治を目指してつくられた政党」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kaishinto';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kaishinto-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「衆議院と貴族院の二院制で開かれた、明治時代の議会」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'teikokugikai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「天皇が国を治める仕組みを定めた憲法。ドイツの憲法を参考にした」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kenpo';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「初代内閣総理大臣となり、大日本帝国憲法の作成を進めた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kenpo-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮をめぐって起こった清との戦争。日本が勝ち、遼東半島や台湾を得た」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'nisshin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日清戦争の講和条約として結ばれ、遼東半島や台湾を得た条約」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'shimonoseki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'sangoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ロシアの南下に対抗するためイギリスと結んだ同盟」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'nichiei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「満州や韓国をめぐって起こったロシアとの戦争。講和したが賠償金は得られなかった」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'nichiro';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「アメリカの仲立ちで結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'portsmouth';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本が韓国を植民地とした出来事」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kankoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'ryojisaibanken';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1894年に領事裁判権の撤廃に成功した」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'ryojisaibanken-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「外務大臣が実現し、条約改正が完全に達成された」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kanzei';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1911年に関税自主権の回復を実現し、条約改正を完成させた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'kanzei-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奴隷制をめぐってアメリカ国内が二分された内戦」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'nanboku';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'nanboku-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「清をたおして、翌年に中華民国が成立した革命」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'shingai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした」' WHERE quiz_id = 'rekishi-bakumatsu-meiji' AND item_key = 'shingai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「目安箱の設置や公事方御定書の制定を行った、江戸幕府の改革」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kyoho';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「享保の改革を行い、目安箱を設置した」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kyoho-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'tanuma';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'tanuma-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ききんに備えて米をたくわえさせ、質素倹約を命じた江戸幕府の改革」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kansei';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「寛政の改革を行った」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kansei-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'tenmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「物価を下げようと商人の同業組合を解散させたが、2年余りで失敗した改革」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'tenpo';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「天保の改革を行い、株仲間を解散させた」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'tenpo-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'oshio';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本に近づく外国船を追い払うことを命じた幕府の法令」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'uchiharai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「幕府や藩に公認され、営業を独占した商工業者の同業組合」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kabunakama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'uchikowashi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'manufacture';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kasei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'ukiyoe';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「さまざまな場所から見た富士山をえがいた風景画集」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'hokusai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『富嶽三十六景』をえがき、風景版画で人気を集めた」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'hokusai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「江戸から京都までの宿場をえがいた風景画集」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'hiroshige';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『東海道五十三次』をえがいた」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'hiroshige-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「オランダ語を通じてヨーロッパの学問や技術を学ぶ学問」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'rangaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「オランダ語の人体解剖書を翻訳して出版された医学書」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kaitai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kaitai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kokugaku';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『古事記伝』を著し、国学を大成した」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'kokugaku-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「全国を測量してつくられた、正確な日本地図」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'inou';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「全国を歩いて測量し、正確な日本地図のもとをつくった」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'inou-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'terakoya';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'meiyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「イギリスからの独立にあたって出された、自由と平等をうたった宣言」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'dokuritsu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「自由・平等・国民主権をうたう人権宣言が出された、フランスの革命」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'furansu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化」' WHERE quiz_id = 'rekishi-edo-koki' AND item_key = 'sangyokakumei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「徳川家康が石田三成らを破り、天下の実権をにぎった戦い」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'sekigahara';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「徳川氏が江戸に開いた幕府。約260年続いた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'edobakufu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「関ヶ原の戦いに勝ち、江戸に幕府を開いた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'edobakufu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大名を統制するために幕府が定めたきまり」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'bukeshohatto';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「制度化された、大名が1年おきに江戸と領地を行き来するきまり」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'sankinkotai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「参勤交代を制度化し、鎖国を完成させた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'sankinkotai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'tozama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'goningumi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「重い年貢とキリスト教の弾圧に苦しむ人々が天草四郎を中心に起こした一揆」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'shimabara';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「貿易の相手と場所を幕府が厳しく制限した体制。長崎でオランダと中国のみ交易した」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'sakoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'dejima';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'shuinsen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「犬をはじめ生き物を大切にすることを命じた、極端な法令」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'shorui';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「生類憐みの令を出し、学問を重んじる政治を行った」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'shorui-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'shinden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'gonin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'kurayashiki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'genroku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町人の暮らしや欲望をありのままにえがいた小説」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'ukiyozoshi';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『日本永代蔵』などの浮世草子で町人の生活をえがいた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'ukiyozoshi-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「五・七・五の形式で自然や心情をよむ文芸」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'haikai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'haikai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「人形をあやつって物語を演じる、江戸時代の芸能」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'joruri';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた」' WHERE quiz_id = 'rekishi-edo-zenki' AND item_key = 'joruri-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本が受け入れて降伏することになった、連合国からの宣言」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'potsdam';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nochikaikaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、経済を支配していた大きな企業グループを解散させた改革」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'zaibatsu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「11月3日に公布され、翌年5月3日に施行された、日本の現在の憲法」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nihonkoku-kenpo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'reisen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮半島で起こった戦争。日本は物資の生産で好景気となった」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'chosen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「48か国と結ばれ、翌年日本が独立を回復した条約」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'sanfrancisco';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「サンフランシスコ平和条約と日米安全保障条約に調印した首相」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'sanfrancisco-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nisso';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1956年にソ連を訪れ、日ソ共同宣言に調印した首相」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nisso-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日ソ共同宣言によってソ連の反対がなくなり実現した」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kokuren';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1955年から約38年間続いた、自由民主党が与党であり続けた政治体制」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'gojugonen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kodo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「東京オリンピックに合わせて開通した高速鉄道」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'shinkansen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「アジアで初めて開かれた大会。東海道新幹線の開通など高度経済成長を象徴した」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'tokyo-olympic';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kogai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'sekiyu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「アメリカの統治下から日本に復帰した出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'okinawa';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「沖縄の返還を実現し、非核三原則を表明した首相」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'okinawa-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日中共同声明によって中国との国交が結ばれたこと」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nicchu-kokko';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1972年に中国を訪れ、日中共同声明に調印した首相」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nicchu-kokko-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'bubble';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、日本を占領して民主化を指令した、アメリカを中心とする連合国の組織」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'ghq';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「GHQの最高司令官として、日本の占領政策を指揮した」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'ghq-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「サンフランシスコ平和条約と同じ日に結ばれ、独立後もアメリカ軍が日本にとどまることを認めた条約」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'anpo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「選挙法改正で、満20歳以上の男女に認められた権利」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'josei-sanseiken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「東西ドイツを分けていた壁がこわされ、冷戦の終わりを象徴した出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'berlin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「アメリカとソ連の首脳が地中海の島で会談し、冷戦の終結を宣言した出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'malta';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「15の共和国に分かれて消滅した、東側陣営の中心だった国の出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'soren-kaitai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「毛沢東を主席として成立した、東側陣営に属する中国の国家」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'chuka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1947年に制定された、民主主義にもとづく教育の理念を定めた法律」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kyoiku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「二度の世界大戦への反省から、世界の平和を守るために発足した国際組織」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kokusairengo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮戦争のとき、アメリカ軍向けの物資の注文が増えたことで日本が好景気になったこと」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'tokuju';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮戦争をきっかけにGHQの指令でつくられた組織。のちの自衛隊のもと」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'keisatsu-yobitai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「警察予備隊・保安隊を経て発足した、日本の防衛にあたる組織」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'jieitai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「韓国を朝鮮半島唯一の政府と認め、国交を正常化した条約」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nikkan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日中国交正常化を受けて結ばれた、中国との友好を定めた条約」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'nicchu-heiwa';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「核兵器を「持たず、つくらず、持ちこませず」という、日本政府の方針」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'hikaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1973年に起こり、石油危機の引き金となった中東の戦争」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'chuto';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「公害から国民の健康を守るために制定された法律」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kogai-kihon';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「公害対策や自然保護を担当するために設置された国の役所。2001年に環境省となった」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kankyocho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「10年で国民の所得を2倍にすることを目標にかかげた政策」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'shotoku-baizo';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「所得倍増計画をかかげ、高度経済成長を進めた首相」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'shotoku-baizo-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地価や株価が急落してバブル経済が終わり、長い不況が始まった出来事」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'bubble-hokai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、国の政治のあり方を最終的に決める力が国民にあるとするもの」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kenpo-shuken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、人が生まれながらにもつ権利を侵してはならないとするもの」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kenpo-jinken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、戦争を放棄し戦力をもたないとするもの。第9条に定められている」' WHERE quiz_id = 'rekishi-gendai' AND item_key = 'kenpo-heiwa';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄目の文様がつけられた、厚手で黒っぽい土器」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'jomondoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地面を掘り下げ、柱を立てて屋根をかけた住まい」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'tateana';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'kaizuka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'dogu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'sannai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄文土器より薄手でかたく、かざりの少ない赤褐色の土器」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'yayoidoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大陸から九州北部に伝わり、弥生時代に各地へ広まった農業」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'inasaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'takayuka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「静岡県にある、水田の跡が見つかった弥生時代の遺跡」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'toro';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'yoshinogari';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「銅鐸や銅剣など、主に祭りの道具として使われた金属器」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'seidoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀ごろ、女王が治めていたとされる国。魏に使いを送り「親魏倭王」の称号を得た」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'himiko';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「魏に使いを送り、「親魏倭王」の称号と金印を授けられた」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'himiko-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀後半から各地につくられた、王や豪族の大きな墓」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'kofun';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「円形と四角形を組み合わせた、かぎ穴のような形をした古墳」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'zenpokoen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'daisen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'haniwa';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'yamato';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々」' WHERE quiz_id = 'rekishi-genshi' AND item_key = 'toraijin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「京都につくられ、以後約400年にわたって都となった」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'heiankyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「唐のおとろえと航海の危険を理由に取りやめられた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kentoshi-teishi';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「894年、遣唐使の停止を提案した」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kentoshi-teishi-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「藤原氏が娘を天皇のきさきにし、摂政・関白として実権をにぎった政治」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'sekkan';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「4人の娘を天皇のきさきにし、摂関政治の全盛期を築いた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'sekkan-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「藤原氏が宇治に建てた阿弥陀堂。浄土信仰を代表する建物」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'byodoin';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「宇治に平等院鳳凰堂を建てた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'byodoin-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kokufu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「光源氏を主人公とする、国風文化を代表する長編物語」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'genji';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「かな文字を用いて長編物語『源氏物語』を書いた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'genji-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「春はあけぼの」で始まる、宮中の生活をつづった随筆」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'makura';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「宮中の生活を随筆『枕草子』につづった」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'makura-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「天皇の命令でまとめられた、最初の勅撰和歌集」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kokinshu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kokinshu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'jodo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「唐から伝えられ、比叡山延暦寺を中心に広まった仏教の宗派」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'saicho';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「唐にわたって天台宗を学び、比叡山に延暦寺を建てた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'saicho-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「唐から伝えられ、高野山金剛峯寺を中心に広まった仏教の宗派」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kukai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「唐にわたって真言宗を学び、高野山に金剛峯寺を建てた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'kukai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'shoen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「天皇の位をゆずったあとも上皇として政治を動かす仕組み」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'insei';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「天皇の位をゆずったあとも上皇として政治を行う院政を始めた」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'insei-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'masakado';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された」' WHERE quiz_id = 'rekishi-heian' AND item_key = 'hogen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'dajodaijin-kiyomori';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'dajodaijin-kiyomori-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「現在の山口県で平氏がほろんだ戦い」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'dannoura';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'seiitaishogun';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「守護・地頭を置き、鎌倉に幕府を開いた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'seiitaishogun-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「後鳥羽上皇が幕府をたおそうとして起こしたが敗れた戦い」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jokyu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府が定めた、武士の慣習をもとにした初めての武家法」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'goseibai';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「執権として御成敗式目を定めた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'goseibai-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「元と高麗の軍が北九州にせめてきた最初の元寇」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'bunei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「元が再び北九州にせめてきた二度目の元寇」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'koan';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「執権として二度の元寇を退けた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'koan-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「源頼朝が国ごとに置いた、軍事・警察の仕事をする役職」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'shugo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jito';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'shikken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'goonhoko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「将軍と主従関係を結んだ武士」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'gokenin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉時代に後鳥羽上皇の命令でまとめられた歌集」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'shinkokin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'heike';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'hojoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「つれづれなるままに」で始まる、兼好法師の随筆」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'tsurezure';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'kongorikishi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「南無阿弥陀仏」と念仏を唱えれば救われると説いた宗派」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jodoshu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「念仏を唱えれば救われると説き、浄土宗を開いた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jodoshu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「自分の罪を自覚した悪人こそ救われると説いた宗派」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jodoshinshu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「法然の弟子で、浄土真宗を開いた」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'jodoshinshu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「南無妙法蓮華経」と題目を唱えることを説いた宗派」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'nichirenshu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「「南無妙法蓮華経」の題目を唱えれば救われると説いた、鎌倉時代の僧」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'nichirenshu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「座禅によってさとりを開こうとする仏教。武士の気風に合い広まった」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'zen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'nimosaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「寺社の門前や交通の要地で、月に数回開かれた市」' WHERE quiz_id = 'rekishi-kamakura' AND item_key = 'teikiichi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府をたおした天皇が行った政治。武士の不満で2年余りで失敗した」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kenmu';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「鎌倉幕府をたおし、建武の新政を行った」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kenmu-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「足利氏が京都に開いた幕府」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'muromachi';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「征夷大将軍となり、京都に室町幕府を開いた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'muromachi-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「明との間で行われた貿易。倭寇と区別するために合い札を用いた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kango';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「南北朝を統一し、明と勘合貿易を始めた。金閣を建てた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kango-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「足利義満が京都の北山に建てた、公家と武家の文化が混じった建物」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kinkaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「京都の東山に建てられた建物。簡素で落ち着いた造りが特徴」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'ginkaku';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「東山に銀閣を建てた。その後継ぎ争いが応仁の乱の原因となった」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'ginkaku-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「11年続いた戦乱。京都が荒れ、戦国時代が始まるきっかけとなった」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'onin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「種子島に流れ着いたポルトガル人によって伝えられた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'teppo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鹿児島に上陸した宣教師によって伝えられた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kirisutokyo';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1549年に鹿児島に来て、日本にキリスト教を伝えた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'kirisutokyo-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「室町時代に父子によって大成された、面をつけて演じる舞台芸能」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'noh';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「父の観阿弥とともに能を大成した」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'noh-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「墨の濃淡だけで自然をえがく絵画。室町時代に日本独自の様式が完成した」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'suibokuga';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「明にわたって学び、日本の水墨画を大成した」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'suibokuga-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'shoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が寄合を開いて村のきまりを定めた自治組織」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'so-mura';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'za';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'tsuchiikki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'gekokujo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦国大名が領国を治めるために独自に定めたきまり」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'bunkokuho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「馬を使って物資を運んだ運送業者。土一揆の中心になることもあった」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'bashaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'wako';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'renaissance';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「16世紀、免罪符を売る教会を批判して始まったキリスト教の改革」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'shukyokaikaku';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「免罪符を売る教会を批判し、宗教改革を始めた」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'shukyokaikaku-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'columbus';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1492年に大西洋を横断し、アメリカ大陸付近の島に到達した」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'columbus-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「その船隊が初めて世界一周を成しとげた人物」' WHERE quiz_id = 'rekishi-muromachi' AND item_key = 'magellan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良につくられた、唐の長安にならった都」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'heijokyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「新しく開墾した土地の永久私有を認めた法。公地公民の原則がくずれるきっかけになった」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'konden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「仏教の力で国を守ろうとしてつくられた、奈良の大仏」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'todaiji';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'todaiji-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、日本最古の歴史書」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'kojiki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、国家の正式な歴史書」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'nihonshoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'manyoshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'tenpyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'shosoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'ganjin';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた」' WHERE quiz_id = 'rekishi-nara' AND item_key = 'ganjin-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ヨーロッパで始まった世界的な戦争。日本も参戦し、中国に二十一か条の要求を出した」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'daiichiji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「世界で初めての社会主義国が生まれるきっかけとなった革命」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'roshia';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「米の値上がりに対して富山県から全国に広がった民衆の運動」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'kome';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「衆議院で多数を占める政党が中心となって組織する内閣」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'seitonaikaku';
UPDATE items SET label = '次の説明にあてはまる人物はだれか。
「1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'seitonaikaku-person';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大正時代に高まった、民主主義を求める風潮」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'taisho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「満25歳以上のすべての男子に選挙権を認めた法律」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'futsusenkyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「共産主義などの運動を取りしまるために定められた法律」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'chian';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「東京や横浜に大きな被害をもたらした地震災害」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'kanto-daishinsai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「第一次世界大戦の反省から世界平和のためにつくられた国際組織」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'kokusairenmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「アメリカの株価暴落をきっかけに世界中に広がった不景気」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'sekaikyoko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「南満州鉄道の爆破をきっかけに始まった軍事行動。翌年、満州国がつくられた」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'manshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「満州事変のあとに日本が中国東北部につくった国」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'manshukoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「満州国を認められなかった日本が通告した」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'renmei-dattai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'goichigo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'ninirooku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「北京郊外での衝突をきっかけに始まった中国との戦争」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'nicchu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦争のために国民や物資を政府が自由に動かせるようにした法律」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'sodoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ドイツのポーランド侵攻によって始まった世界的な戦争」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'dainiji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ハワイの真珠湾への攻撃などによって始まった戦争」' WHERE quiz_id = 'rekishi-taisho-showa' AND item_key = 'taiheiyo';
