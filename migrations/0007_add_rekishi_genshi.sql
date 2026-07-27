-- 0007: 歴史クイズに原始時代ほかを追加
--
-- 0004〜0006 に対する第4弾。教科書の最初の単元がまるごと抜けていたため原始を新設した。
--   原始(新カテゴリ): 縄文・弥生・古墳(土偶/貝塚/三内丸山/稲作/高床倉庫/吉野ヶ里/前方後円墳/埴輪/渡来人 など)
--   古代の追加: 壬申の乱・藤原京・院政・平将門の乱・保元の乱
--   中世の追加: 二毛作・定期市・馬借・倭寇
--   近世の追加: 生類憐みの令・田沼意次・大塩平八郎の乱・異国船打払令・五街道 など
--   近代の追加: 日英同盟・米騒動・政党内閣・大正デモクラシー・普通選挙法・治安維持法
--               関東大震災・世界恐慌・満州国・国際連盟脱退・五一五事件・二二六事件・国家総動員法
--   現代の追加: 55年体制・四大公害病・東海道新幹線・日中国交正常化・バブル経済
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0007_add_rekishi_genshi.sql
-- 冪等: OR IGNORE なので再実行しても安全。

INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jomondoki', '縄文土器', '縄文土器', '原始', '{"hint":"縄目の文様がつけられた、厚手で黒っぽい土器"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tateana', '竪穴住居', '竪穴住居', '原始', '{"hint":"地面を掘り下げ、柱を立てて屋根をかけた住まい"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaizuka', '貝塚', '貝塚', '原始', '{"hint":"当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dogu', '土偶', '土偶', '原始', '{"hint":"縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sannai', '三内丸山遺跡', '三内丸山遺跡', '原始', '{"hint":"青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yayoidoki', '弥生土器', '弥生土器', '原始', '{"hint":"縄文土器より薄手でかたく、かざりの少ない赤褐色の土器"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inasaku', '稲作', '稲作', '原始', '{"hint":"大陸から九州北部に伝わり、弥生時代に各地へ広まった農業"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'takayuka', '高床倉庫', '高床倉庫', '原始', '{"hint":"収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'toro', '登呂遺跡', '登呂遺跡', '原始', '{"hint":"静岡県にある、水田の跡が見つかった弥生時代の遺跡"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yoshinogari', '吉野ヶ里遺跡', '吉野ヶ里遺跡', '原始', '{"hint":"佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seidoki', '青銅器', '青銅器', '原始', '{"hint":"銅鐸や銅剣など、主に祭りの道具として使われた金属器"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kofun', '古墳', '古墳', '原始', '{"hint":"3世紀後半から各地につくられた、王や豪族の大きな墓"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zenpokoen', '前方後円墳', '前方後円墳', '原始', '{"hint":"円形と四角形を組み合わせた、かぎ穴のような形をした古墳"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'daisen', '大仙古墳', '大仙古墳', '原始', '{"hint":"大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haniwa', '埴輪', '埴輪', '原始', '{"hint":"古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yamato', '大和政権', '大和政権', '原始', '{"hint":"3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'toraijin', '渡来人', '渡来人', '原始', '{"hint":"朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jinshin', '壬申の乱', '壬申の乱', '古代', '{"hint":"672年、天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった","year":672}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fujiwarakyo', '藤原京', '藤原京', '古代', '{"hint":"694年、奈良盆地南部につくられた、日本で初めての本格的な都","year":694}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei', '院政', '院政', '古代', '{"hint":"1086年、白河上皇が始めた、天皇の位をゆずったあとも上皇として政治を動かす仕組み","year":1086,"person":"白河上皇","achievement":"天皇の位をゆずったあとも上皇として政治を行う院政を始めた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'masakado', '平将門の乱', '平将門の乱', '古代', '{"hint":"10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hogen', '保元の乱', '保元の乱', '古代', '{"hint":"1156年、天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された","year":1156}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nimosaku', '二毛作', '二毛作', '中世', '{"hint":"同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikiichi', '定期市', '定期市', '中世', '{"hint":"寺社の門前や交通の要地で、月に数回開かれた市"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bashaku', '馬借', '馬借', '中世', '{"hint":"馬を使って物資を運んだ運送業者。土一揆の中心になることもあった"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wako', '倭寇', '倭寇', '中世', '{"hint":"朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shorui', '生類憐みの令', '生類憐みの令', '近世', '{"hint":"徳川綱吉が出した、犬をはじめ生き物を大切にすることを命じた極端な法令","person":"徳川綱吉","achievement":"生類憐みの令を出し、学問を重んじる政治を行った"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tanuma', '田沼意次', '田沼意次', '近世', '{"hint":"18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中","person":"田沼意次","achievement":"株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'oshio', '大塩平八郎の乱', '大塩平八郎の乱', '近世', '{"hint":"1837年、ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱","year":1837}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchiharai', '異国船打払令', '異国船打払令', '近世', '{"hint":"1825年、日本に近づく外国船を追い払うことを命じた幕府の法令","year":1825}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinden', '新田開発', '新田開発', '近世', '{"hint":"年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manufacture', '工場制手工業', '工場制手工業', '近世', '{"hint":"作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gonin', '五街道', '五街道', '近世', '{"hint":"江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenmei', '天明のききん', '天明のききん', '近世', '{"hint":"18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiei', '日英同盟', '日英同盟', '近代', '{"hint":"1902年、ロシアの南下に対抗するためイギリスと結んだ同盟","year":1902}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kome', '米騒動', '米騒動', '近代', '{"hint":"1918年、米の値上がりに対して富山県から全国に広がった民衆の運動","year":1918}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku', '政党内閣', '政党内閣', '近代', '{"hint":"1918年、原敬が首相となって成立した、日本で初めての本格的なもの","year":1918,"person":"原敬","achievement":"1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taisho', '大正デモクラシー', '大正デモクラシー', '近代', '{"hint":"大正時代に高まった、民主主義を求める風潮"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'futsusenkyo', '普通選挙法', '普通選挙法', '近代', '{"hint":"1925年に成立し、満25歳以上のすべての男子に選挙権が認められた法律","year":1925}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chian', '治安維持法', '治安維持法', '近代', '{"hint":"1925年、共産主義などの運動を取りしまるために定められた法律","year":1925}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanto-daishinsai', '関東大震災', '関東大震災', '近代', '{"hint":"1923年、東京や横浜に大きな被害をもたらした地震災害","year":1923}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekaikyoko', '世界恐慌', '世界恐慌', '近代', '{"hint":"1929年、アメリカの株価暴落をきっかけに世界中に広がった不景気","year":1929}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshukoku', '満州国', '満州国', '近代', '{"hint":"1932年、満州事変のあとに日本が中国東北部につくった国","year":1932}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renmei-dattai', '国際連盟からの脱退', '国際連盟からの脱退', '近代', '{"hint":"1933年、満州国を認められなかった日本が通告した","year":1933}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goichigo', '五・一五事件', '五・一五事件', '近代', '{"hint":"1932年、海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった","year":1932}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ninirooku', '二・二六事件', '二・二六事件', '近代', '{"hint":"1936年、陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件","year":1936}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sodoin', '国家総動員法', '国家総動員法', '近代', '{"hint":"1938年、戦争のために国民や物資を政府が自由に動かせるようにした法律","year":1938}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gojugonen', '55年体制', '55年体制', '現代', '{"hint":"1955年から約38年間続いた、自由民主党が与党であり続けた政治体制"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kogai', '四大公害病', '四大公害病', '現代', '{"hint":"高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく"}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkansen', '東海道新幹線', '東海道新幹線', '現代', '{"hint":"1964年、東京オリンピックに合わせて開通した高速鉄道","year":1964}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-kokko', '日中国交正常化', '日中国交正常化', '現代', '{"hint":"1972年、日中共同声明によって中国との国交が結ばれたこと","year":1972}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bubble', 'バブル経済', 'バブル経済', '現代', '{"hint":"1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気"}');
