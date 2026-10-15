-- data/ 配下のCSVから自動生成。直接編集せず scripts/generate-seed.js を使うこと。
-- quizzes 42件 / items 1389件 (chikei=25, chizu-kigou=33, kencho=47, nihon-chiri=107, rekishi-asuka=38, rekishi-azuchi=35, rekishi-bakumatsu-meiji=90, rekishi-edo-koki=46, rekishi-edo-zenki=46, rekishi-gendai=77, rekishi-genshi=29, rekishi-heian=43, rekishi-kamakura=41, rekishi-muromachi=46, rekishi-nara=30, rekishi-sekai=34, rekishi-taisho-showa=55, rika-bunrui=20, rika-haishutsu=18, rika-hana-hassei=18, rika-iden=19, rika-kagaku-01=23, rika-kagaku-02=15, rika-kagaku-03=19, rika-kagaku-04=22, rika-kagaku-05=15, rika-kagaku-06=13, rika-kagaku-07=24, rika-kagaku-08=18, rika-kagaku-09=12, rika-kankyou=17, rika-kokyu-junkan=20, rika-kougousei=19, rika-saibou=13, rika-seishoku=17, rika-seitaikei=17, rika-shigeki-hannou=20, rika-shinka=16, rika-shouka=20, sekai-isan=78, todofuken=47, todofuken-chizu=47)

INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('nihon-chiri', '日本地理', 'syakai', '地理', 'syakai/nihon-chiri/', 10, 10, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('todofuken-chizu', '都道府県(地図)', 'syakai', '地理', 'syakai/todofuken-chizu/', 10, 20, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chikei', '日本の地形', 'syakai', '地理', 'syakai/chikei/', 10, 30, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chizu-kigou', '地図記号', 'syakai', '地理', 'syakai/chizu-kigou/', 10, 40, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('sekai-isan', '日本の世界遺産', 'syakai', '地理', 'syakai/sekai-isan/', 10, 50, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-sekai', '世界の歴史', 'syakai', '歴史', 'syakai/rekishi-sekai/', 10, 95, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-genshi', '原始（縄文・弥生・古墳）', 'syakai', '歴史', 'syakai/rekishi-genshi/', 10, 100, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-asuka', '飛鳥時代', 'syakai', '歴史', 'syakai/rekishi-asuka/', 10, 105, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-nara', '奈良時代', 'syakai', '歴史', 'syakai/rekishi-nara/', 10, 110, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-heian', '平安時代', 'syakai', '歴史', 'syakai/rekishi-heian/', 10, 115, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-kamakura', '鎌倉時代', 'syakai', '歴史', 'syakai/rekishi-kamakura/', 10, 120, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-muromachi', '室町・戦国時代', 'syakai', '歴史', 'syakai/rekishi-muromachi/', 10, 125, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-azuchi', '安土桃山時代', 'syakai', '歴史', 'syakai/rekishi-azuchi/', 10, 130, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-edo-zenki', '江戸時代（前期）', 'syakai', '歴史', 'syakai/rekishi-edo-zenki/', 10, 135, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-edo-koki', '江戸時代（後期）', 'syakai', '歴史', 'syakai/rekishi-edo-koki/', 10, 140, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-bakumatsu-meiji', '幕末・明治', 'syakai', '歴史', 'syakai/rekishi-bakumatsu-meiji/', 10, 145, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-taisho-showa', '大正・昭和（戦前）', 'syakai', '歴史', 'syakai/rekishi-taisho-showa/', 10, 150, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi-gendai', '現代（戦後）', 'syakai', '歴史', 'syakai/rekishi-gendai/', 10, 155, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-saibou', '細胞のつくり', 'rika', '生物', 'rika/saibou/', 10, 200, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kougousei', '光合成と植物のはたらき', 'rika', '生物', 'rika/kougousei/', 10, 210, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-bunrui', '生物の分類', 'rika', '生物', 'rika/bunrui/', 10, 220, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-hana-hassei', '花のつくりと発生', 'rika', '生物', 'rika/hana-hassei/', 10, 230, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shouka', '消化と吸収', 'rika', '生物', 'rika/shouka/', 10, 240, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kokyu-junkan', '呼吸と血液の循環', 'rika', '生物', 'rika/kokyu-junkan/', 10, 250, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-haishutsu', '排出のしくみ', 'rika', '生物', 'rika/haishutsu/', 10, 260, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shigeki-hannou', '刺激と反応', 'rika', '生物', 'rika/shigeki-hannou/', 10, 270, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-seishoku', '生殖と細胞分裂', 'rika', '生物', 'rika/seishoku/', 10, 280, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-iden', '遺伝', 'rika', '生物', 'rika/iden/', 10, 290, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shinka', '進化と化石', 'rika', '生物', 'rika/shinka/', 10, 300, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-seitaikei', '生態系と食物連鎖', 'rika', '生物', 'rika/seitaikei/', 10, 310, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kankyou', '環境と生物多様性', 'rika', '生物', 'rika/kankyou/', 10, 320, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-01', '物質の性質と状態変化', 'rika', '化学', 'rika/kagaku-01/', 10, 400, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-02', '気体の発生と性質', 'rika', '化学', 'rika/kagaku-02/', 10, 410, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-03', '水溶液', 'rika', '化学', 'rika/kagaku-03/', 10, 420, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-04', '物質の成り立ち', 'rika', '化学', 'rika/kagaku-04/', 10, 430, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-05', '化学変化と化学反応式', 'rika', '化学', 'rika/kagaku-05/', 10, 440, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-06', '酸化・還元と質量', 'rika', '化学', 'rika/kagaku-06/', 10, 450, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-07', 'イオンと中和', 'rika', '化学', 'rika/kagaku-07/', 10, 460, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-08', '化学変化と電池・電気分解', 'rika', '化学', 'rika/kagaku-08/', 10, 470, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kagaku-09', '有機物・無機物と物質の分類', 'rika', '化学', 'rika/kagaku-09/', 10, 480, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('todofuken', '都道府県', 'syakai', '地理', 'archive/todofuken/', 10, 900, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('kencho', '県庁所在地', 'syakai', '地理', 'archive/kencho/', 10, 910, 1);

INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-01', '生物を、共通点や相違点を基準にして仲間分けすることを何というか。', '分類', '生物の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-02', '背骨をもつ動物をまとめて何というか。', '脊椎動物', '動物の分類', '{"accept":["せきつい動物"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-03', '背骨をもたない動物をまとめて何というか。', '無脊椎動物', '動物の分類', '{"accept":["むせきつい動物"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-04', '一生を主に水中で過ごし、えらで呼吸する脊椎動物の仲間を何というか。', '魚類', '脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-05', '子どもの時期を水中で過ごし、成長すると肺や皮膚で呼吸する脊椎動物の仲間を何というか。', '両生類', '脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-06', '体表がうろこや硬い皮膚で覆われ、肺で呼吸する脊椎動物の仲間を何というか。', 'は虫類', '脊椎動物', '{"accept":["爬虫類","はちゅう類","はちゅうるい"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-07', '体表が羽毛で覆われ、前あしが翼になっている脊椎動物の仲間を何というか。', '鳥類', '脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-08', '体表が毛で覆われ、子を乳で育てる脊椎動物の仲間を何というか。', '哺乳類', '脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-09', '体が節に分かれ、関節のあるあしをもつ無脊椎動物の仲間を何というか。', '節足動物', '無脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-10', '節足動物のうち、頭部・胸部・腹部の3部分に分かれ、3対のあしをもつ仲間を何というか。', '昆虫類', '節足動物', '{"accept":["昆虫"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-11', 'エビやカニのように、体が頭胸部と腹部に分かれ、あしに節がある仲間を何というか。', '甲殻類', '節足動物', '{"accept":["こうかく類"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-12', 'アサリやイカのように、節のない柔らかい体をもつ無脊椎動物の仲間を何というか。', '軟体動物', '無脊椎動物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-13', '種子をつくってなかまをふやす植物を何というか。', '種子植物', '植物の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-14', '種子が果実の中に包まれている植物を何というか。', '被子植物', '種子植物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-15', '子房がなく、胚珠がむき出しになっている植物を何というか。', '裸子植物', '種子植物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-16', '胞子でなかまをふやし、根・茎・葉の区別がある植物を何というか。', 'シダ植物', '植物の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-17', '胞子でなかまをふやし、根・茎・葉の区別がはっきりしない植物を何というか。', 'コケ植物', '植物の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-18', '発芽したときに子葉が1枚の被子植物を何というか。', '単子葉類', '被子植物', '{"accept":["単子葉植物"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-19', '発芽したときに子葉が2枚の被子植物を何というか。', '双子葉類', '被子植物', '{"accept":["双子葉植物"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-bunrui', 'q-20', 'シダ植物やコケ植物が、なかまをふやすときにつくるものを何というか。', '胞子', '植物の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-01', '細胞の活動で生じた不要な物質を、体外へ出す働きを何というか。', '排出', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-02', '細胞の呼吸で生じた二酸化炭素を、主に体外へ出す器官は何か。', '肺', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-03', '皮膚から水や塩分などを含む液体が体外へ出る現象を何というか。', '発汗', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-04', '発汗によって皮膚から体外へ出る液体を何というか。', '汗', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-05', '汗をつくって体外へ出す器官を何というか。', '汗腺', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-06', 'タンパク質が分解されたときに生じる、体にとって有害な物質を何というか。', 'アンモニア', '排出', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-07', '肝臓でアンモニアからつくられ、尿として体外へ排出される物質を何というか。', '尿素', '肝臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-08', 'アンモニアを、より害の少ない尿素に変える器官は何か。', '肝臓', '肝臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-09', '肝臓で、体に有害な物質を害の少ない物質に変える働きを何というか。', '解毒', '肝臓', '{"accept":["解毒作用"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-10', '肝臓で、余分なブドウ糖からつくられ、貯蔵される物質を何というか。', 'グリコーゲン', '肝臓', '{"accept":["グリコゲン"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-11', '血液中の尿素などの不要物をこし取り、尿をつくる器官は何か。', '腎臓', '腎臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-12', '腎臓でつくられ、尿素や余分な水分などを含む液体を何というか。', '尿', '腎臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-13', '腎臓で血液からこし取られた尿が一時的にためられる器官は何か。', '膀胱', '尿', '{"accept":["ぼうこう"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-14', '膀胱にたまった尿を体外へ運ぶ管を何というか。', '尿道', '尿', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-15', '腎臓から膀胱へ尿を運ぶ左右一対の管を何というか。', '輸尿管', '尿', '{"accept":["尿管"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-16', '血液中の尿素を腎臓へ運ぶ液体成分は何か。', '血しょう', '血液', '{"accept":["血漿","けっしょう"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-17', '腎臓で、血液から尿素などの不要物をこし取る働きを何というか。', 'ろ過', '腎臓', '{"accept":["濾過","ろか"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-18', '腎臓の働きによって、血液中の尿素の量は増えるか、減るか。', '減る', '腎臓', '{"accept":["減少する","少なくなる"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-01', '被子植物で、花粉をつくる雄性の生殖器官を何というか。', 'おしべ', '花のつくり', '{"accept":["雄しべ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-02', 'おしべの先端にあり、花粉がつくられる部分を何というか。', 'やく', '花のつくり', '{"accept":["葯"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-03', '被子植物で、胚珠を含む器官を何というか。', 'めしべ', '花のつくり', '{"accept":["雌しべ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-04', 'めしべの先端にあり、花粉がつく部分を何というか。', '柱頭', '花のつくり', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-05', 'めしべの内部にあり、胚珠を含むふくらんだ部分を何というか。', '子房', '花のつくり', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-06', '花粉が柱頭につくことを何というか。', '受粉', '植物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-07', '柱頭についた花粉から伸び、精細胞を胚珠へ運ぶ管を何というか。', '花粉管', '植物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-08', '受精後、胚珠が成長してできるものを何というか。', '種子', '植物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-09', '受精後、子房が成長してできるものを何というか。', '果実', '植物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-10', '種子の中にあり、成長すると新しい植物の体になる部分を何というか。', '胚', '種子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-11', '同じ花のめしべの柱頭に、その花のおしべの花粉がつくことを何というか。', '自家受粉', '受粉', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-12', 'ある個体の花粉が、同じ種類の別の個体の柱頭につくことを何というか。', '他家受粉', '受粉', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-13', '魚類や両生類のように、体外で精子と卵が結合する受精を何というか。', '体外受精', '動物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-14', 'ヒトや鳥類のように、母体や親の体内で精子と卵が結合する受精を何というか。', '体内受精', '動物の生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-15', '魚類や鳥類のように、親の体外に卵を産み、卵から子がかえる生まれ方を何というか。', '卵生', '動物の発生', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-16', 'ヒトや多くの哺乳類のように、母体内で子が育ってから生まれる生まれ方を何というか。', '胎生', '動物の発生', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-17', '受精卵が細胞分裂を繰り返して、体の各部分がつくられていく過程を何というか。', '発生', '動物の発生', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-hana-hassei', 'q-18', 'カエルのように、幼生から成体へ成長する途中で体のつくりが大きく変化することを何というか。', '変態', '動物の発生', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-01', '親から子へ伝わる、形や性質などの特徴を何というか。', '形質', '遺伝', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-02', '親の形質が子に伝わる現象を何というか。', '遺伝', '遺伝', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-03', '染色体にあり、形質を決めるもとになる情報を何というか。', '遺伝子', '遺伝子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-04', '遺伝子の本体である物質を何というか。', 'DNA', '遺伝子', '{"accept":["デオキシリボ核酸","ディーエヌエー"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-05', '遺伝子を含み、細胞分裂のときに核の中でひも状に見えるものを何というか。', '染色体', '遺伝子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-06', '遺伝の規則性を調べるため、親どうしをかけ合わせることを何というか。', '交配', '交配実験', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-07', 'メンデルが遺伝の実験に用いた植物は何か。', 'エンドウ', '交配実験', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-08', '代々、自家受粉を繰り返しても同じ形質が現れる個体を何というか。', '純系', '交配実験', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-09', '2つの異なる形質をもつ純系を交配したとき、子に現れやすい形質を何というか。', '顕性形質', '遺伝の規則性', '{"accept":["優性形質"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-10', '2つの異なる形質をもつ純系を交配したとき、子に現れにくく、孫の代などで現れる形質を何というか。', '潜性形質', '遺伝の規則性', '{"accept":["劣性形質"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-11', '顕性形質と潜性形質のように、対になっている形質を何というか。', '対立形質', '遺伝の規則性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-12', '純系の顕性形質をもつ親と純系の潜性形質をもつ親を交配したときにできる子の代を何というか。', 'F1', '交配実験', '{"accept":["F₁","第一世代","子の代","子","子世代"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-13', 'F1どうしを交配したときにできる孫の代を何というか。', 'F2', '交配実験', '{"accept":["F₂","第二世代","孫の代","孫","孫世代"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-14', '生殖細胞がつくられるとき、対になった遺伝子が分かれて別々の生殖細胞に入る法則を何というか。', '分離の法則', '遺伝の規則性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-15', '有性生殖で、生殖細胞をつくるときに行われる、染色体数を半分にする細胞分裂を何というか。', '減数分裂', '細胞分裂', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-16', '顕性形質をAA、潜性形質をaaで表すとき、Aaのように異なる遺伝子をもつ個体に現れる形質は何か。', '顕性形質', '遺伝の規則性', '{"accept":["優性形質"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-17', 'Aaどうしを交配したとき、子に現れる顕性形質と潜性形質の割合は何対何か。', '3対1', '交配実験', '{"accept":["3:1","3：1"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-18', 'Aaどうしを交配したとき、潜性形質が現れる個体の割合は何分の何か。', '4分の1', '交配実験', '{"accept":["1/4","4ぶんの1","25%"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-iden', 'q-19', '無性生殖でできた子は、親と同じ遺伝子をもつため、親との形質の違いが有性生殖より何か。', '少ない', '遺伝', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-01', '物質1 cm³あたりの質量を何というか。', '密度', '物質の性質', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-02', '金属の表面に見られる特有の光沢を何というか。', '金属光沢', '金属の性質', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-03', '電気を通しやすい性質を何というか。', '導電性', '金属の性質', '{"accept":["電気伝導性"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-04', '金属を引っ張って細い線にのばすことができる性質を何というか。', '延性', '金属の性質', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-05', '金属をたたいて薄い板に広げることができる性質を何というか。', '展性', '金属の性質', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-06', '温度を変えることで、物質が固体・液体・気体の間で変わることを何というか。', '状態変化', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-07', '一定の形と一定の体積をもつ物質の状態を何というか。', '固体', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-08', '一定の体積をもつが、容器に応じて形を変える物質の状態を何というか。', '液体', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-09', '一定の形も体積もなく、容器いっぱいに広がる物質の状態を何というか。', '気体', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-10', '固体が液体に変わる状態変化を何というか。', '融解', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-11', '液体が固体に変わる状態変化を何というか。', '凝固', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-12', '液体が気体に変わる状態変化を何というか。', '気化', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-13', '気体が液体に変わる状態変化を何というか。', '凝縮', '状態変化', '{"accept":["液化"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-14', '液体内部からも気体が発生し、液体全体で気化が起こる現象を何というか。', '沸騰', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-15', '固体が液体に変わり始める温度を何というか。', '融点', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-16', '液体が沸騰を始める温度を何というか。', '沸点', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-17', '固体が液体を経ずに直接気体に変わる状態変化を何というか。', '昇華', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-18', '状態変化のとき、質量と体積のうち変化しないのはどちらか。', '質量', '状態変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-19', '液体の混合物を、沸点の違いを利用して分ける方法を何というか。', '蒸留', '物質の分離', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-20', '密度は、物質の質量を何で割って求めるか。', '体積', '物質の性質', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-21', '液体の体積をはかるときに使う、細長い円筒形の器具は何か。', 'メスシリンダー', '実験器具', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-22', '液体を加熱するとき、急な沸騰を防ぐために入れるものは何か。', '沸騰石', '実験器具', '{"accept":["ふっとう石"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-01', 'q-23', '水とエタノールの混合物を蒸留すると、先に多く出てくるのはどちらか。', 'エタノール', '物質の分離', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-01', '水に溶けにくい気体を、水を押しのけて集める方法を何というか。', '水上置換法', '気体の集め方', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-02', '空気より重く、水に溶けやすい気体を集める方法を何というか。', '下方置換法', '気体の集め方', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-03', '空気より軽く、水に溶けやすい気体を集める方法を何というか。', '上方置換法', '気体の集め方', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-04', '火のついた線香を入れると、線香が激しく燃える気体は何か。', '酸素', '酸素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-05', '石灰水を白くにごらせる気体は何か。', '二酸化炭素', '二酸化炭素', '{"accept":["炭酸ガス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-06', '火を近づけると「ポン」という音を立てて燃える気体は何か。', '水素', '水素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-07', '湿らせた赤色リトマス紙を青色に変える、刺激臭のある気体は何か。', 'アンモニア', 'アンモニア', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-08', '二酸化マンガンのように、自身は変化せず化学変化を速くする物質を何というか。', '触媒', '酸素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-09', '過酸化水素水から酸素を発生させる実験で、触媒として加える黒色の物質は何か。', '二酸化マンガン', '酸素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-10', '石灰石や貝殻の主成分にうすい塩酸を加えると発生する気体は何か。', '二酸化炭素', '二酸化炭素', '{"accept":["炭酸ガス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-11', '亜鉛にうすい塩酸を加えると発生する気体は何か。', '水素', '水素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-14', 'アンモニアを水に溶かした水溶液を何というか。', 'アンモニア水', 'アンモニア', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-15', '二酸化炭素を水に溶かした水溶液を何というか。', '炭酸水', '二酸化炭素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-16', '水素を燃やしたときにできる物質は何か。', '水', '水素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-02', 'q-18', '空気中に最も多く含まれる気体は何か。', '窒素', '空気', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-01', '物質が水に溶けてできた、均一な液体を何というか。', '水溶液', '水溶液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-02', '水溶液で、水に溶けている物質を何というか。', '溶質', '水溶液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-03', '水溶液で、溶質を溶かしている液体を何というか。', '溶媒', '水溶液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-04', '物質が水に溶けて水溶液になる現象を何というか。', '溶解', '水溶液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-05', '一定の温度で、水100 gに溶けることができる物質の最大の質量を何というか。', '溶解度', '溶解度', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-06', 'ある温度で、溶質がそれ以上溶けないまで溶けている水溶液を何というか。', '飽和水溶液', '溶解度', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-07', '溶解度が「20 g」と示されているとき、その物質が溶ける水の質量は何 g か。', '100', '溶解度', '{"accept":["100g","100 g"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-08', '水に溶けずに残った固体と液体を分ける方法を何というか。', 'ろ過', '分離', '{"accept":["濾過"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-10', 'ろ過したとき、ろ紙を通り抜けた液体を何というか。', 'ろ液', '分離', '{"accept":["濾液"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-11', '水溶液を冷やしたり、水を蒸発させたりして、溶質を固体として取り出したときにできる固体を何というか。', '結晶', '結晶', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-12', '温度による溶解度の違いを利用して、結晶を取り出しながら物質をきれいにする方法を何というか。', '再結晶', '結晶', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-13', '水溶液から溶質を取り出すため、水を加熱して気体に変えることを何というか。', '蒸発', '分離', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-14', '水溶液全体の質量に対する溶質の質量の割合を百分率で表したものを何というか。', '質量パーセント濃度', '濃度', '{"accept":["質量百分率"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-15', '食塩水100 gに食塩が5 g溶けているとき、質量パーセント濃度は何 %か。', '5', '濃度', '{"accept":["5%","5 %"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-16', '一般に、固体の物質は水の温度が高くなると溶解度がどうなることが多いか。', '大きくなる', '溶解度', '{"accept":["増える","増加する","上がる"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-17', '気体の物質は、水の温度が高くなると溶解度がどうなることが多いか。', '小さくなる', '溶解度', '{"accept":["減る","減少する","下がる"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-18', '溶質が溶媒に溶けた液全体を何というか。', '溶液', '水溶液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-19', '温度と溶解度の関係を表したグラフを何というか。', '溶解度曲線', '溶解度', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-03', 'q-21', 'ろ過をするとき、液を伝わらせて注ぐために使う器具は何か。', 'ガラス棒', '分離', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-01', '物質をつくるもとになる、これ以上化学的に分けられない基本の粒子を何というか。', '原子', '原子・分子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-02', '原子の種類のことを何というか。', '元素', '原子・分子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-03', '物質を構成する粒子のうち、複数の原子が結びついてできたものを何というか。', '分子', '原子・分子', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-04', '元素をアルファベット1文字または2文字で表した記号を何というか。', '元素記号', '元素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-05', '物質を、元素記号と数字を用いて表したものを何というか。', '化学式', '化学式', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-06', '1種類の元素だけからできている物質を何というか。', '単体', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-07', '2種類以上の元素からできている物質を何というか。', '化合物', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-08', '水素の元素記号は何か。', 'H', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-09', '酸素の元素記号は何か。', 'O', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-10', '炭素の元素記号は何か。', 'C', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-11', '窒素の元素記号は何か。', 'N', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-12', '鉄の元素記号は何か。', 'Fe', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-13', '水の化学式は何か。', 'H2O', '化学式', '{"accept":["Ｈ₂Ｏ"],"explanation":"H2Oは、水素原子2個と酸素原子1個からなる。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-14', '酸素の化学式は何か。', 'O2', '化学式', '{"accept":["Ｏ₂"],"explanation":"O2は、酸素原子2個が結びついた分子を表す。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-15', '水素の化学式は何か。', 'H2', '化学式', '{"accept":["Ｈ₂"],"explanation":"H2は、水素原子2個が結びついた分子を表す。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-16', '二酸化炭素の化学式は何か。', 'CO2', '化学式', '{"accept":["ＣＯ₂"],"explanation":"CO2は、炭素原子1個と酸素原子2個からなる。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-17', '食塩（塩化ナトリウム）の化学式は何か。', 'NaCl', '化学式', '{"accept":["ＮａＣｌ"],"explanation":"NaClは、ナトリウムと塩素が1対1で結びついていることを表す。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-18', '2種類以上の物質が混じり合ったものを何というか。', '混合物', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-19', '1種類の物質だけからできているものを何というか。', '純物質', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-20', '銅の元素記号は何か。', 'Cu', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-21', 'マグネシウムの元素記号は何か。', 'Mg', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-04', 'q-22', 'ナトリウムの元素記号は何か。', 'Na', '元素記号', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-01', '物質が別の物質に変わる変化を何というか。', '化学変化', '化学変化', '{"accept":["化学反応"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-02', '1種類の物質が2種類以上の物質に分かれる化学変化を何というか。', '分解', '化学変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-03', '2種類以上の物質が結びついて別の物質になる化学変化を何というか。', '化合', '化学変化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-06', '化学変化を化学式と記号を使って表した式を何というか。', '化学反応式', '化学反応式', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-07', '水に電流を流して分解すると発生する、火を近づけると燃える気体は何か。', '水素', '分解', '{"explanation":"水の電気分解は 2H2O → 2H2 + O2。陰極では水素が発生する。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-08', '水に電流を流して分解すると発生する、ものを燃やす働きを助ける気体は何か。', '酸素', '分解', '{"explanation":"水の電気分解は 2H2O → 2H2 + O2。陽極では酸素が発生する。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-09', '水の電気分解で、同じ温度・圧力で発生する水素と酸素の体積比は何対何か。', '2対1', '分解', '{"accept":["2:1","2：1"],"explanation":"2H2O → 2H2 + O2 より、同温・同圧での水素：酸素の体積比は2：1。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-10', '炭酸水素ナトリウムを加熱したときにできる、石灰水を白くにごらせる気体は何か。', '二酸化炭素', '分解', '{"accept":["炭酸ガス"],"explanation":"2NaHCO3 → Na2CO3 + H2O + CO2。発生する二酸化炭素は石灰水を白くにごらせる。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-11', '鉄と硫黄を加熱してできる黒色の物質は何か。', '硫化鉄', '化合', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-12', 'マグネシウムを燃やしたときにできる白色の物質は何か。', '酸化マグネシウム', '化合', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-16', '化学反応式で、左右の式の原子の数をそろえるためそれぞれの物質の前につける数字を何というか。', '係数', '化学反応式', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-17', '炭酸水素ナトリウムを加熱したときに、試験管に残る白色の固体は何か。', '炭酸ナトリウム', '分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-18', '水ができたことを確かめるために使う紙を何というか。', '塩化コバルト紙', '分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-19', '青色の塩化コバルト紙は、水にふれると何色に変わるか。', '赤色', '分解', '{"accept":["桃色","うすい赤色"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-05', 'q-20', '酸化銀を加熱すると、酸素のほかに何ができるか。', '銀', '分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-01', '物質が酸素と結びつく化学変化を何というか。', '酸化', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-02', '酸化物から酸素を取り去る化学変化を何というか。', '還元', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-03', '物質が酸素と激しく結びつき、光や熱を出す現象を何というか。', '燃焼', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-04', '鉄が空気中の酸素や水とゆっくり酸化してできる赤褐色の物質を何というか。', 'さび', '酸化・還元', '{"accept":["錆"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-05', '酸化銅と炭素を加熱したとき、酸化銅から酸素を奪う物質は何か。', '炭素', '酸化・還元', '{"accept":["C"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-06', '酸化銅を炭素で還元してできる赤色の金属は何か。', '銅', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-07', '化学変化の前後で、反応に関わる物質全体の質量が変わらないことを何というか。', '質量保存の法則', '化学変化と質量', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-08', '物質が酸素と結びついてできた物質を何というか。', '酸化物', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-10', '銅を加熱したときにできる黒色の物質は何か。', '酸化銅', '酸化・還元', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-11', '化学変化で周囲に熱を出す反応を何というか。', '発熱反応', '化学変化と熱', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-12', '化学変化で周囲から熱を吸収する反応を何というか。', '吸熱反応', '化学変化と熱', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-13', '炭素と酸素が化合して二酸化炭素になる反応は、発熱反応と吸熱反応のどちらか。', '発熱反応', '化学変化と熱', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-06', 'q-14', '水酸化ナトリウム水溶液と塩酸を混ぜる反応で、周囲の温度が上がる原因となる反応を何というか。', '中和', '化学変化と熱', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-01', '原子が電子を失ったり受け取ったりして、電気を帯びた粒子を何というか。', 'イオン', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-02', '正の電気を帯びたイオンを何というか。', '陽イオン', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-03', '負の電気を帯びたイオンを何というか。', '陰イオン', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-04', '水に溶けたとき、イオンに分かれて電流を通す物質を何というか。', '電解質', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-05', '電解質が水に溶けてイオンに分かれることを何というか。', '電離', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-06', '酸性の水溶液で、水酸化物イオンより多く含まれる陽イオンは何か。', '水素イオン', '酸・アルカリ', '{"accept":["H+"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-07', 'アルカリ性の水溶液で、水素イオンより多く含まれる陰イオンは何か。', '水酸化物イオン', '酸・アルカリ', '{"accept":["OH-"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-08', '水に溶けて水素イオンを生じる物質を何というか。', '酸', '酸・アルカリ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-09', '水に溶けて水酸化物イオンを生じる物質を何というか。', 'アルカリ', '酸・アルカリ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-10', '酸性・中性・アルカリ性の程度を0から14の数値で表したものを何というか。', 'pH', '酸・アルカリ', '{"accept":["ピーエイチ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-11', '酸性で黄色、アルカリ性で青色、中性で緑色を示す指示薬を何というか。', 'BTB溶液', '指示薬', '{"accept":["BTB"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-12', '酸性で無色、アルカリ性で赤色を示す指示薬を何というか。', 'フェノールフタレイン溶液', '指示薬', '{"accept":["フェノールフタレイン"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-13', '酸とアルカリを混ぜ、それぞれの性質を打ち消し合う反応を何というか。', '中和', '中和', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-14', '中和で、水素イオンと水酸化物イオンが結びついてできる物質は何か。', '水', '中和', '{"accept":["H2O"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-15', '中和で、酸の陰イオンとアルカリの陽イオンが結びついてできる物質を何というか。', '塩', '中和', '{"accept":["えん"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-16', '塩酸と水酸化ナトリウム水溶液を中和させてできる塩は何か。', '塩化ナトリウム', '中和', '{"accept":["食塩"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-17', '酸性の水溶液に青色リトマス紙を入れたときの色は何色か。', '赤色', '指示薬', '{"accept":["赤"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-18', 'アルカリ性の水溶液に赤色リトマス紙を入れたときの色は何色か。', '青色', '指示薬', '{"accept":["青"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-19', '原子の中心にあり、正の電気をもつ粒を何というか。', '原子核', '原子の構造', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-20', '原子核のまわりにあり、負の電気をもつ粒を何というか。', '電子', '原子の構造', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-21', '原子が電子を失うと、陽イオンと陰イオンのどちらになるか。', '陽イオン', '原子の構造', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-22', '水に溶けてもイオンに分かれず、電流を通さない物質を何というか。', '非電解質', 'イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-23', '塩酸という水溶液に溶けている物質は何か。', '塩化水素', '酸・アルカリ', '{"accept":["HCl"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-07', 'q-24', '酸性の水溶液にマグネシウムなどの金属を入れると発生する気体は何か。', '水素', '酸・アルカリ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-01', '化学変化によって電気エネルギーを取り出す装置を何というか。', '電池', '化学変化と電池', '{"accept":["化学電池"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-02', '電池で、電子を放出する電極を何というか。', '負極', '電池', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-03', '電池で、電子を受け取る電極を何というか。', '正極', '電池', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-04', '電流を流して、物質を分解したり別の物質を生じさせたりする化学変化を何というか。', '電気分解', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-05', '電気分解で、電源装置の正極につながる電極を何というか。', '陽極', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-06', '電気分解で、電源装置の負極につながる電極を何というか。', '陰極', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-07', '水酸化ナトリウムを少量加えた水に電流を流して分解したとき、陰極で発生する気体は何か。', '水素', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-08', '水酸化ナトリウムを少量加えた水に電流を流して分解したとき、陽極で発生する気体は何か。', '酸素', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-09', '炭素電極を用いて塩化銅水溶液を電気分解したとき、陰極に付着する赤色の金属は何か。', '銅', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-10', '炭素電極を用いて塩化銅水溶液を電気分解したとき、陽極で発生する黄緑色の気体は何か。', '塩素', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-11', '金属が電子を失って陽イオンになる変化を何というか。', '酸化', '電池', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-12', '金属イオンが電子を受け取って金属になる変化を何というか。', '還元', '電池', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-13', '銅イオンを含む水溶液に鉄を入れると、鉄の表面に付着する金属は何か。', '銅', '金属イオン', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-14', '銅イオンを含む水溶液に鉄を入れると、鉄は何イオンになって水溶液中へ溶け出すか。', '鉄イオン', '金属イオン', '{"accept":["Fe2+"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-15', '水素と酸素を反応させて電気エネルギーを取り出す電池を何というか。', '燃料電池', '電池', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-16', '燃料電池で、水素と酸素が反応してできる物質は何か。', '水', '電池', '{"accept":["H2O"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-17', 'うすい塩酸を電気分解したとき、陰極で発生する気体は何か。', '水素', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-08', 'q-18', 'うすい塩酸を電気分解したとき、陽極で発生する気体は何か。', '塩素', '電気分解', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-01', '炭素を含む化合物のうち、二酸化炭素・一酸化炭素・炭酸塩などを除いたものを何というか。', '有機物', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-02', '有機物以外の物質を何というか。', '無機物', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-03', '炭素の単体のうち、黒色でやわらかく、紙にこすると黒い跡がつき、電気を通すものは何か。', '黒鉛', '非金属', '{"accept":["グラファイト"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-04', '鉄、銅、アルミニウムのように、特有の光沢や導電性をもつ物質を何というか。', '金属', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-05', '硫黄や炭素のように、金属ではない物質を何というか。', '非金属', '物質の分類', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-07', '石灰石や大理石の主成分である物質は何か。', '炭酸カルシウム', '無機物', '{"accept":["CaCO3"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-08', '石油などを原料として人工的につくられることが多い有機物の総称を何というか。', 'プラスチック', '有機物', '{"accept":["合成樹脂"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-09', '紙や木、砂糖、ろうそくなどに共通して含まれる元素は何か。', '炭素', '有機物', '{"accept":["C"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-10', '砂糖などの有機物を完全に燃やしたときに発生する気体は何か。', '二酸化炭素', '有機物', '{"accept":["炭酸ガス","CO2"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-11', '砂糖などの有機物を完全に燃やしたとき、二酸化炭素とともに生じる物質は何か。', '水', '有機物', '{"accept":["H2O"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-12', '有機物を燃やして二酸化炭素が出たことを確かめるために使う液体は何か。', '石灰水', '有機物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kagaku-09', 'q-13', '砂糖と食塩を加熱したとき、黒くこげるのはどちらか。', '砂糖', '有機物', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-01', '生物の種類、同じ種類の個体の形質、生態系の多様さなど、生物に見られるさまざまな違いを何というか。', '生物多様性', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-05', 'もともとその地域にいなかったのに、人間の活動によって持ち込まれた生物を何というか。', '外来種', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-06', '絶滅するおそれがある生物の種類を何というか。', '絶滅危惧種', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-07', 'その種類の生物が地球上から一個体もいなくなることを何というか。', '絶滅', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-08', '絶滅のおそれがある生物の生息状況などをまとめた資料を何というか。', 'レッドデータブック', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-10', '生物の種類や生態系を守り、将来にわたって維持することを何というか。', '環境保全', '環境保全', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-12', '海や川などに有害物質やごみが入り、水質が悪化することを何というか。', '水質汚濁', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-13', '工場の排煙や自動車の排出ガスなどによって、空気が汚れることを何というか。', '大気汚染', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-14', '川や湖に窒素やリンを含む物質が流れ込み、植物プランクトンなどが増えすぎる現象を何というか。', '富栄養化', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-15', '海や沿岸で植物プランクトンが異常に増殖し、水の色が赤褐色などに変わる現象を何というか。', '赤潮', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-16', '湖や池で、藍藻類などが大量に増殖して水面が緑色になる現象を何というか。', 'アオコ', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-17', '生物の体内に取り込まれた有害物質が、食物連鎖の上位ほど濃くなる現象を何というか。', '生物濃縮', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-18', '大気中の二酸化炭素などが地表から出る熱を吸収する働きを何というか。', '温室効果', '地球環境', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-19', '温室効果が強まり、地球全体の平均気温が上昇することを何というか。', '地球温暖化', '地球環境', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-20', '成層圏にあり、生物に有害な紫外線を吸収する層を何というか。', 'オゾン層', '地球環境', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-21', '環境を守りながら資源を利用し、将来の世代も利用できるようにする考え方を何というか。', '持続可能性', '環境保全', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-22', '開発を行う前に、環境への影響を調査・予測・評価することを何というか。', '環境アセスメント', '環境保全', '{"accept":["環境影響評価"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-01', '細胞が栄養分と酸素を使ってエネルギーを取り出し、二酸化炭素と水を生じる働きを何というか。', '呼吸', '呼吸', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-02', '空気中から酸素を取り入れ、二酸化炭素を放出する器官は何か。', '肺', '呼吸器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-03', '鼻や口から入った空気を肺へ運ぶ、首から胸にかけての管を何というか。', '気管', '呼吸器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-04', '気管が左右に分かれたあと、肺の中へ伸びていく2本の管を何というか。', '気管支', '呼吸器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-05', '肺の中で、毛細血管に取り囲まれ、酸素と二酸化炭素の交換を行う小さな袋を何というか。', '肺胞', '呼吸器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-06', '肺胞の壁が薄く、肺胞の数が多いことで、何が効率よく行われるか。', '気体交換', '肺胞', '{"accept":["ガス交換","酸素と二酸化炭素の交換"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-07', '肺胞で、空気中から血液中へ取り込まれる気体は何か。', '酸素', '気体交換', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-08', '肺胞で、血液中から空気中へ排出される気体は何か。', '二酸化炭素', '気体交換', '{"accept":["炭酸ガス","CO2"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-09', '息を吸うとき、横隔膜は収縮して上がるか、下がるか。', '下がる', '呼吸運動', '{"accept":["下降する","さがる","下降"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-10', '息を吐くとき、ろっ骨に囲まれた胸の空間の容積は大きくなるか、小さくなるか。', '小さくなる', '呼吸運動', '{"accept":["減少する","縮む","減る"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-11', '心臓から血液が出ていくときに通る血管を何というか。', '動脈', '血管', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-12', '全身から心臓へ血液が戻ってくるときに通る血管を何というか。', '静脈', '血管', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-13', '動脈と静脈の間にあり、細胞との間で酸素や養分などの受け渡しを行う細い血管を何というか。', '毛細血管', '血管', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-14', '赤血球に含まれ、酸素と結びついて酸素を運ぶ赤い色素を何というか。', 'ヘモグロビン', '血液成分', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-15', '病原体などを取り込んで分解する働きをもつ血液の成分を何というか。', '白血球', '血液成分', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-16', '出血したときに血液を固め、血を止める働きをする血液の成分を何というか。', '血小板', '血液成分', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-17', '血液の液体成分で、養分や二酸化炭素などを運ぶものを何というか。', '血しょう', '血液成分', '{"accept":["血漿","けっしょう"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-18', '心臓から肺へ血液を送り出す血管を何というか。', '肺動脈', '血管', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-19', '心臓の4つの部屋のうち、全身へ血液を送り出す部屋を何というか。', '左心室', '心臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-20', '全身から戻ってきた血液が、最初に入る心臓の部屋を何というか。', '右心房', '心臓', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-01', '葉の細胞内で、光合成を行う緑色の粒状のつくりを何というか。', '葉緑体', '細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-02', '葉緑体に含まれ、光合成に必要な光を吸収する緑色の色素を何というか。', '葉緑素', '細胞', '{"accept":["クロロフィル"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-03', '根の表面にあり、土の粒のすき間に入り込んで水や無機養分を吸収する細い突起を何というか。', '根毛', '根', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-04', '根から吸収した水や無機養分が通る、茎や葉の中の管を何というか。', '道管', '植物体内の移動', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-05', '葉でつくられた養分が通る、茎や葉の中の管を何というか。', '師管', '植物体内の移動', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-06', '葉の表皮にあり、二酸化炭素や酸素などの気体が出入りする小さな穴を何というか。', '気孔', '葉', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-07', '気孔をつくり、その開閉を調節している一対の細胞を何というか。', '孔辺細胞', '葉', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-08', '光合成で、植物が空気中から取り入れる気体は何か。', '二酸化炭素', '光合成', '{"accept":["炭酸ガス","CO2"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-09', '光合成で、植物が根から吸収して原料として使う物質は何か。', '水', '光合成', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-10', '光合成によってつくられ、ヨウ素液で青紫色に変化する養分は何か。', 'デンプン', '光合成', '{"accept":["澱粉"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-11', '光合成によって、植物の体内から空気中へ放出される気体は何か。', '酸素', '光合成', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-12', '葉に光が当たるとデンプンができることを確かめる実験で、葉の一部を覆うために使うものは何か。', 'アルミニウムはく', '光合成の実験', '{"accept":["アルミ箔","アルミホイル","アルミはく","アルミニウム箔"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-13', '光合成の実験の前に植物を暗い場所に置くのは、葉に残っている何を使い切らせるためか。', 'デンプン', '光合成の実験', '{"accept":["澱粉"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-14', '葉の一部をアルミニウムはくで覆って日光に当てた後、ヨウ素液で調べた。青紫色になったのは、光が当たった部分と当たらなかった部分のどちらか。', '光が当たった部分', '光合成の実験', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-15', '葉でつくられたデンプンは、そのままでは水にとけにくい。植物はデンプンを何に変えて、師管を通して運ぶか。', '糖', '養分の移動', '{"accept":["ショ糖","しょ糖"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-16', '植物の体内の水が、水蒸気となって主に気孔から空気中へ出ていく現象を何というか。', '蒸散', '葉', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-17', '色水を吸わせた植物の茎を縦に切ると、色がつくのは道管と師管のどちらか。', '道管', '水の移動', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-18', '植物は光合成をしていない夜にも呼吸を行う。呼吸によって植物が取り入れる気体は何か。', '酸素', '呼吸', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-19', '植物が呼吸を行うのは、昼だけか、夜だけか、昼も夜もか。', '昼も夜も', '呼吸', '{"accept":["昼夜とも","一日中","昼も夜も行う"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-01', '生物の体をつくる基本単位となる小さな構造を何というか。', '細胞', '細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-02', '細胞の中にあり、細胞の活動を調節する部分を何というか。', '核', '細胞', '{"accept":["細胞核"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-03', '核の周りにあり、細胞のさまざまな働きが行われる部分を何というか。', '細胞質', '細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-04', '細胞質の外側を包み、細胞内外の物質の出入りを調節する膜を何というか。', '細胞膜', '細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-05', '植物細胞の最も外側にあり、細胞を保護して形を保つつくりを何というか。', '細胞壁', '植物細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-06', '植物細胞にあり、細胞液を含む袋状のつくりを何というか。', '液胞', '植物細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-07', '液胞の内部を満たしている液体を何というか。', '細胞液', '植物細胞', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-08', '緑色の植物細胞にはあるが、一般的な動物細胞にはない、光合成を行うつくりを何というか。', '葉緑体', '相違点', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-09', '植物細胞と動物細胞を顕微鏡で観察するとき、核を染めるために使う液を何というか。', '酢酸カーミン液', '観察', '{"accept":["酢酸オルセイン液"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-10', '同じ種類で、同じような働きをする細胞が集まったものを何というか。', '組織', '細胞の集まり', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-11', 'いくつかの組織が組み合わさって、特定の働きをする部分を何というか。', '器官', '細胞の集まり', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-12', '体が1個の細胞だけでできている生物を何というか。', '単細胞生物', '生物の体', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-saibou', 'q-13', '体が多数の細胞でできている生物を何というか。', '多細胞生物', '生物の体', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-01', '生物が自分と同じ種類の新しい個体をつくることを何というか。', '生殖', '生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-02', '1個体の親から、受精を行わずに子ができる生殖を何というか。', '無性生殖', '生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-03', '2個体の親がつくる生殖細胞の受精によって子ができる生殖を何というか。', '有性生殖', '生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-04', '有性生殖で、受精のためにつくられる細胞を何というか。', '生殖細胞', '生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-05', 'ヒトの男性がつくる生殖細胞を何というか。', '精子', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-06', 'ヒトの女性がつくる生殖細胞を何というか。', '卵', 'ヒトの生殖', '{"accept":["卵細胞","卵子"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-07', '精子と卵が結合することを何というか。', '受精', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-08', '受精によってできる最初の細胞を何というか。', '受精卵', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-09', 'ヒトの受精卵が細胞分裂を繰り返して成長する過程を何というか。', '発生', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-10', '精子をつくる男性の生殖器官を何というか。', '精巣', 'ヒトの生殖', '{"accept":["睾丸"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-11', '卵をつくる女性の生殖器官を何というか。', '卵巣', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-12', '体細胞が分裂して、同じ種類の細胞が2個できる細胞分裂を何というか。', '体細胞分裂', '細胞分裂', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-13', '細胞分裂のとき、核の中でひも状に見えるようになるものを何というか。', '染色体', '細胞分裂', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-14', '体細胞分裂によってできた2個の細胞の染色体数は、分裂前と比べてどうなるか。', '変わらない', '細胞分裂', '{"accept":["同じ","変化しない"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-15', 'アメーバのように、1個体が2つに分かれてふえる無性生殖を何というか。', '分裂', '無性生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-16', 'ヒドラの体にできた芽が成長して新しい個体になる無性生殖を何というか。', '出芽', '無性生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-17', 'ジャガイモのいもやオランダイチゴの茎のように、植物の体の一部から新しい個体ができる無性生殖を何というか。', '栄養生殖', '無性生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-01', 'ある地域に生息する生物と、それを取り巻く環境を一つのまとまりとして何というか。', '生態系', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-02', '生態系を構成する要素のうち、植物や動物などの生物に関する環境を何というか。', '生物的環境', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-03', '生態系を構成する要素のうち、光・温度・水・空気などの生物以外の環境を何というか。', '非生物的環境', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-04', '光合成によって無機物から有機物をつくる生物を何というか。', '生産者', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-05', '他の生物を食べて有機物を取り入れる生物を何というか。', '消費者', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-06', '生物の死がいや排出物を分解し、無機物に戻す生物を何というか。', '分解者', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-07', '生物どうしの「食べる・食べられる」という関係が、鎖のようにつながったものを何というか。', '食物連鎖', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-08', '複数の食物連鎖が網の目のようにつながったものを何というか。', '食物網', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-09', '食物連鎖で、生産者を直接食べる消費者を何というか。', '一次消費者', '食物連鎖', '{"accept":["第一次消費者","1次消費者"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-10', '食物連鎖で、植物を食べる動物を何というか。', '草食動物', '食物連鎖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-11', '食物連鎖で、他の動物を食べる動物を何というか。', '肉食動物', '食物連鎖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-12', '生態系において、生物が生きるためのエネルギーの主なもとは何か。', '太陽光', 'エネルギー', '{"accept":["日光","太陽","太陽のエネルギー"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-13', '食物連鎖を通って、生物が利用するエネルギーとして受け渡されるものは何か。', 'エネルギー', 'エネルギー', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-15', '植物の光合成によって、空気中から取り入れられる物質は何か。', '二酸化炭素', '物質循環', '{"accept":["炭酸ガス","CO2"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-16', '植物の光合成によって、空気中へ放出される気体は何か。', '酸素', '物質循環', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-17', '生産者・消費者・分解者の働きによって、物質が生態系の中を繰り返し移動することを何というか。', '物質循環', '物質循環', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-18', '生態系の中で、生物の種類や数の関係が大きく変化せずに保たれている状態を何というか。', 'つり合い', '生態系', '{"accept":["つりあい"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-01', '光・音・温度など、動物が外界から受け取る変化を何というか。', '刺激', '刺激と反応', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-02', '刺激を受け取り、神経に信号を送る目や耳などの器官を何というか。', '感覚器官', '感覚器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-03', '光を刺激として受け取る感覚器官は何か。', '目', '感覚器官', '{"accept":["眼","め"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-04', '目の奥にあり、光の刺激を受け取る細胞がある部分を何というか。', '網膜', '目', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-05', '目に入る光を屈折させ、網膜に像を結ばせる部分を何というか。', '水晶体', '目', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-06', '瞳孔の周りにあり、目に入る光の量を調節する部分を何というか。', '虹彩', '目', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-07', '虹彩の中央にある、光が目の中へ入る穴を何というか。', '瞳孔', '目', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-08', '音の刺激を受けると振動し、その振動を耳の奥へ伝える膜を何というか。', '鼓膜', '耳', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-09', '体の回転を感じ取る耳の器官を何というか。', '三半規管', '耳', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-10', '音の刺激によって生じた信号を脳へ伝える神経を何というか。', '聴神経', '耳', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-11', '感覚器官が受け取った刺激の信号を、脳や脊髄へ伝える神経を何というか。', '感覚神経', '神経', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-12', '脳や脊髄からの命令を、筋肉などへ伝える神経を何というか。', '運動神経', '神経', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-13', '脳と脊髄をまとめて何というか。', '中枢神経', '神経', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-14', '中枢神経と全身の感覚器官・運動器官をつなぐ神経を何というか。', '末しょう神経', '神経', '{"accept":["末梢神経","まっしょう神経","まっしょうしんけい"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-15', '脳の一部で、体の運動の調節や姿勢の保持に関わる部分を何というか。', '小脳', '脳', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-16', '熱いものに触れたとき、熱いと感じる前に手を引っ込めるような反応を何というか。', '反射', '反応', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-17', '反射の命令を出す中枢として働くことが多い器官は何か。', '脊髄', '反射', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-18', '刺激を受けたとき、感覚器官からの信号をもとに行動を判断する脳の部分を何というか。', '大脳', '脳', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-19', '神経からの命令を受けて、実際に収縮して体を動かす組織を何というか。', '筋肉', '反応', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-20', '明るいところで瞳孔が小さくなるように、意識とは関係なく起こる反応を何というか。', '反射', '反応', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-01', '生物が長い時間をかけて、世代を重ねるうちに形や性質を変化させることを何というか。', '進化', '進化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-02', '現在の生物が、長い時間をかけて変化してきたことを示す証拠の一つで、過去の生物の体や活動のあとを何というか。', '化石', '進化の証拠', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-03', '地層の中で、下にある地層は上にある地層と比べて、一般に新しいか古いか。', '古い', '地層', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-04', '地層が堆積した当時の地質時代を知る手がかりになる化石を何というか。', '示準化石', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-05', '示準化石に適しているのは、広い地域に分布し、生存していた期間が長い生物と短い生物のどちらか。', '短い', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-06', '地層が堆積した当時の環境を知る手がかりになる化石を何というか。', '示相化石', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-07', '示相化石になる生物が分布する地域は、広いか狭いか。', '狭い', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-08', '始祖鳥は、は虫類とどの動物の両方の特徴をもつ化石生物か。', '鳥類', '化石', '{"accept":["鳥"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-09', '人間の腕、コウモリの翼、クジラのひれのように、基本的なつくりが共通している器官を何というか。', '相同器官', '進化の証拠', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-10', '相同器官があることは、これらの生物が共通の何から進化したことを示しているか。', '祖先', '進化の証拠', '{"accept":["共通祖先"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-11', '生物の体にあるが、現在はほとんど働いていない器官を何というか。', '痕跡器官', '進化の証拠', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-12', 'ヒトの尾てい骨は、どの器官の痕跡と考えられているか。', '尾', '痕跡器官', '{"accept":["しっぽ","尻尾"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-13', '生物が生活する環境に適した形や性質をもつようになることを何というか。', '適応', '進化', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-14', '地球の歴史を、生物や地層の変化に基づいて区分した時代を何というか。', '地質時代', '地質時代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-15', '古生代の初めに現れ、古生代の終わりに絶滅した代表的な示準化石を何というか。', '三葉虫', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shinka', 'q-16', '中生代の代表的な示準化石で、現在は絶滅している頭足類を何というか。', 'アンモナイト', '化石', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-01', '口から肛門まで続き、食物が通過する一続きの器官をまとめて何というか。', '消化管', '消化器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-02', '口の中で分泌され、デンプンを分解する消化液を何というか。', 'だ液', '消化液', '{"accept":["唾液","だえき"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-03', 'だ液に含まれ、デンプンを分解する消化酵素を何というか。', 'アミラーゼ', '消化酵素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-04', 'だ液に含まれるアミラーゼは、デンプンを主に何という糖に分解するか。', '麦芽糖', '消化', '{"accept":["マルトース","糖"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-05', '食物を一時的にため、胃液を分泌して消化を行う器官は何か。', '胃', '消化器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-06', '胃液に含まれ、タンパク質を分解する消化酵素を何というか。', 'ペプシン', '消化酵素', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-07', '胃で分泌され、ペプシンを含む消化液を何というか。', '胃液', '消化液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-08', '肝臓でつくられ、脂肪を細かい粒にして消化しやすくする液を何というか。', '胆汁', '消化液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-09', '胆汁をつくる器官は何か。', '肝臓', '消化器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-10', '胆汁には消化酵素が含まれているか、含まれていないか。', '含まれていない', '消化液', '{"accept":["含まれない","含まない"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-11', '胃と小腸の間にあり、胆汁やすい液が流れ込む小腸の始まりの部分を何というか。', '十二指腸', '消化器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-12', '小腸から分泌され、消化を行う消化液を何というか。', '腸液', '消化液', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-13', 'すい臓から分泌され、デンプン・タンパク質・脂肪などを消化する消化液を何というか。', 'すい液', '消化液', '{"accept":["膵液","すいえき"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-14', '栄養分の消化と吸収が主に行われる器官は何か。', '小腸', '消化器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-15', '小腸の内壁にある、表面積を大きくする細かい突起を何というか。', '柔毛', '小腸', '{"accept":["じゅうもう","絨毛"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-16', '柔毛の中に入り込んでいて、ブドウ糖やアミノ酸を取り込む細い血管を何というか。', '毛細血管', '吸収', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-17', 'デンプンが消化されてできたブドウ糖は、柔毛から血液とリンパ液のどちらに取り込まれるか。', '血液', '吸収', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-18', 'タンパク質が消化されてできたアミノ酸は、柔毛から血液とリンパ液のどちらに取り込まれるか。', '血液', '吸収', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-19', '脂肪が消化されてできた脂肪酸とモノグリセリドは、柔毛の中のどの管に取り込まれるか。', 'リンパ管', '吸収', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shouka', 'q-20', '消化されずに大腸へ送られた食物の残りから、大腸で主に吸収されるものは何か。', '水', '大腸', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-01', '次の説明にあてはまる地形は？
「東北地方を南北に走る、日本で最も長い山脈」', '奥羽山脈', '山地・山脈', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-02', '次の説明にあてはまる地形は？
「「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる」', '飛騨山脈', '山地・山脈', '{"accept":["北アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-03', '次の説明にあてはまる地形は？
「日本アルプスの一つで、長野県に位置する」', '木曽山脈', '山地・山脈', '{"accept":["中央アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-04', '次の説明にあてはまる地形は？
「日本アルプスの一つで、山梨県・長野県・静岡県にまたがる」', '赤石山脈', '山地・山脈', '{"accept":["南アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-05', '次の説明にあてはまる地形は？
「日本最高峰(標高3776m)。静岡県と山梨県にまたがる」', '富士山', '山地・山脈', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-06', '次の説明にあてはまる地形は？
「日本最大の平野」', '関東平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-07', '次の説明にあてはまる地形は？
「新潟県に広がる、日本有数の稲作地帯」', '越後平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-08', '次の説明にあてはまる地形は？
「愛知県・岐阜県に広がり、「輪中」と呼ばれる堤防で知られる」', '濃尾平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-09', '次の説明にあてはまる地形は？
「北海道に広がる、稲作がさかんな平野」', '石狩平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-10', '次の説明にあてはまる地形は？
「九州最大の平野で、佐賀県・福岡県に広がる」', '筑紫平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-11', '次の説明にあてはまる地形は？
「日本で最も長い川(約367km)」', '信濃川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-12', '次の説明にあてはまる地形は？
「流域面積が日本一で、「坂東太郎」とも呼ばれる川」', '利根川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-13', '次の説明にあてはまる地形は？
「北海道を流れる、日本三大河川の一つ」', '石狩川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-14', '次の説明にあてはまる地形は？
「濃尾平野を流れる、木曽三川の一つ」', '木曽川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-15', '次の説明にあてはまる地形は？
「琵琶湖から大阪湾へ流れる川」', '淀川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-16', '次の説明にあてはまる地形は？
「日本最大の湖。滋賀県にある」', '琵琶湖', '湖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-17', '次の説明にあてはまる地形は？
「日本の太平洋側を流れる暖流」', '黒潮', '海流', '{"accept":["日本海流"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-18', '次の説明にあてはまる地形は？
「三陸沖などを流れる寒流」', '親潮', '海流', '{"accept":["千島海流"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-19', '次の説明にあてはまる地形は？
「日本海側を流れる暖流」', '対馬海流', '海流', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-20', '次の説明にあてはまる地形は？
「日本海側を北から南へ流れる寒流」', 'リマン海流', '海流', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-21', '次の説明にあてはまる地形は？
「千葉県にある半島」', '房総半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-22', '次の説明にあてはまる地形は？
「近畿地方最大の半島」', '紀伊半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-23', '次の説明にあてはまる地形は？
「石川県にある、日本海に突き出た半島」', '能登半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-24', '次の説明にあてはまる地形は？
「本州と北海道を隔てる海峡」', '津軽海峡', '海峡', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'q-25', '次の説明にあてはまる地形は？
「本州と九州を隔てる海峡」', '関門海峡', '海峡', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-01', '次の地図記号は何を表しているか。', '神社', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-02', '次の地図記号は何を表しているか。', '寺院', '建物・施設', '{"accept":["寺","お寺"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-03', '次の地図記号は何を表しているか。', '郵便局', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-04', '次の地図記号は何を表しているか。', '小・中学校', '建物・施設', '{"accept":["小中学校","小学校・中学校","小学校","中学校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-05', '次の地図記号は何を表しているか。', '高等学校', '建物・施設', '{"accept":["高校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-06', '次の地図記号は何を表しているか。', '市役所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-07', '次の地図記号は何を表しているか。', '町村役場', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-08', '次の地図記号は何を表しているか。', '交番', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-09', '次の地図記号は何を表しているか。', '警察署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-10', '次の地図記号は何を表しているか。', '消防署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-11', '次の地図記号は何を表しているか。', '工場', '建物・施設', '{"note":"2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-12', '次の地図記号は何を表しているか。', '発電所', '建物・施設', '{"accept":["発電所・変電所","変電所"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-13', '次の地図記号は何を表しているか。', '図書館', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-14', '次の地図記号は何を表しているか。', '博物館', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-15', '次の地図記号は何を表しているか。', '老人ホーム', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-16', '次の地図記号は何を表しているか。', '灯台', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-17', '次の地図記号は何を表しているか。', '港湾', '建物・施設', '{"accept":["港","重要港"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-18', '次の地図記号は何を表しているか。', '温泉', '自然・その他', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-19', '次の地図記号は何を表しているか。', '三角点', '自然・その他', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-20', '次の地図記号は何を表しているか。', '裁判所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-21', '次の地図記号は何を表しているか。', '税務署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-22', '次の地図記号は何を表しているか。', '保健所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-23', '次の地図記号は何を表しているか。', '病院', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-24', '次の地図記号は何を表しているか。', '記念碑', '建物・施設', '{"accept":["記念広場"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-25', '次の地図記号は何を表しているか。', '墓地', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-26', '次の地図記号は何を表しているか。', '果樹園', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-27', '次の地図記号は何を表しているか。', '田', '土地利用', '{"accept":["水田","たんぼ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-28', '次の地図記号は何を表しているか。', '畑', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-29', '次の地図記号は何を表しているか。', '荒地', '土地利用', '{"accept":["荒れ地"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-30', '次の地図記号は何を表しているか。', '茶畑', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-31', '次の地図記号は何を表しているか。', '桑畑', '土地利用', '{"note":"2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-32', '次の地図記号は何を表しているか。', '広葉樹林', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'q-33', '次の地図記号は何を表しているか。', '針葉樹林', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-01', '北海道', '札幌市', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-02', '青森県', '青森市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-03', '岩手県', '盛岡市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-04', '宮城県', '仙台市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-05', '秋田県', '秋田市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-06', '山形県', '山形市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-07', '福島県', '福島市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-08', '茨城県', '水戸市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-09', '栃木県', '宇都宮市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-10', '群馬県', '前橋市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-11', '埼玉県', 'さいたま市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-12', '千葉県', '千葉市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-13', '東京都', '東京', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-14', '神奈川県', '横浜市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-15', '新潟県', '新潟市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-16', '富山県', '富山市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-17', '石川県', '金沢市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-18', '福井県', '福井市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-19', '山梨県', '甲府市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-20', '長野県', '長野市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-21', '岐阜県', '岐阜市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-22', '静岡県', '静岡市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-23', '愛知県', '名古屋市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-24', '三重県', '津市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-25', '滋賀県', '大津市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-26', '京都府', '京都市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-27', '大阪府', '大阪市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-28', '兵庫県', '神戸市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-29', '奈良県', '奈良市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-30', '和歌山県', '和歌山市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-31', '鳥取県', '鳥取市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-32', '島根県', '松江市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-33', '岡山県', '岡山市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-34', '広島県', '広島市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-35', '山口県', '山口市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-36', '徳島県', '徳島市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-37', '香川県', '高松市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-38', '愛媛県', '松山市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-39', '高知県', '高知市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-40', '福岡県', '福岡市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-41', '佐賀県', '佐賀市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-42', '長崎県', '長崎市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-43', '熊本県', '熊本市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-44', '大分県', '大分市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-45', '宮崎県', '宮崎市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-46', '鹿児島県', '鹿児島市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', 'q-47', '沖縄県', '那覇市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-01', '日本の一番南にある島（極南端）の名前は何ですか？', '沖ノ鳥島', 'basic', '{"accept":["沖の鳥島"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-02', '飛騨山脈、木曽山脈、赤石山脈の3つの山脈を合わせた総称を何といいますか？', '日本アルプス', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-03', '日本で一番流域面積が広い川の名前は何ですか？', '利根川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-04', '三陸海岸や志摩半島に見られる、複雑に入り組んだ鋸刃状の海岸地形を何といいますか？', 'リアス海岸', 'basic', '{"accept":["リアス式海岸","リアス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-05', '東北地方の太平洋側で、夏に吹き冷害の原因となる冷たく湿った北東の風を何といいますか？', 'やませ', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-06', '関東平野のほぼ中央を流れる利根川などの流域に広がる、火山灰が降り積もってできた赤土の台地を何といいますか？', '関東ローム層', 'basic', '{"accept":["関東ローム"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-07', '中部地方の八ヶ岳山麓や菅平高原などで盛んな、夏の涼しい気候を利用してレタスやキャベツなどを栽培する農業を何といいますか？', '高冷地農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-08', '大阪市やその周辺など、大消費地に近い立地を生かして野菜などを栽培する農業を何といいますか？', '近郊農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-09', '瀬戸内海沿岸の地域に見られる、年中温暖で雨が少ない気候を何といいますか？', '瀬戸内の気候', 'basic', '{"accept":["瀬戸内気候","瀬戸内式気候"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-10', '九州南部に広がる、シラスと呼ばれる火山灰が堆積した台地を何といいますか？', 'シラス台地', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-11', '青森県にある、むつ湾を囲むまさかりの形をした半島は何ですか？', '下北半島', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-12', '日本の太平洋側を南から北へ流れる、日本海流とも呼ばれる暖流の名前は何ですか？', '黒潮', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-13', '日本で最も長い川の名前は何ですか？', '信濃川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-14', '山口県の秋吉台などに代表される、石灰岩が雨水などで侵食されてできた地形を何といいますか？', 'カルスト地形', 'basic', '{"accept":["カルスト"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-15', '北海道の根釧台地などで盛んな、乳牛などを飼育して生乳や乳製品を生産する農業を何といいますか？', '酪農', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-16', 'ここは日本列島の最北に位置し、都道府県の中で面積が最も広い。冬の寒さが厳しく、流氷が接岸する海岸もある。じゃがいもや小麦などの畑作、酪農が盛んで、世界遺産・知床が含まれる。これはどこの都道府県か。', '北海道', 'todofuken', '{"region":"hokkaido"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-17', 'ここは本州最北端に位置し、津軽海峡を挟んで北海道と向かい合う。日本海と太平洋の両方に面する数少ない県の一つである。りんごの生産量が全国一位で、世界遺産・白神山地のブナ原生林も広がる。これはどこの都道府県か。', '青森県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-18', 'ここは東北地方の太平洋側に位置し、面積は北海道に次いで全国2位の広さである。三陸海岸はリアス海岸が続き、漁業が盛んである。世界遺産「平泉」の中尊寺金色堂があることでも知られる。これはどこの都道府県か。', '岩手県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-19', 'ここは東北地方の太平洋側に位置し、東北地方の中心都市を県庁所在地とする。日本三景の一つに数えられる松島がある。牛タン料理でも知られる。これはどこの都道府県か。', '宮城県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-20', 'ここは東北地方の日本海側に位置する。あきたこまちなど米の産地として知られ、世界遺産・白神山地の一部もまたがる。なまはげと呼ばれる伝統行事が伝わる。これはどこの都道府県か。', '秋田県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-21', 'ここは東北地方の日本海側に位置する。さくらんぼの生産量が全国一位で、将棋の駒の生産地としても知られる。蔵王の樹氷でも有名である。これはどこの都道府県か。', '山形県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-22', 'ここは東北地方の最南端に位置し、東は太平洋に面する。東北地方の中で最も面積が広い。ももの産地としても知られる。これはどこの都道府県か。', '福島県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-23', 'ここは関東地方の北東部に位置し、太平洋に面する。日本で2番目に大きい湖である霞ヶ浦がある。納豆や、メロン・レンコンなどの農産物の生産量が高いことで知られる。これはどこの都道府県か。', '茨城県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-24', 'ここは関東地方の内陸県で、海に面していない。世界遺産・日光の社寺があり、いちごの生産量は全国一位である。これはどこの都道府県か。', '栃木県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-25', 'ここは関東地方北西部の内陸県である。世界遺産・富岡製糸場があり、こんにゃくいもの生産量は全国一位である。草津温泉など温泉地も多い。これはどこの都道府県か。', '群馬県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-26', 'ここは関東地方の内陸県で、東京都の北に隣接する。海に面していない。小江戸と呼ばれる古い町並みが残る川越市や、草加せんべいで知られる。これはどこの都道府県か。', '埼玉県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-27', 'ここは関東地方に位置し、房総半島の大部分を占め、三方を海に囲まれる。成田国際空港があり、落花生の生産量は全国一位である。これはどこの都道府県か。', '千葉県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-28', 'ここは日本の首都であり、人口は全国で最も多い。かつて江戸と呼ばれ、伊豆諸島や小笠原諸島も含まれる。これはどこの都道府県か。', '東京都', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-29', 'ここは関東地方に位置し、東京都の南に隣接して太平洋に面する。横浜港などの港町が発展し、鎌倉の大仏でも知られる。これはどこの都道府県か。', '神奈川県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-30', 'ここは日本海に面し、日本で最も長い信濃川の下流域が広がる。米どころとして知られ、コシヒカリの名産地である。世界遺産・佐渡島の金山がある。これはどこの都道府県か。', '新潟県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-31', 'ここは日本海に面し、立山連峰と富山湾に挟まれる。ホタルイカ漁で知られ、チューリップの球根の生産も盛んである。これはどこの都道府県か。', '富山県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-32', 'ここは日本海に突き出た能登半島を含む。かつて加賀百万石と呼ばれた城下町が発展し、金箔の生産量は全国一位である。これはどこの都道府県か。', '石川県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-33', 'ここは日本海に面し、東尋坊と呼ばれる断崖で知られる。恐竜の化石の発掘地としても有名で、眼鏡フレームの生産量は全国一位である。これはどこの都道府県か。', '福井県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-34', 'ここは内陸県で、富士山の北側に位置する。ぶどうとももの生産量がともに全国一位で、ワインの生産も盛んである。これはどこの都道府県か。', '山梨県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-35', 'ここは内陸に位置し、海に面していない数少ない県の一つである。隣接する都道府県の数は全国で最も多い。中央部から南部にかけて日本アルプスと呼ばれる山脈が連なり、りんごやそばの産地としても知られる。これはどこの都道府県か。', '長野県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-36', 'ここは内陸県で、北部の飛騨地方と南部の美濃地方に分かれる。世界遺産・白川郷の合掌造り集落があり、長良川の鵜飼でも知られる。これはどこの都道府県か。', '岐阜県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-37', 'ここは太平洋に面し、富士山の南側に広がる。茶の生産量が全国有数で、うなぎの養殖地としても知られる。これはどこの都道府県か。', '静岡県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-38', 'ここは濃尾平野の東部に位置し、太平洋に面する。自動車産業を中心とする日本最大級の工業地帯があり、製造品出荷額は全国トップクラスである。これはどこの都道府県か。', '愛知県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-39', 'ここは近畿地方に位置し、紀伊半島の東側を占める。伊勢神宮があり、英虞湾では真珠の養殖が盛んである。これはどこの都道府県か。', '三重県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-40', 'ここは近畿地方の内陸に位置し、日本最大の面積を持つ湖である琵琶湖がある。京都府・大阪府に隣接し、ベッドタウンとしても発展してきた。これはどこの都道府県か。', '滋賀県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-41', 'ここは近畿地方に位置し、かつて都が置かれていた地域である。清水寺や金閣寺など、世界遺産に登録された多くの社寺が残り、西陣織や京友禅などの伝統産業でも知られる。これはどこの都道府県か。', '京都府', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-42', 'ここは近畿地方に位置し、西日本最大の商業都市を中心とする。都道府県の中で面積は香川県に次いで2番目に小さく、たこ焼きやお好み焼きなど「粉もん」文化で知られる。これはどこの都道府県か。', '大阪府', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-43', 'ここは近畿地方に位置し、瀬戸内海と日本海の両方に面する数少ない県の一つである。世界遺産・姫路城があり、淡路島は玉ねぎの産地として知られる。これはどこの都道府県か。', '兵庫県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-44', 'ここは近畿地方の内陸県で、かつて平城京が置かれた。東大寺や法隆寺など世界遺産に登録された寺社が多く、鹿が生息する公園でも知られる。これはどこの都道府県か。', '奈良県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-45', 'ここは近畿地方に位置し、紀伊半島の南西部を占める。梅の生産量は全国一位で、世界遺産・熊野古道の一部を含む。これはどこの都道府県か。', '和歌山県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-46', 'ここは中国地方の日本海側に位置し、都道府県の中で人口が最も少ない。広大な砂丘が広がることで知られる。これはどこの都道府県か。', '鳥取県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-47', 'ここは中国地方の日本海側に位置し、縁結びの神社として知られる出雲大社がある。世界遺産・石見銀山もこの県にある。これはどこの都道府県か。', '島根県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-48', 'ここは中国地方に位置し、瀬戸内海に面する。桃やぶどう(マスカット)の産地として知られ、倉敷市児島地区は学生服やジーンズの生産地としても有名である。これはどこの都道府県か。', '岡山県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-49', 'ここは中国地方に位置し、瀬戸内海に面する。原爆ドームと厳島神社という2つの世界遺産があり、かきの養殖生産量は全国一位である。これはどこの都道府県か。', '広島県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-50', 'ここは本州最西端に位置し、瀬戸内海と日本海の両方に面する。関門海峡を挟んで九州と向かい合い、ふぐの水揚げで知られる。これはどこの都道府県か。', '山口県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-51', 'ここは四国地方の東部に位置し、鳴門海峡の渦潮で知られる。阿波おどりが有名で、すだちの生産量は全国一位である。これはどこの都道府県か。', '徳島県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-52', 'ここは四国地方に位置し、瀬戸内海に面する。対岸には本州がある。都道府県の中で面積が最も小さく、降水量が少ないためため池が数多くつくられてきた。うどんの生産・消費量で全国的に知られる。これはどこの都道府県か。', '香川県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-53', 'ここは四国地方の北西部に位置し、瀬戸内海に面する。みかんの生産量が全国有数で、今治市はタオルの生産地として知られる。これはどこの都道府県か。', '愛媛県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-54', 'ここは四国地方の太平洋側に位置する。なすやピーマンなどの促成栽培が盛んで、かつおの一本釣り漁でも知られる。これはどこの都道府県か。', '高知県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-55', 'ここは九州地方の北部に位置し、人口・経済規模ともに九州で最大である。博多ラーメンや明太子で知られ、世界遺産・宗像大社沖ノ島を含む。これはどこの都道府県か。', '福岡県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-56', 'ここは九州地方北部に位置し、有明海に面してのりの養殖が盛んである。有田焼・伊万里焼などの陶磁器の産地としても知られる。これはどこの都道府県か。', '佐賀県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-57', 'ここは九州地方西部に位置し、離島の数が全国で最も多い。出島やカステラ・ちゃんぽんなど独自の文化で知られ、明治日本の産業革命遺産(軍艦島)を含む世界遺産がある。これはどこの都道府県か。', '長崎県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-58', 'ここは九州地方の中央部に位置し、世界最大級のカルデラを持つ阿蘇山がある。畳表に使われるい草の生産量は全国一位である。これはどこの都道府県か。', '熊本県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-59', 'ここは九州地方の北東部に位置し、太平洋に面する。温泉の源泉数・湧出量が全国一位で、かぼすの生産量も全国一位である。これはどこの都道府県か。', '大分県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-60', 'ここは九州地方の南東部に位置し、太平洋に面する。温暖な気候を活かしたきゅうりやピーマンの促成栽培が盛んである。マンゴーの産地としても知られる。これはどこの都道府県か。', '宮崎県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-61', 'ここは九州地方の最南端に位置し、今も活動を続ける桜島がある。さつまいもの生産量は全国一位で、世界遺産・屋久島を含む。これはどこの都道府県か。', '鹿児島県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-62', 'ここは日本最南端・最西端の島々からなり、亜熱帯の気候に属する。かつて琉球王国として独立した歴史を持ち、首里城跡などが世界遺産に登録されている。さとうきびの生産量は全国一位である。これはどこの都道府県か。', '沖縄県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-63', '「輪島塗」は、どこの都道府県の伝統的工芸品として知られているか。', '石川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-64', '「九谷焼」は、どこの都道府県の伝統的工芸品として知られているか。', '石川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-65', '「南部鉄器」は、どこの都道府県の伝統的工芸品として知られているか。', '岩手県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-66', '「会津塗」は、どこの都道府県の伝統的工芸品として知られているか。', '福島県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-67', '「有田焼」は、どこの都道府県の伝統的工芸品として知られているか。', '佐賀県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-68', '「信楽焼」は、どこの都道府県の伝統的工芸品として知られているか。', '滋賀県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-69', '「西陣織」は、どこの都道府県の伝統的工芸品として知られているか。', '京都府', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-70', '「博多人形」は、どこの都道府県の伝統的工芸品として知られているか。', '福岡県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-71', '「熊野筆」は、どこの都道府県の伝統的工芸品として知られているか。', '広島県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-72', '「小千谷ちぢみ」は、どこの都道府県の伝統的工芸品として知られているか。', '新潟県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-73', '「甲州印伝」は、どこの都道府県の伝統的工芸品として知られているか。', '山梨県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-74', '「天童の将棋駒」は、どこの都道府県の伝統的工芸品として知られているか。', '山形県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-75', '「越前和紙」は、どこの都道府県の伝統的工芸品として知られているか。', '福井県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-76', '「津軽塗」は、どこの都道府県の伝統的工芸品として知られているか。', '青森県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-77', '「江戸切子」は、どこの都道府県の伝統的工芸品として知られているか。', '東京都', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-78', '「高岡銅器」は、どこの都道府県の伝統的工芸品として知られているか。', '富山県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-79', '「別府竹細工」は、どこの都道府県の伝統的工芸品として知られているか。', '大分県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-80', '「桐生織」は、どこの都道府県の伝統的工芸品として知られているか。', '群馬県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-81', '「出雲そば」は、どこの都道府県の郷土料理として知られているか。', '島根県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-82', '「今治タオル」は、どこの都道府県の特産品として知られているか。', '愛媛県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-83', '「灘の酒」は、どこの都道府県の特産品として知られる日本酒か。', '兵庫県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-84', '「有松絞り」は、どこの都道府県の伝統的工芸品として知られているか。', '愛知県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-85', '「美濃和紙」は、どこの都道府県の伝統的工芸品として知られているか。', '岐阜県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-86', '「伊賀焼」は、どこの都道府県の伝統的工芸品として知られているか。', '三重県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-87', '「笠間焼」は、どこの都道府県の伝統的工芸品として知られているか。', '茨城県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-88', '「益子焼」は、どこの都道府県の伝統的工芸品として知られているか。', '栃木県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-89', '「岩槻の雛人形」は、どこの都道府県の伝統的工芸品として知られているか。', '埼玉県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-90', '「鎌倉彫」は、どこの都道府県の伝統的工芸品として知られているか。', '神奈川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-91', '「焼津のかつお節」は、どこの都道府県の特産品として知られているか。', '静岡県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-92', '「萩焼」は、どこの都道府県の伝統的工芸品として知られているか。', '山口県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-93', '「堺打刃物」は、どこの都道府県の伝統的工芸品として知られているか。', '大阪府', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-94', '「奈良筆・奈良墨」は、どこの都道府県の伝統的工芸品として知られているか。', '奈良県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-95', '「桜島大根」は、どこの都道府県の特産品として知られているか。', '鹿児島県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-96', '「黒糖」は、さとうきびを原料としてどこの都道府県で特に多くつくられているか。', '沖縄県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-97', '「小豆島のオリーブ」は、どこの都道府県の特産品として知られているか。', '香川県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-98', '「鳴門わかめ」は、どこの都道府県の特産品として知られているか。', '徳島県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-99', '次は、令和4年産のじゃがいも(ばれいしょ)収穫量、都道府県別ランキング(上位5位)である。
1位　？
2位　鹿児島県(97,600t)
3位　長崎県(83,900t)
4位　茨城県(48,500t)
5位　千葉県(28,100t)
1位に当てはまる都道府県はどこか。', '北海道', 'nousuisan', '{"crop":"じゃがいも","year":"令和4年産(2022年)","source":"農林水産省 作物統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-100', '次は、令和5年産のキャベツ収穫量、都道府県別ランキング(上位5位)である。
1位　群馬県(282,900t)
2位　？(272,700t)
3位　千葉県(116,000t)
4位　茨城県(101,600t)
5位　鹿児島県(72,900t)
2位に当てはまる都道府県はどこか。', '愛知県', 'nousuisan', '{"crop":"キャベツ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-101', '次は、令和5年産の米の収穫量、都道府県別ランキング(上位5位)である。
1位　新潟県(591,700t)
2位　北海道(540,200t)
3位　？(458,200t)
4位　山形県(359,300t)
5位　宮城県(344,700t)
3位に当てはまる都道府県はどこか。', '秋田県', 'nousuisan', '{"crop":"米","year":"令和5年産(2023年)","source":"農林水産省 水陸稲収穫量","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-102', '次は、令和5年産のみかん収穫量、都道府県別ランキング(上位5位、全国シェア)である。
1位　？(約25%)
2位　静岡県(約16%)
3位　愛媛県(約14%)
4位　熊本県(約11%)
5位　佐賀県(約5%)
1位に当てはまる都道府県はどこか。', '和歌山県', 'nousuisan', '{"crop":"みかん","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-103', '次は、令和5年産のレタス収穫量、都道府県別ランキング(上位5位)である。
1位　長野県(181,500t)
2位　？(84,000t)
3位　群馬県(58,200t)
4位　長崎県(35,200t)
5位　静岡県(24,700t)
2位に当てはまる都道府県はどこか。', '茨城県', 'nousuisan', '{"crop":"レタス","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-104', '次は、令和5年の豚の飼育頭数、都道府県別ランキング(上位5位)である。
1位　鹿児島県(1,153,000頭)
2位　宮崎県(818,200頭)
3位　？(759,600頭)
4位　群馬県(593,700頭)
5位　千葉県(588,400頭)
3位に当てはまる都道府県はどこか。', '北海道', 'nousuisan', '{"crop":"豚(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-105', '次は、令和5年産のりんご収穫量、都道府県別ランキング(上位5位)である。
1位　？(374,400t)
2位　長野県(106,900t)
3位　岩手県(31,600t)
4位　山形県(30,300t)
5位　福島県(18,500t)
1位に当てはまる都道府県はどこか。', '青森県', 'nousuisan', '{"crop":"りんご","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-106', '次は、令和5年の肉用牛飼育頭数、都道府県別ランキング(上位5位)である。
1位　北海道(566,400頭)
2位　？(357,800頭)
3位　宮崎県(260,200頭)
4位　熊本県(139,100頭)
5位　長崎県(91,700頭)
2位に当てはまる都道府県はどこか。', '鹿児島県', 'nousuisan', '{"crop":"肉用牛(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'q-107', '次は、令和5年産のたまねぎ収穫量、都道府県別ランキング(上位5位)である。
1位　北海道(752,500t)
2位　兵庫県(97,800t)
3位　？(97,600t)
4位　長崎県(29,900t)
5位　愛知県(24,300t)
3位に当てはまる都道府県はどこか。', '佐賀県', 'nousuisan', '{"crop":"たまねぎ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-01', '次の説明にあてはまる語句を答えなさい。
「役人の心構えを示すために定められたきまり」', '十七条の憲法', '古代', '{"accept":["十七条憲法"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-02', '「十七条の憲法」は西暦何年のことか。数字で答えなさい。', '604', '古代', '{"accept":["604年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-03', '次の説明にあてはまる人物はだれか。
「十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した」', '聖徳太子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-04', '次の説明にあてはまる語句を答えなさい。
「家柄によらず能力のある人を役人に取り立てるために定められた制度」', '冠位十二階', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-05', '「冠位十二階」は西暦何年のことか。数字で答えなさい。', '603', '古代', '{"accept":["603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-06', '次の説明にあてはまる語句を答えなさい。
「中国の進んだ制度や文化を学ぶために隋へ派遣された使節」', '遣隋使', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-07', '「遣隋使」は西暦何年のことか。数字で答えなさい。', '607', '古代', '{"accept":["607年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-08', '次の説明にあてはまる人物はだれか。
「607年、遣隋使として隋にわたった」', '小野妹子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-09', '次の説明にあてはまる語句を答えなさい。
「蘇我氏を倒して始まった、天皇中心の国づくりを目指す政治改革」', '大化の改新', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-10', '「大化の改新」は西暦何年のことか。数字で答えなさい。', '645', '古代', '{"accept":["645年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-11', '次の説明にあてはまる人物はだれか。
「中臣鎌足とともに蘇我氏を倒し、大化の改新を進めた」', '中大兄皇子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-12', '次の説明にあてはまる語句を答えなさい。
「天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった」', '壬申の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-13', '「壬申の乱」は西暦何年のことか。数字で答えなさい。', '672', '古代', '{"accept":["672年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-14', '次の説明にあてはまる語句を答えなさい。
「奈良盆地南部につくられた、日本で初めての本格的な都」', '藤原京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-15', '「藤原京」は西暦何年のことか。数字で答えなさい。', '694', '古代', '{"accept":["694年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-16', '次の説明にあてはまる語句を答えなさい。
「唐の律令にならってつくられた、律と令からなる国の基本法典」', '大宝律令', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-17', '「大宝律令」は西暦何年のことか。数字で答えなさい。', '701', '古代', '{"accept":["701年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-18', '次の説明にあてはまる語句を答えなさい。
「6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度」', '班田収授法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-19', '次の説明にあてはまる語句を答えなさい。
「班田収授法によって人々に分け与えられた土地」', '口分田', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-20', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、収穫した稲の約3%を納めるもの」', '租', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-21', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、絹や糸、地方の特産物を都に納めるもの」', '調', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-22', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、都での労役の代わりに布を納めるもの」', '庸', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-23', '次の説明にあてはまる語句を答えなさい。
「律令制のもとで、九州北部の防備にあたらされた兵士」', '防人', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-24', '次の説明にあてはまる語句を答えなさい。
「地方の国を治めるために、中央から派遣された役人」', '国司', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-25', '百済を助けるために日本が唐・新羅の連合軍と戦い、大敗した戦いを何というか。', '白村江の戦い', '古代', '{"accept":["白村江の戦"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-26', '「白村江の戦い」は西暦何年のことか。数字で答えなさい。', '663', '古代', '{"accept":["663年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-27', '天智天皇が都を移した宮は何か。', '近江大津宮', '古代', '{"accept":["大津宮"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-28', '近江大津宮が置かれた現在の都道府県はどこか。', '滋賀県', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-29', '飛鳥時代に仏教の影響を強く受けて栄えた、推古天皇のころの文化を何というか。', '飛鳥文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-30', '飛鳥文化を代表する、聖徳太子が建立したと伝えられる寺は何か。', '法隆寺', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-31', '中臣鎌足は、死の直前に天智天皇から何という姓を与えられたか。', '藤原氏', '古代', '{"accept":["藤原","藤原朝臣"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-32', '天武天皇の命令で編さんが始まり、持統天皇の時代に施行されたとされる法令は何か。', '飛鳥浄御原令', '古代', '{"accept":["浄御原令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-33', '大宰府の近くに築かれた、堤と濠からなる防御施設は何か。', '水城', '古代', '{"accept":["みずき"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-34', '中大兄皇子とともに蘇我氏を倒し、大化の改新を進めた人物はだれか。', '中臣鎌足', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-35', '仏教をめぐる争いで、蘇我氏に敗れた豪族はだれか。', '物部守屋', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-36', '大化の改新の後、豪族が支配していた土地と人々を国家のものとする方針を何というか。', '公地公民', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-37', '日本初の女性天皇とされる推古天皇が即位したのは西暦何年か。数字で答えなさい。', '592', '古代', '{"accept":["592年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-38', '推古天皇の摂政として政治を行った聖徳太子を支え、仏教を重んじた豪族はだれか。', '蘇我馬子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-01', '次の説明にあてはまる語句を答えなさい。
「織田信長が今川義元を破った戦い」', '桶狭間の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-02', '「桶狭間の戦い」は西暦何年のことか。数字で答えなさい。', '1560', '近世', '{"accept":["1560年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-03', '次の説明にあてはまる語句を答えなさい。
「織田・徳川の連合軍が鉄砲を大量に使って武田軍を破った戦い」', '長篠の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-04', '「長篠の戦い」は西暦何年のことか。数字で答えなさい。', '1575', '近世', '{"accept":["1575年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-05', '次の説明にあてはまる人物はだれか。
「楽市・楽座や関所の廃止を行い、長篠の戦いで鉄砲を活用した」', '織田信長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-06', '次の説明にあてはまる語句を答えなさい。
「明智光秀にそむかれて織田信長が自害した事件」', '本能寺の変', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-07', '「本能寺の変」は西暦何年のことか。数字で答えなさい。', '1582', '近世', '{"accept":["1582年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-08', '次の説明にあてはまる語句を答えなさい。
「全国の田畑の面積と収穫高を調べ、年貢を確実に取るために行われた土地の調査」', '太閤検地', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-09', '次の説明にあてはまる人物はだれか。
「太閤検地と刀狩を行い、兵農分離を進めて全国を統一した」', '豊臣秀吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-10', '次の説明にあてはまる語句を答えなさい。
「百姓から武器を取り上げ、一揆を防ぐために行われた政策」', '刀狩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-11', '「刀狩」は西暦何年のことか。数字で答えなさい。', '1588', '近世', '{"accept":["1588年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-12', '次の説明にあてはまる語句を答えなさい。
「織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策」', '楽市・楽座', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-13', '次の説明にあてはまる語句を答えなさい。
「検地と刀狩によって、武士と農民の身分がはっきり分けられたこと」', '兵農分離', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-14', '次の説明にあてはまる語句を答えなさい。
「安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化」', '桃山文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-15', '次の説明にあてはまる語句を答えなさい。
「簡素さの中に美を見いだす茶の湯。安土桃山時代に大成された」', 'わび茶', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-16', '次の説明にあてはまる人物はだれか。
「質素なわび茶を大成し、茶の湯を芸術の域に高めた」', '千利休', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-17', '豊臣秀吉が朝鮮に大軍を送り、1592年に始まった最初の戦いを何というか。', '文禄の役', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-18', '「文禄の役」が始まったのは西暦何年か。数字で答えなさい。', '1592', '近世', '{"accept":["1592年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-19', '豊臣秀吉が朝鮮に再び大軍を送り、1597年に始まった二度目の戦いを何というか。', '慶長の役', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-20', '「慶長の役」が始まったのは西暦何年か。数字で答えなさい。', '1597', '近世', '{"accept":["1597年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-21', '豊臣秀吉が宣教師に国外退去を命じたものを何というか。', 'バテレン追放令', '近世', '{"accept":["伴天連追放令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-22', '「バテレン追放令」は西暦何年に出されたか。数字で答えなさい。', '1587', '近世', '{"accept":["1587年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-23', 'ポルトガル人・スペイン人との貿易を通じて伝わったパン・カステラ・活版印刷などの文化を何というか。', '南蛮文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-24', '豊臣秀吉が石山本願寺の跡地に築き、天下統一の拠点とした城は何か。', '大坂城', '近世', '{"accept":["大阪城"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-25', '織田信長が琵琶湖の東岸に築き、天下統一の拠点とした城は何か。', '安土城', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-26', '織田信長に京都から追放され、室町幕府最後の将軍となった人物はだれか。', '足利義昭', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-27', '安土桃山時代、豪華な障壁画や屏風絵を描いた狩野派の画家はだれか。', '狩野永徳', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-28', '織田信長や豊臣秀吉がヨーロッパ人と行った貿易を何というか。', '南蛮貿易', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-29', '1582年、ローマ教皇のもとへ派遣された大名の子どもたちによる少年使節団を何というか。', '天正遣欧使節', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-30', '安土桃山時代にかぶき踊りを始めたとされる女性芸能者はだれか。', '出雲の阿国', '近世', '{"accept":["出雲阿国"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-31', '豊臣秀吉が1590年に北条氏を滅ぼし、全国統一を完成させた戦いを何というか。', '小田原攻め', '近世', '{"accept":["小田原征伐"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-32', '織田信長が焼き打ちを行った、滋賀県にある天台宗の総本山はどこか。', '比叡山延暦寺', '近世', '{"accept":["延暦寺"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-33', '織田信長の死後、明智光秀を破った豊臣秀吉の戦いは何か。', '山崎の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-34', '織田信長が城下町で座の特権を廃止し、商工業の発展を図った政策は何か。', '楽市楽座', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-35', '安土桃山時代、キリスト教を信仰した大名を何と呼んだか。', 'キリシタン大名', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-01', '次の説明にあてはまる語句を答えなさい。
「イギリスと清の間で起こった戦争。清が敗れ、日本の対外政策にも影響した」', 'アヘン戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-02', '「アヘン戦争」は西暦何年のことか。数字で答えなさい。', '1840', '近代', '{"accept":["1840年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-03', '次の説明にあてはまる語句を答えなさい。
「4隻の軍艦を率いて浦賀に来航し、日本に開国を求めたアメリカの使節」', 'ペリーの来航', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-04', '「ペリーの来航」は西暦何年のことか。数字で答えなさい。', '1853', '近代', '{"accept":["1853年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-05', '次の説明にあてはまる人物はだれか。
「1853年に浦賀に来航し、日本に開国を求めた」', 'ペリー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-06', '次の説明にあてはまる語句を答えなさい。
「下田と函館の2港を開いて、日本が開国することになった条約」', '日米和親条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-07', '「日米和親条約」は西暦何年のことか。数字で答えなさい。', '1854', '近代', '{"accept":["1854年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-08', '次の説明にあてはまる語句を答えなさい。
「領事裁判権を認め、関税自主権がない不平等条約。日本が5港を開いた」', '日米修好通商条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-09', '「日米修好通商条約」は西暦何年のことか。数字で答えなさい。', '1858', '近代', '{"accept":["1858年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-10', '次の説明にあてはまる語句を答えなさい。
「政権を朝廷に返した出来事。江戸幕府が終わった」', '大政奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-11', '「大政奉還」は西暦何年のことか。数字で答えなさい。', '1867', '近代', '{"accept":["1867年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-12', '次の説明にあてはまる人物はだれか。
「1867年に大政奉還を行い、政権を朝廷に返した」', '徳川慶喜', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-13', '次の説明にあてはまる語句を答えなさい。
「新政府が示した政治の基本方針」', '五箇条の御誓文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-14', '「五箇条の御誓文」は西暦何年のことか。数字で答えなさい。', '1868', '近代', '{"accept":["1868年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-15', '次の説明にあてはまる語句を答えなさい。
「大名が治めていた土地と人民を天皇に返させた政策」', '版籍奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-16', '「版籍奉還」は西暦何年のことか。数字で答えなさい。', '1869', '近代', '{"accept":["1869年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-17', '次の説明にあてはまる語句を答えなさい。
「藩を廃止して県を置き、中央から府知事・県令を派遣した改革」', '廃藩置県', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-18', '「廃藩置県」は西暦何年のことか。数字で答えなさい。', '1871', '近代', '{"accept":["1871年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-19', '次の説明にあてはまる語句を答えなさい。
「土地の価格の3%を現金で納めさせるようにした改革。政府の収入を安定させた」', '地租改正', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-20', '「地租改正」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-21', '次の説明にあてはまる語句を答えなさい。
「満20歳以上の男子に兵役の義務を課した法令」', '徴兵令', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-22', '「徴兵令」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-23', '次の説明にあてはまる語句を答えなさい。
「欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標」', '富国強兵', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-24', '次の説明にあてはまる語句を答えなさい。
「官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策」', '殖産興業', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-25', '次の説明にあてはまる語句を答えなさい。
「殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場」', '富岡製糸場', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-26', '次の説明にあてはまる語句を答えなさい。
「日清戦争の賠償金をもとに福岡県につくられ、鉄鋼の国産化を進めた官営工場」', '八幡製鉄所', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-27', '「八幡製鉄所」は西暦何年のことか。数字で答えなさい。', '1901', '近代', '{"accept":["1901年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-28', '次の説明にあてはまる語句を答えなさい。
「明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと」', '文明開化', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-29', '次の説明にあてはまる語句を答えなさい。
「明治政府が公布した、6歳以上の男女すべてを小学校に通わせることを目指した制度」', '学制', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-30', '「学制」は西暦何年のことか。数字で答えなさい。', '1872', '近代', '{"accept":["1872年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-31', '次の説明にあてはまる語句を答えなさい。
「「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物」', '学問のすゝめ', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-32', '次の説明にあてはまる人物はだれか。
「『学問のすゝめ』を著し、欧米の思想を広めた」', '福沢諭吉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-33', '次の説明にあてはまる語句を答えなさい。
「政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱」', '西南戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-34', '「西南戦争」は西暦何年のことか。数字で答えなさい。', '1877', '近代', '{"accept":["1877年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-35', '次の説明にあてはまる人物はだれか。
「明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた」', '西郷隆盛', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-36', '次の説明にあてはまる語句を答えなさい。
「国民が政治に参加する権利を求め、国会の開設を要求した運動」', '自由民権運動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-37', '次の説明にあてはまる語句を答えなさい。
「政府に提出され、自由民権運動の出発点となった意見書」', '民撰議院設立の建白書', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-38', '「民撰議院設立の建白書」は西暦何年のことか。数字で答えなさい。', '1874', '近代', '{"accept":["1874年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-39', '次の説明にあてはまる人物はだれか。
「民撰議院設立の建白書を提出し、のちに自由党をつくった」', '板垣退助', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-40', '次の説明にあてはまる語句を答えなさい。
「イギリス流の議会政治を目指してつくられた政党」', '立憲改進党', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-41', '「立憲改進党」は西暦何年のことか。数字で答えなさい。', '1882', '近代', '{"accept":["1882年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-42', '次の説明にあてはまる人物はだれか。
「立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた」', '大隈重信', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-43', '明治時代、国の法律や予算を審議する議会は何か。', '帝国議会', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-44', '「帝国議会」は西暦何年のことか。数字で答えなさい。', '1890', '近代', '{"accept":["1890年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-45', '次の説明にあてはまる語句を答えなさい。
「天皇が国を治める仕組みを定めた憲法。ドイツの憲法を参考にした」', '大日本帝国憲法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-46', '「大日本帝国憲法」は西暦何年のことか。数字で答えなさい。', '1889', '近代', '{"accept":["1889年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-47', '次の説明にあてはまる人物はだれか。
「初代内閣総理大臣となり、大日本帝国憲法の作成を進めた」', '伊藤博文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-48', '次の説明にあてはまる語句を答えなさい。
「朝鮮をめぐって起こった清との戦争。日本が勝ち、遼東半島や台湾を得た」', '日清戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-49', '「日清戦争」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-50', '次の説明にあてはまる語句を答えなさい。
「日清戦争の講和条約として結ばれ、遼東半島や台湾を得た条約」', '下関条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-51', '「下関条約」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-52', '次の説明にあてはまる語句を答えなさい。
「ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事」', '三国干渉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-53', '「三国干渉」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-54', '次の説明にあてはまる語句を答えなさい。
「ロシアの南下に対抗するためイギリスと結んだ同盟」', '日英同盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-55', '「日英同盟」は西暦何年のことか。数字で答えなさい。', '1902', '近代', '{"accept":["1902年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-56', '次の説明にあてはまる語句を答えなさい。
「満州や韓国をめぐって起こったロシアとの戦争。講和したが賠償金は得られなかった」', '日露戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-57', '「日露戦争」は西暦何年のことか。数字で答えなさい。', '1904', '近代', '{"accept":["1904年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-58', '次の説明にあてはまる語句を答えなさい。
「アメリカの仲立ちで結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった」', 'ポーツマス条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-59', '「ポーツマス条約」は西暦何年のことか。数字で答えなさい。', '1905', '近代', '{"accept":["1905年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-60', '次の説明にあてはまる語句を答えなさい。
「日本が韓国を植民地とした出来事」', '韓国併合', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-61', '「韓国併合」は西暦何年のことか。数字で答えなさい。', '1910', '近代', '{"accept":["1910年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-62', '次の説明にあてはまる語句を答えなさい。
「外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した」', '領事裁判権の撤廃', '近代', '{"accept":["治外法権の撤廃","治外法権撤廃","領事裁判権撤廃","領事裁判権の廃止","治外法権の廃止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-63', '「領事裁判権の撤廃」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-64', '次の説明にあてはまる人物はだれか。
「1894年に領事裁判権の撤廃に成功した」', '陸奥宗光', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-65', '次の説明にあてはまる語句を答えなさい。
「外務大臣が実現し、条約改正が完全に達成された」', '関税自主権の回復', '近代', '{"accept":["関税自主権回復","関税自主権の完全回復"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-66', '「関税自主権の回復」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-67', '次の説明にあてはまる人物はだれか。
「1911年に関税自主権の回復を実現し、条約改正を完成させた」', '小村寿太郎', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-68', '次の説明にあてはまる語句を答えなさい。
「奴隷制をめぐってアメリカ国内が二分された内戦」', '南北戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-69', '「南北戦争」は西暦何年のことか。数字で答えなさい。', '1861', '近代', '{"accept":["1861年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-70', '次の説明にあてはまる人物はだれか。
「南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた」', 'リンカン', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-71', '次の説明にあてはまる語句を答えなさい。
「清をたおして、翌年に中華民国が成立した革命」', '辛亥革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-72', '「辛亥革命」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-73', '次の説明にあてはまる人物はだれか。
「三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした」', '孫文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-74', '井伊直弼が反対派を処罰した、1858年から始まる弾圧を何というか。', '安政の大獄', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-75', '1860年、井伊直弼が江戸城の門外で暗殺された事件を何というか。', '桜田門外の変', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-76', '幕末に、天皇を尊び外国勢力を追い払おうとした考えを何というか。', '尊王攘夷', '近代', '{"accept":["尊皇攘夷"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-77', '薩摩藩と長州藩が結んだ同盟を仲介した土佐藩出身の人物はだれか。', '坂本龍馬', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-78', '1867年、天皇中心の政治に戻すことを宣言した出来事を何というか。', '王政復古の大号令', '近代', '{"accept":["王政復古"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-79', '明治新政府軍と旧幕府側が戦った一連の内戦を何というか。', '戊辰戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-80', '明治政府が欧米の制度や産業を調査するため、岩倉具視らを派遣した使節団を何というか。', '岩倉使節団', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-81', '1885年に設けられた、内閣総理大臣を中心とする政府の仕組みを何というか。', '内閣制度', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-82', '明治政府が旧来の身分制度を改める方針を何と表したか。', '四民平等', '近代', '{"explanation":"制度上の方針であり、実際には差別や不平等が残った。"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-83', '政府が国会開設を約束し、開設の方針を示した1881年の詔は何か。', '国会開設の勅諭', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-84', '日本で最初の衆議院議員総選挙が行われたのは西暦何年か。数字で答えなさい。', '1890', '近代', '{"accept":["1890年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-85', '日本の最初の帝国議会で、皇族・華族や勅任議員などで構成された議院は何か。', '貴族院', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-86', '忠君愛国や教育の基本方針を示すため、明治時代に出されたものは何か。', '教育勅語', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-87', '栃木県の鉱山から出た鉱毒による公害問題を国会で訴えた政治家はだれか。', '田中正造', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-88', '栃木県の鉱山から流れ出た鉱毒による公害事件は何か。', '足尾銅山鉱毒事件', '近代', '{"accept":["足尾鉱毒事件"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-89', '鉱毒が流れ込み、被害が広がった利根川水系の川は何か。', '渡良瀬川', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'q-90', '1872年に日本で最初に開通した鉄道の区間は、どことどこの間か。', '新橋・横浜間', '近代', '{"accept":["新橋と横浜の間","新橋〜横浜間"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-01', '次の説明にあてはまる語句を答えなさい。
「目安箱の設置や公事方御定書の制定を行った、江戸幕府の改革」', '享保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-02', '「享保の改革」は西暦何年のことか。数字で答えなさい。', '1716', '近世', '{"accept":["1716年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-03', '次の説明にあてはまる人物はだれか。
「享保の改革を行い、目安箱を設置した」', '徳川吉宗', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-04', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-05', '次の説明にあてはまる人物はだれか。
「株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-06', '次の説明にあてはまる語句を答えなさい。
「ききんに備えて米をたくわえさせ、質素倹約を命じた江戸幕府の改革」', '寛政の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-07', '「寛政の改革」は西暦何年のことか。数字で答えなさい。', '1787', '近世', '{"accept":["1787年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-08', '次の説明にあてはまる人物はだれか。
「寛政の改革を行った」', '松平定信', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-09', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた」', '天明のききん', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-10', '次の説明にあてはまる語句を答えなさい。
「物価を下げようと商人の同業組合を解散させたが、2年余りで失敗した改革」', '天保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-11', '「天保の改革」は西暦何年のことか。数字で答えなさい。', '1841', '近世', '{"accept":["1841年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-12', '次の説明にあてはまる人物はだれか。
「天保の改革を行い、株仲間を解散させた」', '水野忠邦', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-13', '次の説明にあてはまる語句を答えなさい。
「ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱」', '大塩平八郎の乱', '近世', '{"accept":["大塩の乱"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-14', '「大塩平八郎の乱」は西暦何年のことか。数字で答えなさい。', '1837', '近世', '{"accept":["1837年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-15', '次の説明にあてはまる語句を答えなさい。
「日本に近づく外国船を追い払うことを命じた幕府の法令」', '異国船打払令', '近世', '{"accept":["外国船打払令","無二念打払令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-16', '「異国船打払令」は西暦何年のことか。数字で答えなさい。', '1825', '近世', '{"accept":["1825年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-17', '次の説明にあてはまる語句を答えなさい。
「幕府や藩に公認され、営業を独占した商工業者の同業組合」', '株仲間', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-18', '次の説明にあてはまる語句を答えなさい。
「ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動」', '打ちこわし', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-19', '次の説明にあてはまる語句を答えなさい。
「作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう」', '工場制手工業', '近世', '{"accept":["マニュファクチュア"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-20', '次の説明にあてはまる語句を答えなさい。
「19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化」', '化政文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-21', '次の説明にあてはまる語句を答えなさい。
「町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった」', '浮世絵', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-22', '次の説明にあてはまる語句を答えなさい。
「さまざまな場所から見た富士山をえがいた風景画集」', '富嶽三十六景', '近世', '{"accept":["富岳三十六景"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-23', '次の説明にあてはまる人物はだれか。
「『富嶽三十六景』をえがき、風景版画で人気を集めた」', '葛飾北斎', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-24', '次の説明にあてはまる語句を答えなさい。
「江戸から京都までの宿場をえがいた風景画集」', '東海道五十三次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-25', '次の説明にあてはまる人物はだれか。
「『東海道五十三次』をえがいた」', '歌川広重', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-26', '次の説明にあてはまる語句を答えなさい。
「オランダ語を通じてヨーロッパの学問や技術を学ぶ学問」', '蘭学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-27', '次の説明にあてはまる語句を答えなさい。
「オランダ語の人体解剖書を翻訳して出版された医学書」', '解体新書', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-28', '「解体新書」は西暦何年のことか。数字で答えなさい。', '1774', '近世', '{"accept":["1774年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-29', '次の説明にあてはまる人物はだれか。
「前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した」', '杉田玄白', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-30', '次の説明にあてはまる語句を答えなさい。
「仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問」', '国学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-31', '次の説明にあてはまる人物はだれか。
「『古事記伝』を著し、国学を大成した」', '本居宣長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-32', '次の説明にあてはまる語句を答えなさい。
「全国を測量してつくられた、正確な日本地図」', '大日本沿海輿地全図', '近世', '{"accept":["伊能図"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-33', '「大日本沿海輿地全図」は西暦何年のことか。数字で答えなさい。', '1821', '近世', '{"accept":["1821年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-34', '次の説明にあてはまる人物はだれか。
「全国を歩いて測量し、正確な日本地図のもとをつくった」', '伊能忠敬', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-35', '次の説明にあてはまる語句を答えなさい。
「町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場」', '寺子屋', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-36', '次の説明にあてはまる語句を答えなさい。
「イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた」', '名誉革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-37', '「名誉革命」は西暦何年のことか。数字で答えなさい。', '1688', '近世', '{"accept":["1688年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-38', '次の説明にあてはまる語句を答えなさい。
「イギリスからの独立にあたって出された、自由と平等をうたった宣言」', 'アメリカ独立宣言', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-39', '「アメリカ独立宣言」は西暦何年のことか。数字で答えなさい。', '1776', '近世', '{"accept":["1776年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-40', '次の説明にあてはまる語句を答えなさい。
「自由・平等・国民主権をうたう人権宣言が出された、フランスの革命」', 'フランス革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-41', '「フランス革命」は西暦何年のことか。数字で答えなさい。', '1789', '近世', '{"accept":["1789年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-42', '次の説明にあてはまる語句を答えなさい。
「18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化」', '産業革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-43', '商人が農民に原料や道具を貸し、農家で製品をつくらせる生産方法を何というか。', '問屋制家内工業', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-44', '農民が年貢の軽減などを求めて領主に集団で訴えた行動を何というか。', '百姓一揆', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-45', '1792年、通商を求めて根室に来航したロシアの使節はだれか。', 'ラクスマン', '近世', '{"accept":["アダム・ラクスマン"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'q-46', '江戸時代後期に樺太を探検し、海峡があることを明らかにした人物はだれか。', '間宮林蔵', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-01', '次の説明にあてはまる語句を答えなさい。
「徳川家康が石田三成らを破り、天下の実権をにぎった戦い」', '関ヶ原の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-02', '「関ヶ原の戦い」は西暦何年のことか。数字で答えなさい。', '1600', '近世', '{"accept":["1600年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-03', '次の説明にあてはまる語句を答えなさい。
「徳川氏が江戸に開いた幕府。約260年続いた」', '江戸幕府', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-04', '「江戸幕府」は西暦何年のことか。数字で答えなさい。', '1603', '近世', '{"accept":["1603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-05', '次の説明にあてはまる人物はだれか。
「関ヶ原の戦いに勝ち、江戸に幕府を開いた」', '徳川家康', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-06', '次の説明にあてはまる語句を答えなさい。
「大名を統制するために幕府が定めたきまり」', '武家諸法度', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-07', '「武家諸法度」は西暦何年のことか。数字で答えなさい。', '1615', '近世', '{"accept":["1615年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-08', '次の説明にあてはまる語句を答えなさい。
「制度化された、大名が1年おきに江戸と領地を行き来するきまり」', '参勤交代', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-09', '「参勤交代」は西暦何年のことか。数字で答えなさい。', '1635', '近世', '{"accept":["1635年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-10', '次の説明にあてはまる人物はだれか。
「参勤交代を制度化し、鎖国を完成させた」', '徳川家光', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-11', '次の説明にあてはまる語句を答えなさい。
「関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された」', '外様大名', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-12', '次の説明にあてはまる語句を答えなさい。
「近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み」', '五人組', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-13', '次の説明にあてはまる語句を答えなさい。
「重い年貢とキリスト教の弾圧に苦しむ人々が天草四郎を中心に起こした一揆」', '島原・天草一揆', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-14', '「島原・天草一揆」は西暦何年のことか。数字で答えなさい。', '1637', '近世', '{"accept":["1637年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-15', '次の説明にあてはまる語句を答えなさい。
「貿易の相手と場所を幕府が厳しく制限した体制。長崎でオランダと中国のみ交易した」', '鎖国', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-16', '「鎖国」は西暦何年のことか。数字で答えなさい。', '1641', '近世', '{"accept":["1641年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-17', '次の説明にあてはまる語句を答えなさい。
「鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島」', '出島', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-18', '次の説明にあてはまる語句を答えなさい。
「江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易」', '朱印船貿易', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-19', '次の説明にあてはまる語句を答えなさい。
「犬をはじめ生き物を大切にすることを命じた、極端な法令」', '生類憐みの令', '近世', '{"accept":["生類憐れみの令","生類あわれみの令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-20', '次の説明にあてはまる人物はだれか。
「生類憐みの令を出し、学問を重んじる政治を行った」', '徳川綱吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-21', '次の説明にあてはまる語句を答えなさい。
「年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと」', '新田開発', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-22', '次の説明にあてはまる語句を答えなさい。
「江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路」', '五街道', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-23', '次の説明にあてはまる語句を答えなさい。
「諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫」', '蔵屋敷', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-24', '次の説明にあてはまる語句を答えなさい。
「17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化」', '元禄文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-25', '次の説明にあてはまる語句を答えなさい。
「町人の暮らしや欲望をありのままにえがいた小説」', '浮世草子', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-26', '次の説明にあてはまる人物はだれか。
「『日本永代蔵』などの浮世草子で町人の生活をえがいた」', '井原西鶴', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-27', '次の説明にあてはまる語句を答えなさい。
「五・七・五の形式で自然や心情をよむ文芸」', '俳諧', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-28', '次の説明にあてはまる人物はだれか。
「各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた」', '松尾芭蕉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-29', '次の説明にあてはまる語句を答えなさい。
「人形をあやつって物語を演じる、江戸時代の芸能」', '人形浄瑠璃', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-30', '次の説明にあてはまる人物はだれか。
「『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた」', '近松門左衛門', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-31', '1614年と1615年に徳川氏が豊臣氏を滅ぼした戦いをまとめて何というか。', '大坂の陣', '近世', '{"accept":["大阪の陣"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-32', '徳川将軍家の親族である大名を何と呼んだか。', '親藩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-33', '関ヶ原の戦い以前から徳川家に仕えていた大名を何と呼んだか。', '譜代大名', '近世', '{"accept":["譜代"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-34', '江戸幕府と各藩が全国を分けて支配した体制を何というか。', '幕藩体制', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-35', '江戸幕府が朝廷や公家を統制するため、1615年に定めた法令は何か。', '禁中並公家諸法度', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-36', '江戸時代、朝鮮から日本へ派遣された外交使節を何というか。', '朝鮮通信使', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-37', 'キリスト教徒を見つけるため、絵に描かれたキリストや聖母像を踏ませた方法を何というか。', '踏み絵', '近世', '{"accept":["絵踏み"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-38', 'キリスト教徒でないことを寺院に証明させた制度を何というか。', '寺請制度', '近世', '{"accept":["寺請"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-39', '江戸時代、江戸・大阪・京都をまとめて何と呼んだか。', '三都', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-40', '江戸時代、全国の年貢米や特産物が集まる都市に付けられた呼び名は何か。', '天下の台所', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-41', '江戸時代に整備され、大阪から日本海側を経て東北地方へ向かった航路は何か。', '西廻り航路', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-42', '江戸時代に整備され、大阪から太平洋側を経て江戸へ向かった航路は何か。', '東廻り航路', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-43', '江戸時代、幕府の命を受けて海運や河川の整備を進めた商人はだれか。', '河村瑞賢', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-44', '江戸時代、琉球王国に影響力を及ぼし、支配下に置いた藩はどこか。', '薩摩藩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-45', '江戸時代、蝦夷地南部を支配し、アイヌとの交易を行った藩はどこか。', '松前藩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'q-46', '1669年、アイヌの人々が指導者シャクシャインのもとで起こした戦いは何か。', 'シャクシャインの戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-01', '次の説明にあてはまる語句を答えなさい。
「日本が受け入れて降伏することになった、連合国からの宣言」', 'ポツダム宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-02', '「ポツダム宣言」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-03', '次の説明にあてはまる語句を答えなさい。
「戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革」', '農地改革', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-04', '次の説明にあてはまる語句を答えなさい。
「戦後、経済を支配していた大きな企業グループを解散させた改革」', '財閥解体', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-05', '次の説明にあてはまる語句を答えなさい。
「11月3日に公布され、翌年5月3日に施行された、日本の現在の憲法」', '日本国憲法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-06', '「日本国憲法」は西暦何年のことか。数字で答えなさい。', '1946', '現代', '{"accept":["1946年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-07', '次の説明にあてはまる語句を答えなさい。
「戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態」', '冷戦', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-08', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島で起こった戦争。日本は物資の生産で好景気となった」', '朝鮮戦争', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-09', '「朝鮮戦争」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-10', '次の説明にあてはまる語句を答えなさい。
「48か国と結ばれ、翌年日本が独立を回復した条約」', 'サンフランシスコ平和条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-11', '「サンフランシスコ平和条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-12', '次の説明にあてはまる人物はだれか。
「サンフランシスコ平和条約と日米安全保障条約に調印した首相」', '吉田茂', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-13', '次の説明にあてはまる語句を答えなさい。
「ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言」', '日ソ共同宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-14', '「日ソ共同宣言」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-15', '次の説明にあてはまる人物はだれか。
「1956年にソ連を訪れ、日ソ共同宣言に調印した首相」', '鳩山一郎', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-16', '次の説明にあてはまる語句を答えなさい。
「日ソ共同宣言によってソ連の反対がなくなり実現した」', '国際連合への加盟', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-17', '「国際連合への加盟」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-18', '次の説明にあてはまる語句を答えなさい。
「1955年から約38年間続いた、自由民主党が与党であり続けた政治体制」', '55年体制', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-19', '次の説明にあてはまる語句を答えなさい。
「1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期」', '高度経済成長', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-20', '次の説明にあてはまる語句を答えなさい。
「東京オリンピックに合わせて開通した高速鉄道」', '東海道新幹線', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-21', '「東海道新幹線」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-22', '次の説明にあてはまる語句を答えなさい。
「アジアで初めて開かれた大会。東海道新幹線の開通など高度経済成長を象徴した」', '東京オリンピック', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-23', '「東京オリンピック」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-24', '次の説明にあてはまる語句を答えなさい。
「高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく」', '四大公害病', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-25', '次の説明にあてはまる語句を答えなさい。
「中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事」', '石油危機', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-26', '「石油危機」は西暦何年のことか。数字で答えなさい。', '1973', '現代', '{"accept":["1973年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-27', '次の説明にあてはまる語句を答えなさい。
「アメリカの統治下から日本に復帰した出来事」', '沖縄の返還', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-28', '「沖縄の返還」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-29', '次の説明にあてはまる人物はだれか。
「沖縄の返還を実現し、非核三原則を表明した首相」', '佐藤栄作', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-30', '次の説明にあてはまる語句を答えなさい。
「日中共同声明によって中国との国交が結ばれたこと」', '日中国交正常化', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-31', '「日中国交正常化」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-32', '次の説明にあてはまる人物はだれか。
「1972年に中国を訪れ、日中共同声明に調印した首相」', '田中角栄', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-33', '次の説明にあてはまる語句を答えなさい。
「1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気」', 'バブル経済', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-34', '次の説明にあてはまる語句を答えなさい。
「戦後、日本を占領して民主化を指令した、アメリカを中心とする連合国の組織」', 'GHQ', '現代', '{"accept":["連合国軍最高司令官総司令部","連合国軍総司令部"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-35', '次の説明にあてはまる人物はだれか。
「GHQの最高司令官として、日本の占領政策を指揮した」', 'マッカーサー', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-36', '次の説明にあてはまる語句を答えなさい。
「サンフランシスコ平和条約と同じ日に結ばれ、独立後もアメリカ軍が日本にとどまることを認めた条約」', '日米安全保障条約', '現代', '{"accept":["日米安保条約","安保条約"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-37', '「日米安全保障条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-38', '次の説明にあてはまる語句を答えなさい。
「選挙法改正で、満20歳以上の男女に認められた権利」', '女性参政権', '現代', '{"accept":["婦人参政権","女性の参政権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-39', '「女性参政権」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-40', '次の説明にあてはまる語句を答えなさい。
「東西ドイツを分けていた壁がこわされ、冷戦の終わりを象徴した出来事」', 'ベルリンの壁の崩壊', '現代', '{"accept":["ベルリンの壁崩壊","ベルリンの壁がこわされた"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-41', '「ベルリンの壁の崩壊」は西暦何年のことか。数字で答えなさい。', '1989', '現代', '{"accept":["1989年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-42', '次の説明にあてはまる語句を答えなさい。
「アメリカとソ連の首脳が地中海の島で会談し、冷戦の終結を宣言した出来事」', 'マルタ会談', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-43', '「マルタ会談」は西暦何年のことか。数字で答えなさい。', '1989', '現代', '{"accept":["1989年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-44', '次の説明にあてはまる語句を答えなさい。
「15の共和国に分かれて消滅した、東側陣営の中心だった国の出来事」', 'ソ連の解体', '現代', '{"accept":["ソビエト連邦の解体","ソ連解体","ソ連の消滅"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-45', '「ソ連の解体」は西暦何年のことか。数字で答えなさい。', '1991', '現代', '{"accept":["1991年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-46', '次の説明にあてはまる語句を答えなさい。
「毛沢東を主席として成立した、東側陣営に属する中国の国家」', '中華人民共和国の成立', '現代', '{"accept":["中華人民共和国"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-47', '「中華人民共和国の成立」は西暦何年のことか。数字で答えなさい。', '1949', '現代', '{"accept":["1949年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-48', '次の説明にあてはまる語句を答えなさい。
「1947年に制定された、民主主義にもとづく教育の理念を定めた法律」', '教育基本法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-49', '次の説明にあてはまる語句を答えなさい。
「二度の世界大戦への反省から、世界の平和を守るために発足した国際組織」', '国際連合', '現代', '{"accept":["国連"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-50', '「国際連合」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-51', '次の説明にあてはまる語句を答えなさい。
「朝鮮戦争のとき、アメリカ軍向けの物資の注文が増えたことで日本が好景気になったこと」', '特需景気', '現代', '{"accept":["朝鮮特需","特需"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-52', '次の説明にあてはまる語句を答えなさい。
「朝鮮戦争をきっかけにGHQの指令でつくられた組織。のちの自衛隊のもと」', '警察予備隊', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-53', '「警察予備隊」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-54', '次の説明にあてはまる語句を答えなさい。
「警察予備隊・保安隊を経て発足した、日本の防衛にあたる組織」', '自衛隊', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-55', '「自衛隊」は西暦何年のことか。数字で答えなさい。', '1954', '現代', '{"accept":["1954年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-56', '次の説明にあてはまる語句を答えなさい。
「韓国を朝鮮半島唯一の政府と認め、国交を正常化した条約」', '日韓基本条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-57', '「日韓基本条約」は西暦何年のことか。数字で答えなさい。', '1965', '現代', '{"accept":["1965年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-58', '次の説明にあてはまる語句を答えなさい。
「日中国交正常化を受けて結ばれた、中国との友好を定めた条約」', '日中平和友好条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-59', '「日中平和友好条約」は西暦何年のことか。数字で答えなさい。', '1978', '現代', '{"accept":["1978年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-60', '次の説明にあてはまる語句を答えなさい。
「核兵器を「持たず、つくらず、持ちこませず」という、日本政府の方針」', '非核三原則', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-61', '次の説明にあてはまる語句を答えなさい。
「1973年に起こり、石油危機の引き金となった中東の戦争」', '第四次中東戦争', '現代', '{"accept":["中東戦争"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-62', '次の説明にあてはまる語句を答えなさい。
「公害から国民の健康を守るために制定された法律」', '公害対策基本法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-63', '「公害対策基本法」は西暦何年のことか。数字で答えなさい。', '1967', '現代', '{"accept":["1967年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-64', '次の説明にあてはまる語句を答えなさい。
「公害対策や自然保護を担当するために設置された国の役所。2001年に環境省となった」', '環境庁', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-65', '「環境庁」は西暦何年のことか。数字で答えなさい。', '1971', '現代', '{"accept":["1971年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-66', '次の説明にあてはまる語句を答えなさい。
「10年で国民の所得を2倍にすることを目標にかかげた政策」', '所得倍増計画', '現代', '{"accept":["国民所得倍増計画"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-67', '「所得倍増計画」は西暦何年のことか。数字で答えなさい。', '1960', '現代', '{"accept":["1960年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-68', '次の説明にあてはまる人物はだれか。
「所得倍増計画をかかげ、高度経済成長を進めた首相」', '池田勇人', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-69', '次の説明にあてはまる語句を答えなさい。
「地価や株価が急落してバブル経済が終わり、長い不況が始まった出来事」', 'バブル経済の崩壊', '現代', '{"accept":["バブルの崩壊","バブル崩壊"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-70', '「バブル経済の崩壊」は西暦何年のことか。数字で答えなさい。', '1991', '現代', '{"accept":["1991年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-71', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、国の政治のあり方を最終的に決める力が国民にあるとするもの」', '国民主権', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-72', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、人が生まれながらにもつ権利を侵してはならないとするもの」', '基本的人権の尊重', '現代', '{"accept":["基本的人権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-73', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、戦争を放棄し戦力をもたないとするもの。第9条に定められている」', '平和主義', '現代', '{"accept":["戦争の放棄"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-74', '第二次世界大戦後、日本の戦争指導者などを裁いた裁判を何というか。', '極東国際軍事裁判', '現代', '{"accept":["東京裁判"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-75', '1947年に施行され、労働条件の最低基準を定めた法律は何か。', '労働基準法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-76', '1960年、政府の条約改定方針に反対して広がった運動を何というか。', '安保闘争', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'q-77', '東西に分かれていたドイツが一つの国に統一されたのは西暦何年か。数字で答えなさい。', '1990', '現代', '{"accept":["1990年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-01', '次の説明にあてはまる語句を答えなさい。
「縄目の文様がつけられた、厚手で黒っぽい土器」', '縄文土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-02', '次の説明にあてはまる語句を答えなさい。
「地面を掘り下げ、柱を立てて屋根をかけた住まい」', '竪穴住居', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-03', '次の説明にあてはまる語句を答えなさい。
「当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる」', '貝塚', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-04', '次の説明にあてはまる語句を答えなさい。
「縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている」', '土偶', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-05', '次の説明にあてはまる語句を答えなさい。
「青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡」', '三内丸山遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-06', '次の説明にあてはまる語句を答えなさい。
「縄文土器より薄手でかたく、かざりの少ない赤褐色の土器」', '弥生土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-07', '次の説明にあてはまる語句を答えなさい。
「大陸から九州北部に伝わり、弥生時代に各地へ広まった農業」', '稲作', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-08', '次の説明にあてはまる語句を答えなさい。
「収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉」', '高床倉庫', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-09', '次の説明にあてはまる語句を答えなさい。
「静岡県にある、水田の跡が見つかった弥生時代の遺跡」', '登呂遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-10', '次の説明にあてはまる語句を答えなさい。
「佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡」', '吉野ヶ里遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-11', '次の説明にあてはまる語句を答えなさい。
「銅鐸や銅剣など、主に祭りの道具として使われた金属器」', '青銅器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-12', '次の説明にあてはまる語句を答えなさい。
「3世紀ごろ、女王が治めていたとされる国。魏に使いを送り「親魏倭王」の称号を得た」', '邪馬台国', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-13', '次の説明にあてはまる人物はだれか。
「魏に使いを送り、「親魏倭王」の称号と金印を授けられた」', '卑弥呼', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-14', '次の説明にあてはまる語句を答えなさい。
「3世紀後半から各地につくられた、王や豪族の大きな墓」', '古墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-15', '次の説明にあてはまる語句を答えなさい。
「円形と四角形を組み合わせた、かぎ穴のような形をした古墳」', '前方後円墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-16', '次の説明にあてはまる語句を答えなさい。
「大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる」', '大仙古墳', '原始', '{"accept":["大仙陵古墳","仁徳天皇陵古墳","仁徳天皇陵","大山古墳"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-17', '次の説明にあてはまる語句を答えなさい。
「古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある」', '埴輪', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-18', '次の説明にあてはまる語句を答えなさい。
「3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権」', '大和政権', '原始', '{"accept":["大和朝廷","ヤマト政権","ヤマト王権","大和王権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-19', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々」', '渡来人', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-20', '縄文時代より前で、狩りや採集を中心に生活していた時代を何というか。', '旧石器時代', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-21', '石を打ち欠いて刃をつくった石器を何というか。', '打製石器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-22', '群馬県で日本の旧石器時代の存在を示す石器が発見された遺跡は何か。', '岩宿遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-23', '縄文時代などに石器の材料として使われた、黒く光る火山岩を何というか。', '黒曜石', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-24', '弥生時代に、敵の侵入を防ぐため周囲を堀や柵で囲んだ集落を何というか。', '環濠集落', '原始', '{"accept":["環壕集落"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-25', '弥生時代に農具・工具・武器などに使われた金属器を何というか。', '鉄器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-26', '3世紀ごろの中国の歴史書で、邪馬台国や卑弥呼について記している部分は何か。', '魏志倭人伝', '古代', '{"accept":["魏書倭人伝","『魏志』倭人伝"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-27', '古墳時代、大和政権の王は何と呼ばれたか。', '大王', '原始', '{"accept":["おおきみ","大王（おおきみ）"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-28', '弥生時代に稲の穂先を摘み取るために使われた石器を何というか。', '石包丁', '原始', '{"accept":["石ぼうちょう","石庖丁"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-29', '弥生時代に稲作が広まると、人々の間にどのような差が生まれたか。', '貧富の差', '原始', '{"accept":["身分の差","貧富や身分の差"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-01', '次の説明にあてはまる語句を答えなさい。
「京都につくられ、以後約400年にわたって都となった」', '平安京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-02', '「平安京」は西暦何年のことか。数字で答えなさい。', '794', '古代', '{"accept":["794年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-03', '次の説明にあてはまる語句を答えなさい。
「唐のおとろえと航海の危険を理由に取りやめられた」', '遣唐使の停止', '古代', '{"accept":["遣唐使の廃止","遣唐使廃止","遣唐使停止","遣唐使の中止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-04', '「遣唐使の停止」は西暦何年のことか。数字で答えなさい。', '894', '古代', '{"accept":["894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-05', '次の説明にあてはまる人物はだれか。
「894年、遣唐使の停止を提案した」', '菅原道真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-06', '次の説明にあてはまる語句を答えなさい。
「藤原氏が娘を天皇のきさきにし、摂政・関白として実権をにぎった政治」', '摂関政治', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-07', '次の説明にあてはまる人物はだれか。
「4人の娘を天皇のきさきにし、摂関政治の全盛期を築いた」', '藤原道長', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-08', '次の説明にあてはまる語句を答えなさい。
「藤原氏が宇治に建てた阿弥陀堂。浄土信仰を代表する建物」', '平等院鳳凰堂', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-09', '「平等院鳳凰堂」は西暦何年のことか。数字で答えなさい。', '1053', '古代', '{"accept":["1053年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-10', '次の説明にあてはまる人物はだれか。
「宇治に平等院鳳凰堂を建てた」', '藤原頼通', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-11', '次の説明にあてはまる語句を答えなさい。
「遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化」', '国風文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-12', '次の説明にあてはまる語句を答えなさい。
「光源氏を主人公とする、国風文化を代表する長編物語」', '源氏物語', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-13', '次の説明にあてはまる人物はだれか。
「かな文字を用いて長編物語『源氏物語』を書いた」', '紫式部', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-14', '次の説明にあてはまる語句を答えなさい。
「「春はあけぼの」で始まる、宮中の生活をつづった随筆」', '枕草子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-15', '次の説明にあてはまる人物はだれか。
「宮中の生活を随筆『枕草子』につづった」', '清少納言', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-16', '次の説明にあてはまる語句を答えなさい。
「天皇の命令でまとめられた、最初の勅撰和歌集」', '古今和歌集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-17', '次の説明にあてはまる人物はだれか。
「『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた」', '紀貫之', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-18', '次の説明にあてはまる語句を答えなさい。
「阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表」', '浄土信仰', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-19', '次の説明にあてはまる語句を答えなさい。
「唐から伝えられ、比叡山延暦寺を中心に広まった仏教の宗派」', '天台宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-20', '次の説明にあてはまる人物はだれか。
「唐にわたって天台宗を学び、比叡山に延暦寺を建てた」', '最澄', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-21', '次の説明にあてはまる語句を答えなさい。
「唐から伝えられ、高野山金剛峯寺を中心に広まった仏教の宗派」', '真言宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-22', '次の説明にあてはまる人物はだれか。
「唐にわたって真言宗を学び、高野山に金剛峯寺を建てた」', '空海', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-23', '次の説明にあてはまる語句を答えなさい。
「貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった」', '荘園', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-24', '次の説明にあてはまる語句を答えなさい。
「天皇の位をゆずったあとも上皇として政治を動かす仕組み」', '院政', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-25', '「院政」は西暦何年のことか。数字で答えなさい。', '1086', '古代', '{"accept":["1086年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-26', '次の説明にあてはまる人物はだれか。
「天皇の位をゆずったあとも上皇として政治を行う院政を始めた」', '白河上皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-27', '次の説明にあてはまる語句を答えなさい。
「10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった」', '平将門の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-28', '次の説明にあてはまる語句を答えなさい。
「天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された」', '保元の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-29', '「保元の乱」は西暦何年のことか。数字で答えなさい。', '1156', '古代', '{"accept":["1156年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-30', '平安京に都を移した天皇はだれか。', '桓武天皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-31', '平城京の次に桓武天皇が置いた都は何か。', '長岡京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-32', '蝦夷を討つために任じられた役職は何か。', '征夷大将軍', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-33', '東北地方を中心に暮らしていた人々を当時何と呼んだか。', '蝦夷', '古代', '{"accept":["えみし","夷"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-34', '平安時代、京都の治安維持や犯罪の取り締まりを担った役所・役職を何というか。', '検非違使', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-35', '平将門の乱とほぼ同じころ、瀬戸内海で海賊を率いて起こった反乱を何というか。', '藤原純友の乱', '古代', '{"accept":["純友の乱"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-36', '平安時代、国司として任地に赴き、地方の政治や税の徴収を担った有力な役人を何というか。', '受領', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-37', '平安時代、地方で同族や主従関係をもとに形成された武士の集団を何というか。', '武士団', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-38', '保元の乱の後、平清盛と源義朝が争い、清盛が勝利した戦いを何というか。', '平治の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-39', '「平治の乱」は西暦何年のことか。数字で答えなさい。', '1159', '古代', '{"accept":["1159年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-40', '平安時代、東北地方で蝦夷を平定した武将はだれか。', '坂上田村麻呂', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-41', '『往生要集』を書き、浄土信仰を広めた僧はだれか。', '源信', '古代', '{"accept":["恵心僧都"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-42', '平安時代、各地をめぐって念仏を広めた僧はだれか。', '空也', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-43', '奥州藤原氏が平泉に建立し、金色堂で知られる寺院は何か。', '中尊寺', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-01', '次の説明にあてはまる語句を答えなさい。
「1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-02', '次の説明にあてはまる人物はだれか。
「武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-03', '次の説明にあてはまる語句を答えなさい。
「現在の山口県で平氏がほろんだ戦い」', '壇ノ浦の戦い', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-04', '「壇ノ浦の戦い」は西暦何年のことか。数字で答えなさい。', '1185', '中世', '{"accept":["1185年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-05', '次の説明にあてはまる語句を答えなさい。
「1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-06', '次の説明にあてはまる人物はだれか。
「守護・地頭を置き、鎌倉に幕府を開いた」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-07', '次の説明にあてはまる語句を答えなさい。
「後鳥羽上皇が幕府をたおそうとして起こしたが敗れた戦い」', '承久の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-08', '「承久の乱」は西暦何年のことか。数字で答えなさい。', '1221', '中世', '{"accept":["1221年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-09', '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府が定めた、武士の慣習をもとにした初めての武家法」', '御成敗式目', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-10', '「御成敗式目」は西暦何年のことか。数字で答えなさい。', '1232', '中世', '{"accept":["1232年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-11', '次の説明にあてはまる人物はだれか。
「執権として御成敗式目を定めた」', '北条泰時', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-12', '次の説明にあてはまる語句を答えなさい。
「元と高麗の軍が北九州にせめてきた最初の元寇」', '文永の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-13', '「文永の役」は西暦何年のことか。数字で答えなさい。', '1274', '中世', '{"accept":["1274年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-14', '次の説明にあてはまる語句を答えなさい。
「元が再び北九州にせめてきた二度目の元寇」', '弘安の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-15', '「弘安の役」は西暦何年のことか。数字で答えなさい。', '1281', '中世', '{"accept":["1281年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-16', '次の説明にあてはまる人物はだれか。
「執権として二度の元寇を退けた」', '北条時宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-17', '次の説明にあてはまる語句を答えなさい。
「源頼朝が国ごとに置いた、軍事・警察の仕事をする役職」', '守護', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-18', '次の説明にあてはまる語句を答えなさい。
「源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職」', '地頭', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-19', '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ」', '執権', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-20', '次の説明にあてはまる語句を答えなさい。
「将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係」', '御恩と奉公', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-21', '次の説明にあてはまる語句を答えなさい。
「将軍と主従関係を結んだ武士」', '御家人', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-22', '次の説明にあてはまる語句を答えなさい。
「鎌倉時代に後鳥羽上皇の命令でまとめられた歌集」', '新古今和歌集', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-23', '次の説明にあてはまる語句を答えなさい。
「平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた」', '平家物語', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-24', '次の説明にあてはまる語句を答えなさい。
「「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆」', '方丈記', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-25', '次の説明にあてはまる語句を答えなさい。
「「つれづれなるままに」で始まる、兼好法師の随筆」', '徒然草', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-26', '次の説明にあてはまる語句を答えなさい。
「運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻」', '金剛力士像', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-27', '次の説明にあてはまる語句を答えなさい。
「「南無阿弥陀仏」と念仏を唱えれば救われると説いた宗派」', '浄土宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-28', '次の説明にあてはまる人物はだれか。
「念仏を唱えれば救われると説き、浄土宗を開いた」', '法然', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-29', '次の説明にあてはまる語句を答えなさい。
「自分の罪を自覚した悪人こそ救われると説いた宗派」', '浄土真宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-30', '次の説明にあてはまる人物はだれか。
「法然の弟子で、浄土真宗を開いた」', '親鸞', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-31', '次の説明にあてはまる語句を答えなさい。
「「南無妙法蓮華経」と題目を唱えることを説いた宗派」', '日蓮宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-32', '次の説明にあてはまる人物はだれか。
「「南無妙法蓮華経」の題目を唱えれば救われると説いた、鎌倉時代の僧」', '日蓮', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-33', '次の説明にあてはまる語句を答えなさい。
「座禅によってさとりを開こうとする仏教。武士の気風に合い広まった」', '禅宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-34', '次の説明にあてはまる語句を答えなさい。
「同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった」', '二毛作', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-35', '次の説明にあてはまる語句を答えなさい。
「寺社の門前や交通の要地で、月に数回開かれた市」', '定期市', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-36', '源頼朝の弟で、兄と対立したのち奥州で亡くなった武将はだれか。', '源義経', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-37', '承久の乱の後、朝廷や西国の監視のため京都に置かれた機関は何か。', '六波羅探題', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-38', '御家人の借金を帳消しにするよう、1297年に鎌倉幕府が出した法令は何か。', '永仁の徳政令', '中世', '{"accept":["永仁徳政令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-39', '栄西が日本に伝え、鎌倉時代に武士の間にも広まった禅宗の一派は何か。', '臨済宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-40', '道元が開いた禅宗の一派は何か。', '曹洞宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'q-41', '源頼朝の死後に幕府を支え、尼将軍と呼ばれた人物はだれか。', '北条政子', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-01', '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府をたおした天皇が行った政治。武士の不満で2年余りで失敗した」', '建武の新政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-02', '「建武の新政」は西暦何年のことか。数字で答えなさい。', '1334', '中世', '{"accept":["1334年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-03', '次の説明にあてはまる人物はだれか。
「鎌倉幕府をたおし、建武の新政を行った」', '後醍醐天皇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-04', '次の説明にあてはまる語句を答えなさい。
「足利氏が京都に開いた幕府」', '室町幕府', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-05', '「室町幕府」は西暦何年のことか。数字で答えなさい。', '1338', '中世', '{"accept":["1338年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-06', '次の説明にあてはまる人物はだれか。
「征夷大将軍となり、京都に室町幕府を開いた」', '足利尊氏', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-07', '次の説明にあてはまる語句を答えなさい。
「明との間で行われた貿易。倭寇と区別するために合い札を用いた」', '勘合貿易', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-08', '「勘合貿易」は西暦何年のことか。数字で答えなさい。', '1404', '中世', '{"accept":["1404年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-09', '次の説明にあてはまる人物はだれか。
「南北朝を統一し、明と勘合貿易を始めた。金閣を建てた」', '足利義満', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-10', '次の説明にあてはまる語句を答えなさい。
「足利義満が京都の北山に建てた、公家と武家の文化が混じった建物」', '金閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-11', '次の説明にあてはまる語句を答えなさい。
「京都の東山に建てられた建物。簡素で落ち着いた造りが特徴」', '銀閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-12', '次の説明にあてはまる人物はだれか。
「東山に銀閣を建てた。その後継ぎ争いが応仁の乱の原因となった」', '足利義政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-13', '次の説明にあてはまる語句を答えなさい。
「11年続いた戦乱。京都が荒れ、戦国時代が始まるきっかけとなった」', '応仁の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-14', '「応仁の乱」は西暦何年のことか。数字で答えなさい。', '1467', '中世', '{"accept":["1467年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-15', '次の説明にあてはまる語句を答えなさい。
「種子島に流れ着いたポルトガル人によって伝えられた」', '鉄砲の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-16', '「鉄砲の伝来」は西暦何年のことか。数字で答えなさい。', '1543', '中世', '{"accept":["1543年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-17', '次の説明にあてはまる語句を答えなさい。
「鹿児島に上陸した宣教師によって伝えられた」', 'キリスト教の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-18', '「キリスト教の伝来」は西暦何年のことか。数字で答えなさい。', '1549', '中世', '{"accept":["1549年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-19', '次の説明にあてはまる人物はだれか。
「1549年に鹿児島に来て、日本にキリスト教を伝えた」', 'フランシスコ・ザビエル', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-20', '次の説明にあてはまる語句を答えなさい。
「室町時代に父子によって大成された、面をつけて演じる舞台芸能」', '能', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-21', '次の説明にあてはまる人物はだれか。
「父の観阿弥とともに能を大成した」', '世阿弥', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-22', '次の説明にあてはまる語句を答えなさい。
「墨の濃淡だけで自然をえがく絵画。室町時代に日本独自の様式が完成した」', '水墨画', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-23', '次の説明にあてはまる人物はだれか。
「明にわたって学び、日本の水墨画を大成した」', '雪舟', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-24', '次の説明にあてはまる語句を答えなさい。
「床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった」', '書院造', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-25', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が寄合を開いて村のきまりを定めた自治組織」', '惣', '中世', '{"accept":["惣村"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-26', '次の説明にあてはまる語句を答えなさい。
「商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合」', '座', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-27', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆」', '土一揆', '中世', '{"accept":["徳政一揆"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-28', '次の説明にあてはまる語句を答えなさい。
「地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴」', '下剋上', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-29', '次の説明にあてはまる語句を答えなさい。
「戦国大名が領国を治めるために独自に定めたきまり」', '分国法', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-30', '次の説明にあてはまる語句を答えなさい。
「馬を使って物資を運んだ運送業者。土一揆の中心になることもあった」', '馬借', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-31', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた」', '倭寇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-32', '次の説明にあてはまる語句を答えなさい。
「14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き」', 'ルネサンス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-33', '次の説明にあてはまる語句を答えなさい。
「16世紀、免罪符を売る教会を批判して始まったキリスト教の改革」', '宗教改革', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-34', '次の説明にあてはまる人物はだれか。
「免罪符を売る教会を批判し、宗教改革を始めた」', 'ルター', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-35', '次の説明にあてはまる語句を答えなさい。
「1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-36', '次の説明にあてはまる人物はだれか。
「1492年に大西洋を横断し、アメリカ大陸付近の島に到達した」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-37', '次の説明にあてはまる語句を答えなさい。
「その船隊が初めて世界一周を成しとげた人物」', 'マゼラン', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-38', '京都と吉野に朝廷が並び立った時代を何というか。', '南北朝時代', '中世', '{"accept":["南北朝"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-39', '室町幕府で将軍を補佐し、有力な守護大名から選ばれた役職は何か。', '管領', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-40', '室町時代に力を強め、領国を支配するようになった守護を何というか。', '守護大名', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-41', '金閣に代表される、室町時代前半の文化を何というか。', '北山文化', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-42', '銀閣や書院造に代表される、室町時代後半の文化を何というか。', '東山文化', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-43', '尚巴志が三山を統一して成立させた王国は何か。', '琉球王国', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-44', '室町時代に商人の自治が発達した代表的な港町を一つ答えなさい。', '堺', '中世', '{"accept":["博多"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-45', '浄土真宗の門徒などが寺院や守護大名に対抗して起こした一揆を何というか。', '一向一揆', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'q-46', '1485年、国人や農民が守護大名を追い出し自治を行った一揆を何というか。', '山城の国一揆', '中世', '{"accept":["山城国一揆"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-01', '次の説明にあてはまる語句を答えなさい。
「奈良につくられた、唐の長安にならった都」', '平城京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-02', '「平城京」は西暦何年のことか。数字で答えなさい。', '710', '古代', '{"accept":["710年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-03', '次の説明にあてはまる語句を答えなさい。
「新しく開墾した土地の永久私有を認めた法。公地公民の原則がくずれるきっかけになった」', '墾田永年私財法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-04', '「墾田永年私財法」は西暦何年のことか。数字で答えなさい。', '743', '古代', '{"accept":["743年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-05', '次の説明にあてはまる語句を答えなさい。
「仏教の力で国を守ろうとしてつくられた、奈良の大仏」', '東大寺の大仏', '古代', '{"accept":["大仏","奈良の大仏","盧舎那仏"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-06', '「東大寺の大仏」は西暦何年のことか。数字で答えなさい。', '752', '古代', '{"accept":["752年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-07', '次の説明にあてはまる人物はだれか。
「仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた」', '聖武天皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-08', '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、日本最古の歴史書」', '古事記', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-09', '「古事記」は西暦何年のことか。数字で答えなさい。', '712', '古代', '{"accept":["712年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-10', '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、国家の正式な歴史書」', '日本書紀', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-11', '「日本書紀」は西暦何年のことか。数字で答えなさい。', '720', '古代', '{"accept":["720年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-12', '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集」', '万葉集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-13', '次の説明にあてはまる語句を答えなさい。
「奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化」', '天平文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-14', '次の説明にあてはまる語句を答えなさい。
「東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている」', '正倉院', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-15', '次の説明にあてはまる語句を答えなさい。
「何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺」', '唐招提寺', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-16', '次の説明にあてはまる人物はだれか。
「何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた」', '鑑真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-17', '新しく開墾した土地を三代に限って私有できるとした法は何か。', '三世一身法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-18', '「三世一身法」は西暦何年に出されたか。数字で答えなさい。', '723', '古代', '{"accept":["723年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-19', '聖武天皇が全国に国分寺と国分尼寺を置くよう命じたものは何か。', '国分寺建立の詔', '古代', '{"accept":["国分寺建立の詔書","国分寺建立の命令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-20', '「国分寺建立の詔」が出されたのは西暦何年か。数字で答えなさい。', '741', '古代', '{"accept":["741年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-21', '民衆に仏教を広め、東大寺の大仏づくりにも協力した僧はだれか。', '行基', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-22', '遣唐使として唐に渡り、帰国できずに唐の役人として活躍した人物はだれか。', '阿倍仲麻呂', '古代', '{"accept":["安倍仲麻呂","阿倍仲麿"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-23', '奈良時代に、地方の地理や産物、伝承などを記録するため国ごとにまとめられた書物を何というか。', '風土記', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-24', '718年に完成し、のちの757年に施行された律令は何か。', '養老律令', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-25', '729年、藤原氏との政争に敗れて自害した皇族を中心とする事件を何というか。', '長屋王の変', '古代', '{"accept":["長屋王事件"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-26', '孝謙上皇側と対立した貴族が、764年に起こした反乱を何というか。', '藤原仲麻呂の乱', '古代', '{"accept":["恵美押勝の乱","恵美押勝の反乱"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-27', '708年に鋳造が始まった、日本で最初の流通を目指した銅銭は何か。', '和同開珎', '古代', '{"accept":["和同開宝"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-28', '奈良時代、平城京の東西に置かれ、品物の売買が行われた場所を何というか。', '市', '古代', '{"accept":["東市","西市"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-29', '奈良時代、農民が都まで税を運ぶために負った労役を何というか。', '運脚', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-30', '奈良時代、農民に稲を貸し付け、利息をつけて返させた制度を何というか。', '出挙', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-01', 'ナイル川の流域で栄え、ピラミッドを築いた古代文明は何か。', 'エジプト文明', '古代文明', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-02', '古代エジプトで使われた、絵をもとにした文字は何か。', '象形文字', '古代文明', '{"accept":["ヒエログリフ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-03', 'チグリス川・ユーフラテス川の流域で栄えた古代文明は何か。', 'メソポタミア文明', '古代文明', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-04', '古代の西アジアで粘土板に刻まれた文字は何か。', 'くさび形文字', '古代文明', '{"accept":["楔形文字"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-05', 'インダス川の流域で栄え、モヘンジョ・ダロなどの都市を築いた文明は何か。', 'インダス文明', '古代文明', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-06', '黄河流域で栄え、甲骨文字を使った中国の古代文明を築いた王朝は何か。', '殷', '古代文明', '{"accept":["商"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-07', '古代中国で、亀の甲や獣の骨に刻まれた文字を何というか。', '甲骨文字', '古代文明', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-08', '「仁」を重んじる教えを説き、儒学の祖とされる思想家はだれか。', '孔子', '宗教・思想', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-09', '仁や礼を重んじ、中国や東アジアに広まった思想を何というか。', '儒教', '宗教・思想', '{"accept":["儒学"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-10', 'インドで仏教を開いた人物はだれか。', '釈迦', '宗教・思想', '{"accept":["仏陀","ブッダ","ゴータマ・シッダールタ","ゴータマ・ブッダ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-11', '古代パレスチナでイエスが説いた宗教は何か。', 'キリスト教', '宗教・思想', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-12', 'イスラム教を開いた人物はだれか。', 'ムハンマド', '宗教・思想', '{"accept":["マホメット"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-13', '唯一神アッラーへの信仰を中心とする宗教は何か。', 'イスラム教', '宗教・思想', '{"accept":["イスラーム"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-14', '中国を初めて統一し、皇帝の称号を用いた秦の王はだれか。', '始皇帝', '中国史', '{"accept":["秦の始皇帝","秦始皇帝","嬴政"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-15', '漢の時代に中国から西方へ通じ、絹などが運ばれた交易路を何というか。', 'シルクロード', '中国史', '{"accept":["絹の道"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-16', '古代ギリシャで、都市国家を何と呼んだか。', 'ポリス', 'ギリシャ・ローマ', '{"accept":["都市国家"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-17', '古代ギリシャのアテネで行われた、成年男子市民が政治に参加する政治を何というか。', '民主政', 'ギリシャ・ローマ', '{"accept":["民主政治"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-18', '地中海沿岸を広く支配し、共和政から帝政へ移った古代の国は何か。', 'ローマ帝国', 'ギリシャ・ローマ', '{"accept":["ローマ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-19', '中世にキリスト教の聖地を取り戻すとして、ヨーロッパから西アジアへ送られた軍隊を何というか。', '十字軍', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-20', '中国で元を建てた、モンゴル帝国の皇帝はだれか。', 'フビライ・ハン', '中世', '{"accept":["フビライ","クビライ・ハン","クビライ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-21', '朝鮮王朝で、ハングルの創製を進めた国王はだれか。', '世宗', '中世', '{"accept":["世宗大王","李氏朝鮮の世宗"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-22', '1498年にヨーロッパからアフリカ南端を回り、インドに到達したポルトガル人はだれか。', 'バスコ・ダ・ガマ', '大航海時代', '{"accept":["ヴァスコ・ダ・ガマ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-23', 'イグナティウス・ロヨラらが結成し、カトリックの海外布教を進めた修道会は何か。', 'イエズス会', '大航海時代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-24', '自然権や抵抗権を説き、社会契約論に影響を与えたイギリスの思想家はだれか。', 'ロック', '近代ヨーロッパ', '{"accept":["ジョン・ロック"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-25', '人民主権や社会契約を説いたフランスの思想家はだれか。', 'ルソー', '近代ヨーロッパ', '{"accept":["ジャン＝ジャック・ルソー","ジャン・ジャック・ルソー"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-26', '権力を立法・行政・司法に分ける考えを説いた思想家はだれか。', 'モンテスキュー', '近代ヨーロッパ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-27', 'フランス革命の初期に採択され、自由や権利の平等を掲げた宣言は何か。', '人権宣言', '近代ヨーロッパ', '{"accept":["フランス人権宣言","人間と市民の権利の宣言","人および市民の権利の宣言"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-28', 'フランス革命後に皇帝となり、ヨーロッパ各地へ遠征した人物はだれか。', 'ナポレオン', '近代ヨーロッパ', '{"accept":["ナポレオン・ボナパルト"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-29', '蒸気機関を改良し、産業革命の進展に大きく貢献したイギリス人はだれか。', 'ワット', '近代ヨーロッパ', '{"accept":["ジェームズ・ワット"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-30', '1857年、インドでイギリスの支配に対して起こった大規模な反乱を何というか。', 'インド大反乱', '近代ヨーロッパ', '{"accept":["セポイの反乱","インド大反乱（セポイの反乱）"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-31', 'プロイセンを中心にドイツ統一を進めた宰相はだれか。', 'ビスマルク', '近代ヨーロッパ', '{"accept":["オットー・フォン・ビスマルク"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-32', '欧米列強が市場や原料供給地を求め、アジア・アフリカなどを植民地化した動きを何というか。', '帝国主義', '近代ヨーロッパ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-33', '第一次世界大戦前、ドイツ・オーストリア・イタリアが結んだ同盟を何というか。', '三国同盟', '近代ヨーロッパ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-sekai', 'q-34', '第一次世界大戦前、イギリス・フランス・ロシアの協力関係を何というか。', '三国協商', '近代ヨーロッパ', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-01', '次の説明にあてはまる語句を答えなさい。
「ヨーロッパで始まった世界的な戦争。日本も参戦し、中国に二十一か条の要求を出した」', '第一次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-02', '「第一次世界大戦」は西暦何年のことか。数字で答えなさい。', '1914', '近代', '{"accept":["1914年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-03', '次の説明にあてはまる語句を答えなさい。
「世界で初めての社会主義国が生まれるきっかけとなった革命」', 'ロシア革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-04', '「ロシア革命」は西暦何年のことか。数字で答えなさい。', '1917', '近代', '{"accept":["1917年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-05', '次の説明にあてはまる語句を答えなさい。
「米の値上がりに対して富山県から全国に広がった民衆の運動」', '米騒動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-06', '「米騒動」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-07', '次の説明にあてはまる語句を答えなさい。
「衆議院で多数を占める政党が中心となって組織する内閣」', '政党内閣', '近代', '{"accept":["本格的な政党内閣","原敬内閣"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-08', '「政党内閣」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-09', '次の説明にあてはまる人物はだれか。
「1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた」', '原敬', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-10', '次の説明にあてはまる語句を答えなさい。
「大正時代に高まった、民主主義を求める風潮」', '大正デモクラシー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-11', '次の説明にあてはまる語句を答えなさい。
「満25歳以上のすべての男子に選挙権を認めた法律」', '普通選挙法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-12', '「普通選挙法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-13', '次の説明にあてはまる語句を答えなさい。
「共産主義などの運動を取りしまるために定められた法律」', '治安維持法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-14', '「治安維持法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-15', '次の説明にあてはまる語句を答えなさい。
「東京や横浜に大きな被害をもたらした地震災害」', '関東大震災', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-16', '「関東大震災」は西暦何年のことか。数字で答えなさい。', '1923', '近代', '{"accept":["1923年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-17', '次の説明にあてはまる語句を答えなさい。
「第一次世界大戦の反省から世界平和のためにつくられた国際組織」', '国際連盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-18', '「国際連盟」は西暦何年のことか。数字で答えなさい。', '1920', '近代', '{"accept":["1920年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-19', '次の説明にあてはまる語句を答えなさい。
「アメリカの株価暴落をきっかけに世界中に広がった不景気」', '世界恐慌', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-20', '「世界恐慌」は西暦何年のことか。数字で答えなさい。', '1929', '近代', '{"accept":["1929年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-21', '次の説明にあてはまる語句を答えなさい。
「南満州鉄道の爆破をきっかけに始まった軍事行動。翌年、満州国がつくられた」', '満州事変', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-22', '「満州事変」は西暦何年のことか。数字で答えなさい。', '1931', '近代', '{"accept":["1931年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-23', '次の説明にあてはまる語句を答えなさい。
「満州事変のあとに日本が中国東北部につくった国」', '満州国', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-24', '「満州国」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-25', '次の説明にあてはまる語句を答えなさい。
「満州国を認められなかった日本が通告した」', '国際連盟からの脱退', '近代', '{"accept":["国際連盟脱退","連盟脱退"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-26', '「国際連盟からの脱退」は西暦何年のことか。数字で答えなさい。', '1933', '近代', '{"accept":["1933年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-27', '次の説明にあてはまる語句を答えなさい。
「海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった」', '五・一五事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-28', '「五・一五事件」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-29', '次の説明にあてはまる語句を答えなさい。
「陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件」', '二・二六事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-30', '「二・二六事件」は西暦何年のことか。数字で答えなさい。', '1936', '近代', '{"accept":["1936年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-31', '次の説明にあてはまる語句を答えなさい。
「北京郊外での衝突をきっかけに始まった中国との戦争」', '日中戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-32', '「日中戦争」は西暦何年のことか。数字で答えなさい。', '1937', '近代', '{"accept":["1937年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-33', '次の説明にあてはまる語句を答えなさい。
「戦争のために国民や物資を政府が自由に動かせるようにした法律」', '国家総動員法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-34', '「国家総動員法」は西暦何年のことか。数字で答えなさい。', '1938', '近代', '{"accept":["1938年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-35', '次の説明にあてはまる語句を答えなさい。
「ドイツのポーランド侵攻によって始まった世界的な戦争」', '第二次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-36', '「第二次世界大戦」は西暦何年のことか。数字で答えなさい。', '1939', '近代', '{"accept":["1939年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-37', '次の説明にあてはまる語句を答えなさい。
「第二次世界大戦中、日本がアメリカやイギリスなどと戦った戦争」', '太平洋戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-38', '「太平洋戦争」は西暦何年のことか。数字で答えなさい。', '1941', '近代', '{"accept":["1941年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-39', '1915年、日本に対して中国に認めさせるよう要求されたものを何というか。', '二十一か条の要求', '近代', '{"accept":["21か条の要求"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-40', '第一次世界大戦後、ドイツとの講和条件を定めた条約は何か。', 'ベルサイユ条約', '近代', '{"accept":["ヴェルサイユ条約"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-41', '1919年、朝鮮で日本からの独立を求めて起こった運動を何というか。', '三・一独立運動', '近代', '{"accept":["3・1独立運動","三一独立運動"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-42', '1919年、中国で日本の要求などに反対して起こった運動を何というか。', '五・四運動', '近代', '{"accept":["5・4運動"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-43', 'ロシア革命後、日本などが革命政府と戦う勢力を支援するために行った軍事介入を何というか。', 'シベリア出兵', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-44', '1930年代、アメリカが公共事業などで世界恐慌からの回復を目指した政策は何か。', 'ニューディール政策', '近代', '{"accept":["ニューディール"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-45', '1930年代、植民地や勢力圏を囲い込み、貿易を自国中心にしようとした経済政策を何というか。', 'ブロック経済', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-46', 'イタリアのムッソリーニやドイツのヒトラーに代表される、独裁的な政治運動を何というか。', 'ファシズム', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-47', '1941年、日本軍が攻撃し、太平洋戦争が始まるきっかけとなったハワイのアメリカ軍基地はどこか。', '真珠湾', '近代', '{"accept":["パールハーバー"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-48', '1942年、日本海軍が大きな損害を受け、太平洋戦争の転機となった海戦は何か。', 'ミッドウェー海戦', '近代', '{"accept":["ミッドウェー島沖海戦"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-49', '1944年、東京などへの空襲が激しくなる中、子どもたちを地方へ移したことを何というか。', '学童疎開', '近代', '{"accept":["疎開"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-50', '1944年、戦争のために学生が兵役に動員されたことを何というか。', '学徒出陣', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-51', '1945年3月、アメリカ軍が東京に大きな被害を与えた大規模な空襲を何というか。', '東京大空襲', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-52', '1945年8月6日、原子爆弾が投下された都市はどこか。', '広島', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-53', '1945年8月9日、原子爆弾が投下された都市はどこか。', '長崎', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-54', '1945年、日本が連合国に受け入れて戦争を終結させた宣言は何か。', 'ポツダム宣言', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'q-55', '1945年8月15日、日本が国民に戦争終結を知らせた放送を何というか。', '玉音放送', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-01', '次の説明にあてはまる世界遺産は？
「現存する世界最古の木造建築群として知られる仏教寺院」', '法隆寺地域の仏教建造物', '文化遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-02', '「法隆寺地域の仏教建造物」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-03', '「法隆寺地域の仏教建造物」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-04', '次の説明にあてはまる世界遺産は？
「白鷺城とも呼ばれる、白い外観が美しい天守を持つ城」', '姫路城', '文化遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-05', '「姫路城」の所在都道府県を1つ答えなさい。', '兵庫県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-06', '「姫路城」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-07', '次の説明にあてはまる世界遺産は？
「清水寺や金閣寺など、古い都に残る社寺・城の総称」', '古都京都の文化財', '文化遺産', '{"year":1994}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-08', '「古都京都の文化財」の所在都道府県を1つ答えなさい。', '京都府', '文化遺産', '{"accept":["滋賀県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-09', '「古都京都の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-10', '次の説明にあてはまる世界遺産は？
「急な茅葺き屋根が特徴的な、豪雪地帯の伝統的な家屋群」', '白川郷・五箇山の合掌造り集落', '文化遺産', '{"year":1995}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-11', '「白川郷・五箇山の合掌造り集落」の所在都道府県を1つ答えなさい。', '岐阜県', '文化遺産', '{"accept":["富山県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-12', '「白川郷・五箇山の合掌造り集落」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-13', '次の説明にあてはまる世界遺産は？
「原子爆弾の惨禍を伝える、骨組みだけが残された建物」', '原爆ドーム', '文化遺産', '{"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-14', '「原爆ドーム」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-15', '「原爆ドーム」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-16', '次の説明にあてはまる世界遺産は？
「海上に立つ朱色の大鳥居で知られる神社」', '厳島神社', '文化遺産', '{"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-17', '「厳島神社」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-18', '「厳島神社」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-19', '次の説明にあてはまる世界遺産は？
「東大寺や興福寺など、かつての都に残る寺社群」', '古都奈良の文化財', '文化遺産', '{"year":1998}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-20', '「古都奈良の文化財」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-21', '「古都奈良の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-22', '次の説明にあてはまる世界遺産は？
「「見ざる言わざる聞かざる」の彫刻で知られる東照宮を含む社寺群」', '日光の社寺', '文化遺産', '{"year":1999}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-23', '「日光の社寺」の所在都道府県を1つ答えなさい。', '栃木県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-24', '「日光の社寺」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-25', '次の説明にあてはまる世界遺産は？
「首里城跡を中心とする、かつての王国の城・聖地群」', '琉球王国のグスク及び関連遺産群', '文化遺産', '{"year":2000}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-26', '「琉球王国のグスク及び関連遺産群」の所在都道府県を1つ答えなさい。', '沖縄県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-27', '「琉球王国のグスク及び関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-28', '次の説明にあてはまる世界遺産は？
「熊野古道など、山岳信仰の霊場と参詣道からなる遺産」', '紀伊山地の霊場と参詣道', '文化遺産', '{"year":2004}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-29', '「紀伊山地の霊場と参詣道」の所在都道府県を1つ答えなさい。', '三重県', '文化遺産', '{"accept":["奈良県","和歌山県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-30', '「紀伊山地の霊場と参詣道」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-31', '次の説明にあてはまる世界遺産は？
「かつて世界有数の産出量を誇った、銀の採掘・精錬の遺跡」', '石見銀山遺跡とその文化的景観', '文化遺産', '{"year":2007}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-32', '「石見銀山遺跡とその文化的景観」の所在都道府県を1つ答えなさい。', '島根県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-33', '「石見銀山遺跡とその文化的景観」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-34', '次の説明にあてはまる世界遺産は？
「中尊寺金色堂など、浄土思想を表す寺院・庭園群」', '平泉', '文化遺産', '{"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-35', '「平泉」の所在都道府県を1つ答えなさい。', '岩手県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-36', '「平泉」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-37', '次の説明にあてはまる世界遺産は？
「信仰の対象であり、多くの芸術作品の題材となった日本一の山」', '富士山', '文化遺産', '{"year":2013}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-38', '「富士山」の所在都道府県を1つ答えなさい。', '山梨県', '文化遺産', '{"accept":["静岡県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-39', '「富士山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-40', '次の説明にあてはまる世界遺産は？
「明治時代に建てられた、日本の近代製糸業を支えた工場」', '富岡製糸場と絹産業遺産群', '文化遺産', '{"year":2014}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-41', '「富岡製糸場と絹産業遺産群」の所在都道府県を1つ答えなさい。', '群馬県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-42', '「富岡製糸場と絹産業遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-43', '次の説明にあてはまる世界遺産は？
「製鉄・製鋼、造船、石炭産業に関する、幕末から明治期の産業施設群」', '明治日本の産業革命遺産', '文化遺産', '{"year":2015}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-44', '「明治日本の産業革命遺産」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', '{"accept":["佐賀県","長崎県","熊本県","鹿児島県","山口県","岩手県","静岡県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-45', '「明治日本の産業革命遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-46', '次の説明にあてはまる世界遺産は？
「フランス人建築家が設計した、上野にある美術館を含む国際的な建築群」', 'ル・コルビュジエの建築作品', '文化遺産', '{"year":2016,"accept":["国立西洋美術館"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-47', '「ル・コルビュジエの建築作品」の所在都道府県を1つ答えなさい。', '東京都', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-48', '「ル・コルビュジエの建築作品」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-49', '次の説明にあてはまる世界遺産は？
「女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産」', '「神宿る島」宗像・沖ノ島と関連遺産群', '文化遺産', '{"year":2017,"accept":["宗像・沖ノ島","神宿る島 宗像・沖ノ島と関連遺産群"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-50', '「「神宿る島」宗像・沖ノ島と関連遺産群」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-51', '「「神宿る島」宗像・沖ノ島と関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-52', '次の説明にあてはまる世界遺産は？
「禁教期にひそかに信仰を続けた人々に関わる教会・集落群」', '長崎と天草地方の潜伏キリシタン関連遺産', '文化遺産', '{"year":2018}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-53', '「長崎と天草地方の潜伏キリシタン関連遺産」の所在都道府県を1つ答えなさい。', '長崎県', '文化遺産', '{"accept":["熊本県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-54', '「長崎と天草地方の潜伏キリシタン関連遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-55', '次の説明にあてはまる世界遺産は？
「仁徳天皇陵古墳を含む、日本最大級の前方後円墳が集まる古墳群」', '百舌鳥・古市古墳群', '文化遺産', '{"year":2019}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-56', '「百舌鳥・古市古墳群」の所在都道府県を1つ答えなさい。', '大阪府', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-57', '「百舌鳥・古市古墳群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-58', '次の説明にあてはまる世界遺産は？
「三内丸山遺跡など、狩猟採集による定住生活を示す縄文時代の遺跡群」', '北海道・北東北の縄文遺跡群', '文化遺産', '{"year":2021}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-59', '「北海道・北東北の縄文遺跡群」の所在都道府県を1つ答えなさい。', '北海道', '文化遺産', '{"accept":["青森県","岩手県","秋田県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-60', '「北海道・北東北の縄文遺跡群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-61', '次の説明にあてはまる世界遺産は？
「江戸時代に日本最大の産出量を誇った、手作業による採掘技術が評価された金山」', '佐渡島の金山', '文化遺産', '{"year":2024}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-62', '「佐渡島の金山」の所在都道府県を1つ答えなさい。', '新潟県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-63', '「佐渡島の金山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-64', '次の説明にあてはまる世界遺産は？
「樹齢数千年ともいわれる屋久杉で知られる、亜熱帯から亜寒帯までの植生が分布する島」', '屋久島', '自然遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-65', '「屋久島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-66', '「屋久島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-67', '次の説明にあてはまる世界遺産は？
「世界最大級のブナの原生林が広がる山地」', '白神山地', '自然遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-68', '「白神山地」の所在都道府県を1つ答えなさい。', '青森県', '自然遺産', '{"accept":["秋田県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-69', '「白神山地」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-70', '次の説明にあてはまる世界遺産は？
「流氷が育む豊かな生態系と、ヒグマなど野生動物の宝庫として知られる半島」', '知床', '自然遺産', '{"year":2005}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-71', '「知床」の所在都道府県を1つ答えなさい。', '北海道', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-72', '「知床」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-73', '次の説明にあてはまる世界遺産は？
「独自の進化を遂げた生物が多く、「東洋のガラパゴス」とも呼ばれる諸島」', '小笠原諸島', '自然遺産', '{"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-74', '「小笠原諸島」の所在都道府県を1つ答えなさい。', '東京都', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-75', '「小笠原諸島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-76', '次の説明にあてはまる世界遺産は？
「アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々」', '奄美大島、徳之島、沖縄島北部及び西表島', '自然遺産', '{"year":2021,"accept":["奄美・沖縄","奄美大島と沖縄島","奄美大島"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-77', '「奄美大島、徳之島、沖縄島北部及び西表島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', '{"accept":["沖縄県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'q-78', '「奄美大島、徳之島、沖縄島北部及び西表島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-01', '次の地図で色がついている都道府県はどこか。', '北海道', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-02', '次の地図で色がついている都道府県はどこか。', '青森県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-03', '次の地図で色がついている都道府県はどこか。', '岩手県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-04', '次の地図で色がついている都道府県はどこか。', '宮城県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-05', '次の地図で色がついている都道府県はどこか。', '秋田県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-06', '次の地図で色がついている都道府県はどこか。', '山形県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-07', '次の地図で色がついている都道府県はどこか。', '福島県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-08', '次の地図で色がついている都道府県はどこか。', '茨城県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-09', '次の地図で色がついている都道府県はどこか。', '栃木県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-10', '次の地図で色がついている都道府県はどこか。', '群馬県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-11', '次の地図で色がついている都道府県はどこか。', '埼玉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-12', '次の地図で色がついている都道府県はどこか。', '千葉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-13', '次の地図で色がついている都道府県はどこか。', '東京都', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-14', '次の地図で色がついている都道府県はどこか。', '神奈川県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-15', '次の地図で色がついている都道府県はどこか。', '新潟県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-16', '次の地図で色がついている都道府県はどこか。', '富山県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-17', '次の地図で色がついている都道府県はどこか。', '石川県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-18', '次の地図で色がついている都道府県はどこか。', '福井県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-19', '次の地図で色がついている都道府県はどこか。', '山梨県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-20', '次の地図で色がついている都道府県はどこか。', '長野県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-21', '次の地図で色がついている都道府県はどこか。', '岐阜県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-22', '次の地図で色がついている都道府県はどこか。', '静岡県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-23', '次の地図で色がついている都道府県はどこか。', '愛知県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-24', '次の地図で色がついている都道府県はどこか。', '三重県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-25', '次の地図で色がついている都道府県はどこか。', '滋賀県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-26', '次の地図で色がついている都道府県はどこか。', '京都府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-27', '次の地図で色がついている都道府県はどこか。', '大阪府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-28', '次の地図で色がついている都道府県はどこか。', '兵庫県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-29', '次の地図で色がついている都道府県はどこか。', '奈良県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-30', '次の地図で色がついている都道府県はどこか。', '和歌山県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-31', '次の地図で色がついている都道府県はどこか。', '鳥取県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-32', '次の地図で色がついている都道府県はどこか。', '島根県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-33', '次の地図で色がついている都道府県はどこか。', '岡山県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-34', '次の地図で色がついている都道府県はどこか。', '広島県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-35', '次の地図で色がついている都道府県はどこか。', '山口県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-36', '次の地図で色がついている都道府県はどこか。', '徳島県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-37', '次の地図で色がついている都道府県はどこか。', '香川県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-38', '次の地図で色がついている都道府県はどこか。', '愛媛県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-39', '次の地図で色がついている都道府県はどこか。', '高知県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-40', '次の地図で色がついている都道府県はどこか。', '福岡県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-41', '次の地図で色がついている都道府県はどこか。', '佐賀県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-42', '次の地図で色がついている都道府県はどこか。', '長崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-43', '次の地図で色がついている都道府県はどこか。', '熊本県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-44', '次の地図で色がついている都道府県はどこか。', '大分県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-45', '次の地図で色がついている都道府県はどこか。', '宮崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-46', '次の地図で色がついている都道府県はどこか。', '鹿児島県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', 'q-47', '次の地図で色がついている都道府県はどこか。', '沖縄県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-01', '北海道', '北海道', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-02', '青森県', '青森県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-03', '岩手県', '岩手県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-04', '宮城県', '宮城県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-05', '秋田県', '秋田県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-06', '山形県', '山形県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-07', '福島県', '福島県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-08', '茨城県', '茨城県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-09', '栃木県', '栃木県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-10', '群馬県', '群馬県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-11', '埼玉県', '埼玉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-12', '千葉県', '千葉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-13', '東京都', '東京都', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-14', '神奈川県', '神奈川県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-15', '新潟県', '新潟県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-16', '富山県', '富山県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-17', '石川県', '石川県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-18', '福井県', '福井県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-19', '山梨県', '山梨県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-20', '長野県', '長野県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-21', '岐阜県', '岐阜県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-22', '静岡県', '静岡県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-23', '愛知県', '愛知県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-24', '三重県', '三重県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-25', '滋賀県', '滋賀県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-26', '京都府', '京都府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-27', '大阪府', '大阪府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-28', '兵庫県', '兵庫県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-29', '奈良県', '奈良県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-30', '和歌山県', '和歌山県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-31', '鳥取県', '鳥取県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-32', '島根県', '島根県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-33', '岡山県', '岡山県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-34', '広島県', '広島県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-35', '山口県', '山口県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-36', '徳島県', '徳島県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-37', '香川県', '香川県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-38', '愛媛県', '愛媛県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-39', '高知県', '高知県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-40', '福岡県', '福岡県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-41', '佐賀県', '佐賀県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-42', '長崎県', '長崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-43', '熊本県', '熊本県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-44', '大分県', '大分県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-45', '宮崎県', '宮崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-46', '鹿児島県', '鹿児島県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', 'q-47', '沖縄県', '沖縄県', 'kyushu-okinawa', NULL);
