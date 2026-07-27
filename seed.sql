-- data/ 配下のCSVから自動生成。直接編集せず scripts/generate-seed.js を使うこと。
-- quizzes 32件 / items 1056件 (chikei=25, chizu-kigou=33, kencho=47, nihon-chiri=107, rekishi-asuka=24, rekishi-azuchi=16, rekishi-bakumatsu-meiji=73, rekishi-edo-koki=42, rekishi-edo-zenki=30, rekishi-gendai=73, rekishi-genshi=19, rekishi-heian=29, rekishi-kamakura=35, rekishi-muromachi=37, rekishi-nara=16, rekishi-taisho-showa=38, rika-bunrui=20, rika-haishutsu=18, rika-hana-hassei=18, rika-iden=19, rika-kankyou=22, rika-kokyu-junkan=20, rika-kougousei=19, rika-saibou=13, rika-seishoku=17, rika-seitaikei=18, rika-shigeki-hannou=20, rika-shinka=16, rika-shouka=20, sekai-isan=78, todofuken=47, todofuken-chizu=47)

INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('nihon-chiri', '日本地理', 'syakai', '地理', 'syakai/nihon-chiri/', 10, 10, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('todofuken-chizu', '都道府県(地図)', 'syakai', '地理', 'syakai/todofuken-chizu/', 10, 20, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chikei', '日本の地形', 'syakai', '地理', 'syakai/chikei/', 10, 30, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chizu-kigou', '地図記号', 'syakai', '地理', 'syakai/chizu-kigou/', 10, 40, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('sekai-isan', '日本の世界遺産', 'syakai', '地理', 'syakai/sekai-isan/', 10, 50, 0);
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
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-saibou', '細胞のつくり', 'rika', '生物', 'rika/saibou/', 10, 200, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kougousei', '光合成と植物のはたらき', 'rika', '生物', 'rika/kougousei/', 10, 210, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-bunrui', '生物の分類', 'rika', '生物', 'rika/bunrui/', 10, 220, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-hana-hassei', '花のつくりと発生', 'rika', '生物', 'rika/hana-hassei/', 10, 230, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shouka', '消化と吸収', 'rika', '生物', 'rika/shouka/', 10, 240, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kokyu-junkan', '呼吸と血液の循環', 'rika', '生物', 'rika/kokyu-junkan/', 10, 250, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-haishutsu', '排出のしくみ', 'rika', '生物', 'rika/haishutsu/', 10, 260, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shigeki-hannou', '刺激と反応', 'rika', '生物', 'rika/shigeki-hannou/', 10, 270, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-seishoku', '生殖と細胞分裂', 'rika', '生物', 'rika/seishoku/', 10, 280, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-iden', '遺伝', 'rika', '生物', 'rika/iden/', 10, 290, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-shinka', '進化と化石', 'rika', '生物', 'rika/shinka/', 10, 300, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-seitaikei', '生態系と食物連鎖', 'rika', '生物', 'rika/seitaikei/', 10, 310, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rika-kankyou', '環境と生物多様性', 'rika', '生物', 'rika/kankyou/', 10, 320, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('todofuken', '都道府県', 'syakai', '地理', 'archive/todofuken/', 10, 900, 1);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('kencho', '県庁所在地', 'syakai', '地理', 'archive/kencho/', 10, 910, 1);

INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '奥羽山脈', '次の説明にあてはまる地形は？
「東北地方を南北に走る、日本で最も長い山脈」', '奥羽山脈', '山地・山脈', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '飛騨山脈', '次の説明にあてはまる地形は？
「「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる」', '飛騨山脈', '山地・山脈', '{"accept":["北アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '木曽山脈', '次の説明にあてはまる地形は？
「日本アルプスの一つで、長野県に位置する」', '木曽山脈', '山地・山脈', '{"accept":["中央アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '赤石山脈', '次の説明にあてはまる地形は？
「日本アルプスの一つで、山梨県・長野県・静岡県にまたがる」', '赤石山脈', '山地・山脈', '{"accept":["南アルプス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '富士山', '次の説明にあてはまる地形は？
「日本最高峰(標高3776m)。静岡県と山梨県にまたがる」', '富士山', '山地・山脈', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '関東平野', '次の説明にあてはまる地形は？
「日本最大の平野」', '関東平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '越後平野', '次の説明にあてはまる地形は？
「新潟県に広がる、日本有数の稲作地帯」', '越後平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '濃尾平野', '次の説明にあてはまる地形は？
「愛知県・岐阜県に広がり、「輪中」と呼ばれる堤防で知られる」', '濃尾平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '石狩平野', '次の説明にあてはまる地形は？
「北海道に広がる、稲作がさかんな平野」', '石狩平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '筑紫平野', '次の説明にあてはまる地形は？
「九州最大の平野で、佐賀県・福岡県に広がる」', '筑紫平野', '平野', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '信濃川', '次の説明にあてはまる地形は？
「日本で最も長い川(約367km)」', '信濃川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '利根川', '次の説明にあてはまる地形は？
「流域面積が日本一で、「坂東太郎」とも呼ばれる川」', '利根川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '石狩川', '次の説明にあてはまる地形は？
「北海道を流れる、日本三大河川の一つ」', '石狩川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '木曽川', '次の説明にあてはまる地形は？
「濃尾平野を流れる、木曽三川の一つ」', '木曽川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '淀川', '次の説明にあてはまる地形は？
「琵琶湖から大阪湾へ流れる川」', '淀川', '川', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '琵琶湖', '次の説明にあてはまる地形は？
「日本最大の湖。滋賀県にある」', '琵琶湖', '湖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '黒潮', '次の説明にあてはまる地形は？
「日本の太平洋側を流れる暖流」', '黒潮', '海流', '{"accept":["日本海流"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '親潮', '次の説明にあてはまる地形は？
「三陸沖などを流れる寒流」', '親潮', '海流', '{"accept":["千島海流"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '対馬海流', '次の説明にあてはまる地形は？
「日本海側を流れる暖流」', '対馬海流', '海流', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'リマン海流', '次の説明にあてはまる地形は？
「日本海側を北から南へ流れる寒流」', 'リマン海流', '海流', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '房総半島', '次の説明にあてはまる地形は？
「千葉県にある半島」', '房総半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '紀伊半島', '次の説明にあてはまる地形は？
「近畿地方最大の半島」', '紀伊半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '能登半島', '次の説明にあてはまる地形は？
「石川県にある、日本海に突き出た半島」', '能登半島', '半島', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '津軽海峡', '次の説明にあてはまる地形は？
「本州と北海道を隔てる海峡」', '津軽海峡', '海峡', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '関門海峡', '次の説明にあてはまる地形は？
「本州と九州を隔てる海峡」', '関門海峡', '海峡', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jinja', '次の地図記号は何を表しているか。', '神社', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jiin', '次の地図記号は何を表しているか。', '寺院', '建物・施設', '{"accept":["寺","お寺"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'yubinkyoku', '次の地図記号は何を表しているか。', '郵便局', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shochugakko', '次の地図記号は何を表しているか。', '小・中学校', '建物・施設', '{"accept":["小中学校","小学校・中学校","小学校","中学校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kotogakko', '次の地図記号は何を表しているか。', '高等学校', '建物・施設', '{"accept":["高校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shiyakusho', '次の地図記号は何を表しているか。', '市役所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'choson-yakuba', '次の地図記号は何を表しているか。', '町村役場', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koban', '次の地図記号は何を表しているか。', '交番', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'keisatsusho', '次の地図記号は何を表しているか。', '警察署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shobosho', '次の地図記号は何を表しているか。', '消防署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kojo', '次の地図記号は何を表しているか。', '工場', '建物・施設', '{"note":"2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hatsudensho', '次の地図記号は何を表しているか。', '発電所', '建物・施設', '{"accept":["発電所・変電所","変電所"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'toshokan', '次の地図記号は何を表しているか。', '図書館', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hakubutsukan', '次の地図記号は何を表しているか。', '博物館', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'rojin-home', '次の地図記号は何を表しているか。', '老人ホーム', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'todai', '次の地図記号は何を表しているか。', '灯台', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'minato', '次の地図記号は何を表しているか。', '港湾', '建物・施設', '{"accept":["港","重要港"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'onsen', '次の地図記号は何を表しているか。', '温泉', '自然・その他', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'sankakuten', '次の地図記号は何を表しているか。', '三角点', '自然・その他', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'saibansho', '次の地図記号は何を表しているか。', '裁判所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'zeimusho', '次の地図記号は何を表しているか。', '税務署', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hokenjo', '次の地図記号は何を表しているか。', '保健所', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'byoin', '次の地図記号は何を表しているか。', '病院', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kinenhi', '次の地図記号は何を表しているか。', '記念碑', '建物・施設', '{"accept":["記念広場"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'bochi', '次の地図記号は何を表しているか。', '墓地', '建物・施設', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kajuen', '次の地図記号は何を表しているか。', '果樹園', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'ta', '次の地図記号は何を表しているか。', '田', '土地利用', '{"accept":["水田","たんぼ"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hatake', '次の地図記号は何を表しているか。', '畑', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'arechi', '次の地図記号は何を表しているか。', '荒地', '土地利用', '{"accept":["荒れ地"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'chabatake', '次の地図記号は何を表しているか。', '茶畑', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kuwabatake', '次の地図記号は何を表しているか。', '桑畑', '土地利用', '{"note":"2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koyojurin', '次の地図記号は何を表しているか。', '広葉樹林', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shinyojurin', '次の地図記号は何を表しているか。', '針葉樹林', '土地利用', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '1', '北海道', '札幌市', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '2', '青森県', '青森市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '3', '岩手県', '盛岡市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '4', '宮城県', '仙台市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '5', '秋田県', '秋田市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '6', '山形県', '山形市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '7', '福島県', '福島市', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '8', '茨城県', '水戸市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '9', '栃木県', '宇都宮市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '10', '群馬県', '前橋市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '11', '埼玉県', 'さいたま市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '12', '千葉県', '千葉市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '13', '東京都', '東京', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '14', '神奈川県', '横浜市', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '15', '新潟県', '新潟市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '16', '富山県', '富山市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '17', '石川県', '金沢市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '18', '福井県', '福井市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '19', '山梨県', '甲府市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '20', '長野県', '長野市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '21', '岐阜県', '岐阜市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '22', '静岡県', '静岡市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '23', '愛知県', '名古屋市', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '24', '三重県', '津市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '25', '滋賀県', '大津市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '26', '京都府', '京都市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '27', '大阪府', '大阪市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '28', '兵庫県', '神戸市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '29', '奈良県', '奈良市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '30', '和歌山県', '和歌山市', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '31', '鳥取県', '鳥取市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '32', '島根県', '松江市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '33', '岡山県', '岡山市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '34', '広島県', '広島市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '35', '山口県', '山口市', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '36', '徳島県', '徳島市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '37', '香川県', '高松市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '38', '愛媛県', '松山市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '39', '高知県', '高知市', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '40', '福岡県', '福岡市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '41', '佐賀県', '佐賀市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '42', '長崎県', '長崎市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '43', '熊本県', '熊本市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '44', '大分県', '大分市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '45', '宮崎県', '宮崎市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '46', '鹿児島県', '鹿児島市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('kencho', '47', '沖縄県', '那覇市', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nan-tan', '日本の一番南にある島（極南端）の名前は何ですか？', '沖ノ鳥島', 'basic', '{"accept":["沖の鳥島"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nihon-alps', '飛騨山脈、木曽山脈、赤石山脈の3つの山脈を合わせた総称を何といいますか？', '日本アルプス', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tone-gawa', '日本で一番流域面積が広い川の名前は何ですか？', '利根川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'rias-kaigan', '三陸海岸や志摩半島に見られる、複雑に入り組んだ鋸刃状の海岸地形を何といいますか？', 'リアス海岸', 'basic', '{"accept":["リアス式海岸","リアス"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'yamase', '東北地方の太平洋側で、夏に吹き冷害の原因となる冷たく湿った北東の風を何といいますか？', 'やませ', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kanto-loam', '関東平野のほぼ中央を流れる利根川などの流域に広がる、火山灰が降り積もってできた赤土の台地を何といいますか？', '関東ローム層', 'basic', '{"accept":["関東ローム"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'korechi', '中部地方の八ヶ岳山麓や菅平高原などで盛んな、夏の涼しい気候を利用してレタスやキャベツなどを栽培する農業を何といいますか？', '高冷地農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kinko', '大阪市やその周辺など、大消費地に近い立地を生かして野菜などを栽培する農業を何といいますか？', '近郊農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'setouchi', '瀬戸内海沿岸の地域に見られる、年中温暖で雨が少ない気候を何といいますか？', '瀬戸内の気候', 'basic', '{"accept":["瀬戸内気候","瀬戸内式気候"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shirasu', '九州南部に広がる、シラスと呼ばれる火山灰が堆積した台地を何といいますか？', 'シラス台地', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shimokita-hanto', '青森県にある、むつ湾を囲むまさかりの形をした半島は何ですか？', '下北半島', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kuroshio', '日本の太平洋側を南から北へ流れる、日本海流とも呼ばれる暖流の名前は何ですか？', '黒潮', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shinano-gawa', '日本で最も長い川の名前は何ですか？', '信濃川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'karst', '山口県の秋吉台などに代表される、石灰岩が雨水などで侵食されてできた地形を何といいますか？', 'カルスト地形', 'basic', '{"accept":["カルスト"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'rakuno', '北海道の根釧台地などで盛んな、乳牛などを飼育して生乳や乳製品を生産する農業を何といいますか？', '酪農', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-1', 'ここは日本列島の最北に位置し、都道府県の中で面積が最も広い。冬の寒さが厳しく、流氷が接岸する海岸もある。じゃがいもや小麦などの畑作、酪農が盛んで、世界遺産・知床が含まれる。これはどこの都道府県か。', '北海道', 'todofuken', '{"region":"hokkaido"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-2', 'ここは本州最北端に位置し、津軽海峡を挟んで北海道と向かい合う。日本海と太平洋の両方に面する数少ない県の一つである。りんごの生産量が全国一位で、世界遺産・白神山地のブナ原生林も広がる。これはどこの都道府県か。', '青森県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-3', 'ここは東北地方の太平洋側に位置し、面積は北海道に次いで全国2位の広さである。三陸海岸はリアス海岸が続き、漁業が盛んである。世界遺産「平泉」の中尊寺金色堂があることでも知られる。これはどこの都道府県か。', '岩手県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-4', 'ここは東北地方の太平洋側に位置し、東北地方の中心都市を県庁所在地とする。日本三景の一つに数えられる松島がある。牛タン料理でも知られる。これはどこの都道府県か。', '宮城県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-5', 'ここは東北地方の日本海側に位置する。あきたこまちなど米の産地として知られ、世界遺産・白神山地の一部もまたがる。なまはげと呼ばれる伝統行事が伝わる。これはどこの都道府県か。', '秋田県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-6', 'ここは東北地方の日本海側に位置する。さくらんぼの生産量が全国一位で、将棋の駒の生産地としても知られる。蔵王の樹氷でも有名である。これはどこの都道府県か。', '山形県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-7', 'ここは東北地方の最南端に位置し、東は太平洋に面する。東北地方の中で最も面積が広い。ももの産地としても知られる。これはどこの都道府県か。', '福島県', 'todofuken', '{"region":"tohoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-8', 'ここは関東地方の北東部に位置し、太平洋に面する。日本で2番目に大きい湖である霞ヶ浦がある。納豆や、メロン・レンコンなどの農産物の生産量が高いことで知られる。これはどこの都道府県か。', '茨城県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-9', 'ここは関東地方の内陸県で、海に面していない。世界遺産・日光の社寺があり、いちごの生産量は全国一位である。これはどこの都道府県か。', '栃木県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-10', 'ここは関東地方北西部の内陸県である。世界遺産・富岡製糸場があり、こんにゃくいもの生産量は全国一位である。草津温泉など温泉地も多い。これはどこの都道府県か。', '群馬県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-11', 'ここは関東地方の内陸県で、東京都の北に隣接する。海に面していない。小江戸と呼ばれる古い町並みが残る川越市や、草加せんべいで知られる。これはどこの都道府県か。', '埼玉県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-12', 'ここは関東地方に位置し、房総半島の大部分を占め、三方を海に囲まれる。成田国際空港があり、落花生の生産量は全国一位である。これはどこの都道府県か。', '千葉県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-13', 'ここは日本の首都であり、人口は全国で最も多い。かつて江戸と呼ばれ、伊豆諸島や小笠原諸島も含まれる。これはどこの都道府県か。', '東京都', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-14', 'ここは関東地方に位置し、東京都の南に隣接して太平洋に面する。横浜港などの港町が発展し、鎌倉の大仏でも知られる。これはどこの都道府県か。', '神奈川県', 'todofuken', '{"region":"kanto"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-15', 'ここは日本海に面し、日本で最も長い信濃川の下流域が広がる。米どころとして知られ、コシヒカリの名産地である。世界遺産・佐渡島の金山がある。これはどこの都道府県か。', '新潟県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-16', 'ここは日本海に面し、立山連峰と富山湾に挟まれる。ホタルイカ漁で知られ、チューリップの球根の生産も盛んである。これはどこの都道府県か。', '富山県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-17', 'ここは日本海に突き出た能登半島を含む。かつて加賀百万石と呼ばれた城下町が発展し、金箔の生産量は全国一位である。これはどこの都道府県か。', '石川県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-18', 'ここは日本海に面し、東尋坊と呼ばれる断崖で知られる。恐竜の化石の発掘地としても有名で、眼鏡フレームの生産量は全国一位である。これはどこの都道府県か。', '福井県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-19', 'ここは内陸県で、富士山の北側に位置する。ぶどうとももの生産量がともに全国一位で、ワインの生産も盛んである。これはどこの都道府県か。', '山梨県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-20', 'ここは内陸に位置し、海に面していない数少ない県の一つである。隣接する都道府県の数は全国で最も多い。中央部から南部にかけて日本アルプスと呼ばれる山脈が連なり、りんごやそばの産地としても知られる。これはどこの都道府県か。', '長野県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-21', 'ここは内陸県で、北部の飛騨地方と南部の美濃地方に分かれる。世界遺産・白川郷の合掌造り集落があり、長良川の鵜飼でも知られる。これはどこの都道府県か。', '岐阜県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-22', 'ここは太平洋に面し、富士山の南側に広がる。茶の生産量が全国有数で、うなぎの養殖地としても知られる。これはどこの都道府県か。', '静岡県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-23', 'ここは濃尾平野の東部に位置し、太平洋に面する。自動車産業を中心とする日本最大級の工業地帯があり、製造品出荷額は全国トップクラスである。これはどこの都道府県か。', '愛知県', 'todofuken', '{"region":"chubu"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-24', 'ここは近畿地方に位置し、紀伊半島の東側を占める。伊勢神宮があり、英虞湾では真珠の養殖が盛んである。これはどこの都道府県か。', '三重県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-25', 'ここは近畿地方の内陸に位置し、日本最大の面積を持つ湖である琵琶湖がある。京都府・大阪府に隣接し、ベッドタウンとしても発展してきた。これはどこの都道府県か。', '滋賀県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-26', 'ここは近畿地方に位置し、かつて都が置かれていた地域である。清水寺や金閣寺など、世界遺産に登録された多くの社寺が残り、西陣織や京友禅などの伝統産業でも知られる。これはどこの都道府県か。', '京都府', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-27', 'ここは近畿地方に位置し、西日本最大の商業都市を中心とする。都道府県の中で面積は香川県に次いで2番目に小さく、たこ焼きやお好み焼きなど「粉もん」文化で知られる。これはどこの都道府県か。', '大阪府', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-28', 'ここは近畿地方に位置し、瀬戸内海と日本海の両方に面する数少ない県の一つである。世界遺産・姫路城があり、淡路島は玉ねぎの産地として知られる。これはどこの都道府県か。', '兵庫県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-29', 'ここは近畿地方の内陸県で、かつて平城京が置かれた。東大寺や法隆寺など世界遺産に登録された寺社が多く、鹿が生息する公園でも知られる。これはどこの都道府県か。', '奈良県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-30', 'ここは近畿地方に位置し、紀伊半島の南西部を占める。梅の生産量は全国一位で、世界遺産・熊野古道の一部を含む。これはどこの都道府県か。', '和歌山県', 'todofuken', '{"region":"kinki"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-31', 'ここは中国地方の日本海側に位置し、都道府県の中で人口が最も少ない。広大な砂丘が広がることで知られる。これはどこの都道府県か。', '鳥取県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-32', 'ここは中国地方の日本海側に位置し、縁結びの神社として知られる出雲大社がある。世界遺産・石見銀山もこの県にある。これはどこの都道府県か。', '島根県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-33', 'ここは中国地方に位置し、瀬戸内海に面する。桃やぶどう(マスカット)の産地として知られ、倉敷市児島地区は学生服やジーンズの生産地としても有名である。これはどこの都道府県か。', '岡山県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-34', 'ここは中国地方に位置し、瀬戸内海に面する。原爆ドームと厳島神社という2つの世界遺産があり、かきの養殖生産量は全国一位である。これはどこの都道府県か。', '広島県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-35', 'ここは本州最西端に位置し、瀬戸内海と日本海の両方に面する。関門海峡を挟んで九州と向かい合い、ふぐの水揚げで知られる。これはどこの都道府県か。', '山口県', 'todofuken', '{"region":"chugoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-36', 'ここは四国地方の東部に位置し、鳴門海峡の渦潮で知られる。阿波おどりが有名で、すだちの生産量は全国一位である。これはどこの都道府県か。', '徳島県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-37', 'ここは四国地方に位置し、瀬戸内海に面する。対岸には本州がある。都道府県の中で面積が最も小さく、降水量が少ないためため池が数多くつくられてきた。うどんの生産・消費量で全国的に知られる。これはどこの都道府県か。', '香川県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-38', 'ここは四国地方の北西部に位置し、瀬戸内海に面する。みかんの生産量が全国有数で、今治市はタオルの生産地として知られる。これはどこの都道府県か。', '愛媛県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-39', 'ここは四国地方の太平洋側に位置する。なすやピーマンなどの促成栽培が盛んで、かつおの一本釣り漁でも知られる。これはどこの都道府県か。', '高知県', 'todofuken', '{"region":"shikoku"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-40', 'ここは九州地方の北部に位置し、人口・経済規模ともに九州で最大である。博多ラーメンや明太子で知られ、世界遺産・宗像大社沖ノ島を含む。これはどこの都道府県か。', '福岡県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-41', 'ここは九州地方北部に位置し、有明海に面してのりの養殖が盛んである。有田焼・伊万里焼などの陶磁器の産地としても知られる。これはどこの都道府県か。', '佐賀県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-42', 'ここは九州地方西部に位置し、離島の数が全国で最も多い。出島やカステラ・ちゃんぽんなど独自の文化で知られ、明治日本の産業革命遺産(軍艦島)を含む世界遺産がある。これはどこの都道府県か。', '長崎県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-43', 'ここは九州地方の中央部に位置し、世界最大級のカルデラを持つ阿蘇山がある。畳表に使われるい草の生産量は全国一位である。これはどこの都道府県か。', '熊本県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-44', 'ここは九州地方の北東部に位置し、太平洋に面する。温泉の源泉数・湧出量が全国一位で、かぼすの生産量も全国一位である。これはどこの都道府県か。', '大分県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-45', 'ここは九州地方の南東部に位置し、太平洋に面する。温暖な気候を活かしたきゅうりやピーマンの促成栽培が盛んである。マンゴーの産地としても知られる。これはどこの都道府県か。', '宮崎県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-46', 'ここは九州地方の最南端に位置し、今も活動を続ける桜島がある。さつまいもの生産量は全国一位で、世界遺産・屋久島を含む。これはどこの都道府県か。', '鹿児島県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'todofuken-47', 'ここは日本最南端・最西端の島々からなり、亜熱帯の気候に属する。かつて琉球王国として独立した歴史を持ち、首里城跡などが世界遺産に登録されている。さとうきびの生産量は全国一位である。これはどこの都道府県か。', '沖縄県', 'todofuken', '{"region":"kyushu-okinawa"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-1', '「輪島塗」は、どこの都道府県の伝統的工芸品として知られているか。', '石川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-2', '「九谷焼」は、どこの都道府県の伝統的工芸品として知られているか。', '石川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-3', '「南部鉄器」は、どこの都道府県の伝統的工芸品として知られているか。', '岩手県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-4', '「会津塗」は、どこの都道府県の伝統的工芸品として知られているか。', '福島県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-5', '「有田焼」は、どこの都道府県の伝統的工芸品として知られているか。', '佐賀県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-6', '「信楽焼」は、どこの都道府県の伝統的工芸品として知られているか。', '滋賀県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-7', '「西陣織」は、どこの都道府県の伝統的工芸品として知られているか。', '京都府', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-8', '「博多人形」は、どこの都道府県の伝統的工芸品として知られているか。', '福岡県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-9', '「熊野筆」は、どこの都道府県の伝統的工芸品として知られているか。', '広島県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-10', '「小千谷ちぢみ」は、どこの都道府県の伝統的工芸品として知られているか。', '新潟県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-11', '「甲州印伝」は、どこの都道府県の伝統的工芸品として知られているか。', '山梨県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-12', '「天童の将棋駒」は、どこの都道府県の伝統的工芸品として知られているか。', '山形県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-13', '「越前和紙」は、どこの都道府県の伝統的工芸品として知られているか。', '福井県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-14', '「津軽塗」は、どこの都道府県の伝統的工芸品として知られているか。', '青森県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-15', '「江戸切子」は、どこの都道府県の伝統的工芸品として知られているか。', '東京都', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-16', '「高岡銅器」は、どこの都道府県の伝統的工芸品として知られているか。', '富山県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-17', '「別府竹細工」は、どこの都道府県の伝統的工芸品として知られているか。', '大分県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-18', '「桐生織」は、どこの都道府県の伝統的工芸品として知られているか。', '群馬県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-19', '「出雲そば」は、どこの都道府県の郷土料理として知られているか。', '島根県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-20', '「今治タオル」は、どこの都道府県の特産品として知られているか。', '愛媛県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-21', '「灘の酒」は、どこの都道府県の特産品として知られる日本酒か。', '兵庫県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-22', '「有松絞り」は、どこの都道府県の伝統的工芸品として知られているか。', '愛知県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-23', '「美濃和紙」は、どこの都道府県の伝統的工芸品として知られているか。', '岐阜県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-24', '「伊賀焼」は、どこの都道府県の伝統的工芸品として知られているか。', '三重県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-25', '「笠間焼」は、どこの都道府県の伝統的工芸品として知られているか。', '茨城県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-26', '「益子焼」は、どこの都道府県の伝統的工芸品として知られているか。', '栃木県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-27', '「岩槻の雛人形」は、どこの都道府県の伝統的工芸品として知られているか。', '埼玉県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-28', '「鎌倉彫」は、どこの都道府県の伝統的工芸品として知られているか。', '神奈川県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-29', '「焼津のかつお節」は、どこの都道府県の特産品として知られているか。', '静岡県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-30', '「萩焼」は、どこの都道府県の伝統的工芸品として知られているか。', '山口県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-31', '「堺打刃物」は、どこの都道府県の伝統的工芸品として知られているか。', '大阪府', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-32', '「奈良筆・奈良墨」は、どこの都道府県の伝統的工芸品として知られているか。', '奈良県', 'tokusanhin', '{"type":"伝統工芸"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-33', '「桜島大根」は、どこの都道府県の特産品として知られているか。', '鹿児島県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-34', '「黒糖」は、さとうきびを原料としてどこの都道府県で特に多くつくられているか。', '沖縄県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-35', '「小豆島のオリーブ」は、どこの都道府県の特産品として知られているか。', '香川県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tokusanhin-36', '「鳴門わかめ」は、どこの都道府県の特産品として知られているか。', '徳島県', 'tokusanhin', '{"type":"特産品"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-1', '次は、令和4年産のじゃがいも(ばれいしょ)収穫量、都道府県別ランキング(上位5位)である。
1位　？
2位　鹿児島県(97,600t)
3位　長崎県(83,900t)
4位　茨城県(48,500t)
5位　千葉県(28,100t)
1位に当てはまる都道府県はどこか。', '北海道', 'nousuisan', '{"crop":"じゃがいも","year":"令和4年産(2022年)","source":"農林水産省 作物統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-2', '次は、令和5年産のキャベツ収穫量、都道府県別ランキング(上位5位)である。
1位　群馬県(282,900t)
2位　？(272,700t)
3位　千葉県(116,000t)
4位　茨城県(101,600t)
5位　鹿児島県(72,900t)
2位に当てはまる都道府県はどこか。', '愛知県', 'nousuisan', '{"crop":"キャベツ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-3', '次は、令和5年産の米の収穫量、都道府県別ランキング(上位5位)である。
1位　新潟県(591,700t)
2位　北海道(540,200t)
3位　？(458,200t)
4位　山形県(359,300t)
5位　宮城県(344,700t)
3位に当てはまる都道府県はどこか。', '秋田県', 'nousuisan', '{"crop":"米","year":"令和5年産(2023年)","source":"農林水産省 水陸稲収穫量","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-4', '次は、令和5年産のみかん収穫量、都道府県別ランキング(上位5位、全国シェア)である。
1位　？(約25%)
2位　静岡県(約16%)
3位　愛媛県(約14%)
4位　熊本県(約11%)
5位　佐賀県(約5%)
1位に当てはまる都道府県はどこか。', '和歌山県', 'nousuisan', '{"crop":"みかん","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-5', '次は、令和5年産のレタス収穫量、都道府県別ランキング(上位5位)である。
1位　長野県(181,500t)
2位　？(84,000t)
3位　群馬県(58,200t)
4位　長崎県(35,200t)
5位　静岡県(24,700t)
2位に当てはまる都道府県はどこか。', '茨城県', 'nousuisan', '{"crop":"レタス","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-6', '次は、令和5年の豚の飼育頭数、都道府県別ランキング(上位5位)である。
1位　鹿児島県(1,153,000頭)
2位　宮崎県(818,200頭)
3位　？(759,600頭)
4位　群馬県(593,700頭)
5位　千葉県(588,400頭)
3位に当てはまる都道府県はどこか。', '北海道', 'nousuisan', '{"crop":"豚(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-7', '次は、令和5年産のりんご収穫量、都道府県別ランキング(上位5位)である。
1位　？(374,400t)
2位　長野県(106,900t)
3位　岩手県(31,600t)
4位　山形県(30,300t)
5位　福島県(18,500t)
1位に当てはまる都道府県はどこか。', '青森県', 'nousuisan', '{"crop":"りんご","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-8', '次は、令和5年の肉用牛飼育頭数、都道府県別ランキング(上位5位)である。
1位　北海道(566,400頭)
2位　？(357,800頭)
3位　宮崎県(260,200頭)
4位　熊本県(139,100頭)
5位　長崎県(91,700頭)
2位に当てはまる都道府県はどこか。', '鹿児島県', 'nousuisan', '{"crop":"肉用牛(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":2}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nousuisan-9', '次は、令和5年産のたまねぎ収穫量、都道府県別ランキング(上位5位)である。
1位　北海道(752,500t)
2位　兵庫県(97,800t)
3位　？(97,600t)
4位　長崎県(29,900t)
5位　愛知県(24,300t)
3位に当てはまる都道府県はどこか。', '佐賀県', 'nousuisan', '{"crop":"たまねぎ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":3}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'jushichijo', '次の説明にあてはまる語句を答えなさい。
「604年、役人の心構えを示すために定められたきまり」', '十七条の憲法', '古代', '{"accept":["十七条憲法"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'jushichijo-year', '「十七条の憲法」は西暦何年のことか。数字で答えなさい。', '604', '古代', '{"accept":["604年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'jushichijo-person', '次の説明にあてはまる人物はだれか。
「十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した」', '聖徳太子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kaniijunikai', '次の説明にあてはまる語句を答えなさい。
「603年、家柄によらず能力のある人を役人に取り立てるために定められた制度」', '冠位十二階', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kaniijunikai-year', '「冠位十二階」は西暦何年のことか。数字で答えなさい。', '603', '古代', '{"accept":["603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kenzuishi', '次の説明にあてはまる語句を答えなさい。
「607年、小野妹子らが中国の進んだ制度や文化を学ぶために派遣された使節」', '遣隋使', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kenzuishi-year', '「遣隋使」は西暦何年のことか。数字で答えなさい。', '607', '古代', '{"accept":["607年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kenzuishi-person', '次の説明にあてはまる人物はだれか。
「607年、遣隋使として隋にわたった」', '小野妹子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'taika', '次の説明にあてはまる語句を答えなさい。
「645年、蘇我氏を倒して始まった、天皇中心の国づくりを目指す政治改革」', '大化の改新', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'taika-year', '「大化の改新」は西暦何年のことか。数字で答えなさい。', '645', '古代', '{"accept":["645年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'taika-person', '次の説明にあてはまる人物はだれか。
「中臣鎌足とともに蘇我氏を倒し、大化の改新を進めた」', '中大兄皇子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'jinshin', '次の説明にあてはまる語句を答えなさい。
「672年、天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった」', '壬申の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'jinshin-year', '「壬申の乱」は西暦何年のことか。数字で答えなさい。', '672', '古代', '{"accept":["672年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'fujiwarakyo', '次の説明にあてはまる語句を答えなさい。
「694年、奈良盆地南部につくられた、日本で初めての本格的な都」', '藤原京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'fujiwarakyo-year', '「藤原京」は西暦何年のことか。数字で答えなさい。', '694', '古代', '{"accept":["694年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'taihoritsuryo', '次の説明にあてはまる語句を答えなさい。
「701年に完成した、律と令からなる国の基本法典」', '大宝律令', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'taihoritsuryo-year', '「大宝律令」は西暦何年のことか。数字で答えなさい。', '701', '古代', '{"accept":["701年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'handen', '次の説明にあてはまる語句を答えなさい。
「6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度」', '班田収授法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kubunden', '次の説明にあてはまる語句を答えなさい。
「班田収授法によって人々に分け与えられた土地」', '口分田', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'so', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、収穫した稲の約3%を納めるもの」', '租', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'cho', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、絹や糸、地方の特産物を都に納めるもの」', '調', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'yo', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、都での労役の代わりに布を納めるもの」', '庸', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'sakimori', '次の説明にあてはまる語句を答えなさい。
「律令制のもとで、九州北部の防備にあたらされた兵士」', '防人', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'kokushi', '次の説明にあてはまる語句を答えなさい。
「地方の国を治めるために、中央から派遣された役人」', '国司', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'okehazama', '次の説明にあてはまる語句を答えなさい。
「1560年、織田信長が今川義元を破った戦い」', '桶狭間の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'okehazama-year', '「桶狭間の戦い」は西暦何年のことか。数字で答えなさい。', '1560', '近世', '{"accept":["1560年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'nagashino', '次の説明にあてはまる語句を答えなさい。
「1575年、織田・徳川の連合軍が鉄砲を大量に使って武田軍を破った戦い」', '長篠の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'nagashino-year', '「長篠の戦い」は西暦何年のことか。数字で答えなさい。', '1575', '近世', '{"accept":["1575年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'nagashino-person', '次の説明にあてはまる人物はだれか。
「楽市・楽座や関所の廃止を行い、長篠の戦いで鉄砲を活用した」', '織田信長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'honnoji', '次の説明にあてはまる語句を答えなさい。
「1582年、明智光秀にそむかれて織田信長が自害した事件」', '本能寺の変', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'honnoji-year', '「本能寺の変」は西暦何年のことか。数字で答えなさい。', '1582', '近世', '{"accept":["1582年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'kenchi', '次の説明にあてはまる語句を答えなさい。
「全国の田畑の面積と収穫高を調べ、年貢を確実に取るために行われた土地の調査」', '太閤検地', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'kenchi-person', '次の説明にあてはまる人物はだれか。
「太閤検地と刀狩を行い、兵農分離を進めて全国を統一した」', '豊臣秀吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'katanagari', '次の説明にあてはまる語句を答えなさい。
「1588年、百姓から武器を取り上げ、一揆を防ぐために行われた政策」', '刀狩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'katanagari-year', '「刀狩」は西暦何年のことか。数字で答えなさい。', '1588', '近世', '{"accept":["1588年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'rakuichi', '次の説明にあてはまる語句を答えなさい。
「織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策」', '楽市・楽座', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'heino', '次の説明にあてはまる語句を答えなさい。
「検地と刀狩によって、武士と農民の身分がはっきり分けられたこと」', '兵農分離', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'momoyama', '次の説明にあてはまる語句を答えなさい。
「安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化」', '桃山文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'wabicha', '次の説明にあてはまる語句を答えなさい。
「簡素さの中に美を見いだす茶の湯。千利休が大成した」', 'わび茶', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'wabicha-person', '次の説明にあてはまる人物はだれか。
「質素なわび茶を大成し、茶の湯を芸術の域に高めた」', '千利休', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'ahen', '次の説明にあてはまる語句を答えなさい。
「1840年に始まったイギリスと清の戦争。清が敗れ、日本の対外政策にも影響した」', 'アヘン戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'ahen-year', '「アヘン戦争」は西暦何年のことか。数字で答えなさい。', '1840', '近代', '{"accept":["1840年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'perry', '次の説明にあてはまる語句を答えなさい。
「1853年、4隻の軍艦を率いて浦賀に来航し、日本に開国を求めたアメリカの使節」', 'ペリーの来航', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'perry-year', '「ペリーの来航」は西暦何年のことか。数字で答えなさい。', '1853', '近代', '{"accept":["1853年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'perry-person', '次の説明にあてはまる人物はだれか。
「1853年に浦賀に来航し、日本に開国を求めた」', 'ペリー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'washin', '次の説明にあてはまる語句を答えなさい。
「1854年に結ばれ、下田と函館の2港を開いて日本が開国することになった条約」', '日米和親条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'washin-year', '「日米和親条約」は西暦何年のことか。数字で答えなさい。', '1854', '近代', '{"accept":["1854年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shukotsusho', '次の説明にあてはまる語句を答えなさい。
「1858年に結ばれた、領事裁判権を認め関税自主権がない不平等条約」', '日米修好通商条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shukotsusho-year', '「日米修好通商条約」は西暦何年のことか。数字で答えなさい。', '1858', '近代', '{"accept":["1858年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'taiseihokan', '次の説明にあてはまる語句を答えなさい。
「1867年、政権を朝廷に返した出来事。江戸幕府が終わった」', '大政奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'taiseihokan-year', '「大政奉還」は西暦何年のことか。数字で答えなさい。', '1867', '近代', '{"accept":["1867年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'taiseihokan-person', '次の説明にあてはまる人物はだれか。
「1867年に大政奉還を行い、政権を朝廷に返した」', '徳川慶喜', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gokajo', '次の説明にあてはまる語句を答えなさい。
「1868年、新政府が示した政治の基本方針」', '五箇条の御誓文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gokajo-year', '「五箇条の御誓文」は西暦何年のことか。数字で答えなさい。', '1868', '近代', '{"accept":["1868年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'hanseki', '次の説明にあてはまる語句を答えなさい。
「1869年、大名が治めていた土地と人民を天皇に返させた政策」', '版籍奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'hanseki-year', '「版籍奉還」は西暦何年のことか。数字で答えなさい。', '1869', '近代', '{"accept":["1869年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'haihan', '次の説明にあてはまる語句を答えなさい。
「1871年、藩を廃止して県を置き、中央から府知事・県令を派遣した改革」', '廃藩置県', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'haihan-year', '「廃藩置県」は西暦何年のことか。数字で答えなさい。', '1871', '近代', '{"accept":["1871年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'chiso', '次の説明にあてはまる語句を答えなさい。
「1873年、土地の価格の3%を現金で納めさせるようにした改革。政府の収入を安定させた」', '地租改正', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'chiso-year', '「地租改正」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'chohei', '次の説明にあてはまる語句を答えなさい。
「1873年、満20歳以上の男子に兵役の義務を課した法令」', '徴兵令', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'chohei-year', '「徴兵令」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'fukoku', '次の説明にあてはまる語句を答えなさい。
「欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標」', '富国強兵', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shokusan', '次の説明にあてはまる語句を答えなさい。
「官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策」', '殖産興業', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'tomioka', '次の説明にあてはまる語句を答えなさい。
「殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場」', '富岡製糸場', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'yahata', '次の説明にあてはまる語句を答えなさい。
「日清戦争の賠償金をもとに建設され、1901年に操業を始めた官営の製鉄所」', '八幡製鉄所', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'yahata-year', '「八幡製鉄所」は西暦何年のことか。数字で答えなさい。', '1901', '近代', '{"accept":["1901年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'bunmei', '次の説明にあてはまる語句を答えなさい。
「明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと」', '文明開化', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gakusei', '次の説明にあてはまる語句を答えなさい。
「1872年に公布された、6歳以上の男女すべてを小学校に通わせることを目指した制度」', '学制', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gakusei-year', '「学制」は西暦何年のことか。数字で答えなさい。', '1872', '近代', '{"accept":["1872年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gakumon', '次の説明にあてはまる語句を答えなさい。
「「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物」', '学問のすゝめ', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'gakumon-person', '次の説明にあてはまる人物はだれか。
「『学問のすゝめ』を著し、欧米の思想を広めた」', '福沢諭吉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'seinan', '次の説明にあてはまる語句を答えなさい。
「1877年、政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱」', '西南戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'seinan-year', '「西南戦争」は西暦何年のことか。数字で答えなさい。', '1877', '近代', '{"accept":["1877年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'seinan-person', '次の説明にあてはまる人物はだれか。
「明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた」', '西郷隆盛', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'jiyuminken', '次の説明にあてはまる語句を答えなさい。
「国民が政治に参加する権利を求め、国会の開設を要求した運動」', '自由民権運動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpakusho', '次の説明にあてはまる語句を答えなさい。
「1874年に政府に提出され、自由民権運動の出発点となった意見書」', '民撰議院設立の建白書', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpakusho-year', '「民撰議院設立の建白書」は西暦何年のことか。数字で答えなさい。', '1874', '近代', '{"accept":["1874年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpakusho-person', '次の説明にあてはまる人物はだれか。
「民撰議院設立の建白書を提出し、のちに自由党をつくった」', '板垣退助', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kaishinto', '次の説明にあてはまる語句を答えなさい。
「1882年に大隈重信がつくった、イギリス流の議会政治を目指した政党」', '立憲改進党', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kaishinto-year', '「立憲改進党」は西暦何年のことか。数字で答えなさい。', '1882', '近代', '{"accept":["1882年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kaishinto-person', '次の説明にあてはまる人物はだれか。
「立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた」', '大隈重信', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'teikokugikai', '次の説明にあてはまる語句を答えなさい。
「1890年に初めて開かれた議会。衆議院と貴族院の二院制だった」', '帝国議会', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'teikokugikai-year', '「帝国議会」は西暦何年のことか。数字で答えなさい。', '1890', '近代', '{"accept":["1890年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpo', '次の説明にあてはまる語句を答えなさい。
「1889年に発布された、天皇が国を治める仕組みを定めた憲法。ドイツの憲法を参考にした」', '大日本帝国憲法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpo-year', '「大日本帝国憲法」は西暦何年のことか。数字で答えなさい。', '1889', '近代', '{"accept":["1889年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kenpo-person', '次の説明にあてはまる人物はだれか。
「初代内閣総理大臣となり、大日本帝国憲法の作成を進めた」', '伊藤博文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nisshin', '次の説明にあてはまる語句を答えなさい。
「1894年に始まった清との戦争。勝利して下関条約で遼東半島や台湾を得た」', '日清戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nisshin-year', '「日清戦争」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shimonoseki', '次の説明にあてはまる語句を答えなさい。
「1895年に結ばれた日清戦争の講和条約。遼東半島や台湾を得た」', '下関条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shimonoseki-year', '「下関条約」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'sangoku', '次の説明にあてはまる語句を答えなさい。
「1895年、ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事」', '三国干渉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'sangoku-year', '「三国干渉」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nichiei', '次の説明にあてはまる語句を答えなさい。
「1902年、ロシアの南下に対抗するためイギリスと結んだ同盟」', '日英同盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nichiei-year', '「日英同盟」は西暦何年のことか。数字で答えなさい。', '1902', '近代', '{"accept":["1902年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nichiro', '次の説明にあてはまる語句を答えなさい。
「1904年に始まったロシアとの戦争。ポーツマス条約で講和したが賠償金は得られなかった」', '日露戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nichiro-year', '「日露戦争」は西暦何年のことか。数字で答えなさい。', '1904', '近代', '{"accept":["1904年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'portsmouth', '次の説明にあてはまる語句を答えなさい。
「1905年に結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった」', 'ポーツマス条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'portsmouth-year', '「ポーツマス条約」は西暦何年のことか。数字で答えなさい。', '1905', '近代', '{"accept":["1905年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kankoku', '次の説明にあてはまる語句を答えなさい。
「1910年、日本が韓国を植民地とした出来事」', '韓国併合', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kankoku-year', '「韓国併合」は西暦何年のことか。数字で答えなさい。', '1910', '近代', '{"accept":["1910年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'ryojisaibanken', '次の説明にあてはまる語句を答えなさい。
「1894年、外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した」', '領事裁判権の撤廃', '近代', '{"accept":["治外法権の撤廃","治外法権撤廃","領事裁判権撤廃","領事裁判権の廃止","治外法権の廃止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'ryojisaibanken-year', '「領事裁判権の撤廃」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'ryojisaibanken-person', '次の説明にあてはまる人物はだれか。
「1894年に領事裁判権の撤廃に成功した」', '陸奥宗光', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kanzei', '次の説明にあてはまる語句を答えなさい。
「1911年、外務大臣が実現し、条約改正が完全に達成された」', '関税自主権の回復', '近代', '{"accept":["関税自主権回復","関税自主権の完全回復"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kanzei-year', '「関税自主権の回復」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'kanzei-person', '次の説明にあてはまる人物はだれか。
「1911年に関税自主権の回復を実現し、条約改正を完成させた」', '小村寿太郎', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nanboku', '次の説明にあてはまる語句を答えなさい。
「1861年に始まったアメリカの内戦。奴隷制をめぐって国内が二分された」', '南北戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nanboku-year', '「南北戦争」は西暦何年のことか。数字で答えなさい。', '1861', '近代', '{"accept":["1861年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'nanboku-person', '次の説明にあてはまる人物はだれか。
「南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた」', 'リンカン', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shingai', '次の説明にあてはまる語句を答えなさい。
「1911年に起こり、清をたおして翌年に中華民国が成立した革命」', '辛亥革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shingai-year', '「辛亥革命」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-bakumatsu-meiji', 'shingai-person', '次の説明にあてはまる人物はだれか。
「三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした」', '孫文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kyoho', '次の説明にあてはまる語句を答えなさい。
「1716年から始まった改革。目安箱の設置や公事方御定書の制定を行った」', '享保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kyoho-year', '「享保の改革」は西暦何年のことか。数字で答えなさい。', '1716', '近世', '{"accept":["1716年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kyoho-person', '次の説明にあてはまる人物はだれか。
「享保の改革を行い、目安箱を設置した」', '徳川吉宗', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tanuma', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tanuma-person', '次の説明にあてはまる人物はだれか。
「株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kansei', '次の説明にあてはまる語句を答えなさい。
「1787年から行われた改革。ききんに備えて米をたくわえさせ、質素倹約を命じた」', '寛政の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kansei-year', '「寛政の改革」は西暦何年のことか。数字で答えなさい。', '1787', '近世', '{"accept":["1787年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kansei-person', '次の説明にあてはまる人物はだれか。
「寛政の改革を行った」', '松平定信', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tenmei', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた」', '天明のききん', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tenpo', '次の説明にあてはまる語句を答えなさい。
「1841年から行われた改革。株仲間の解散などを命じたが、2年余りで失敗した」', '天保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tenpo-year', '「天保の改革」は西暦何年のことか。数字で答えなさい。', '1841', '近世', '{"accept":["1841年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'tenpo-person', '次の説明にあてはまる人物はだれか。
「天保の改革を行い、株仲間を解散させた」', '水野忠邦', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'oshio', '次の説明にあてはまる語句を答えなさい。
「1837年、ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱」', '大塩平八郎の乱', '近世', '{"accept":["大塩の乱"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'oshio-year', '「大塩平八郎の乱」は西暦何年のことか。数字で答えなさい。', '1837', '近世', '{"accept":["1837年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'uchiharai', '次の説明にあてはまる語句を答えなさい。
「1825年、日本に近づく外国船を追い払うことを命じた幕府の法令」', '異国船打払令', '近世', '{"accept":["外国船打払令","無二念打払令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'uchiharai-year', '「異国船打払令」は西暦何年のことか。数字で答えなさい。', '1825', '近世', '{"accept":["1825年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kabunakama', '次の説明にあてはまる語句を答えなさい。
「幕府や藩に公認され、営業を独占した商工業者の同業組合」', '株仲間', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'uchikowashi', '次の説明にあてはまる語句を答えなさい。
「ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動」', '打ちこわし', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'manufacture', '次の説明にあてはまる語句を答えなさい。
「作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう」', '工場制手工業', '近世', '{"accept":["マニュファクチュア"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kasei', '次の説明にあてはまる語句を答えなさい。
「19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化」', '化政文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'ukiyoe', '次の説明にあてはまる語句を答えなさい。
「町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった」', '浮世絵', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'hokusai', '次の説明にあてはまる語句を答えなさい。
「葛飾北斎がえがいた、さまざまな場所からの富士山の風景画集」', '富嶽三十六景', '近世', '{"accept":["富岳三十六景"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'hokusai-person', '次の説明にあてはまる人物はだれか。
「『富嶽三十六景』をえがき、風景版画で人気を集めた」', '葛飾北斎', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'hiroshige', '次の説明にあてはまる語句を答えなさい。
「歌川広重がえがいた、江戸から京都までの宿場の風景画集」', '東海道五十三次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'hiroshige-person', '次の説明にあてはまる人物はだれか。
「『東海道五十三次』をえがいた」', '歌川広重', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'rangaku', '次の説明にあてはまる語句を答えなさい。
「オランダ語を通じてヨーロッパの学問や技術を学ぶ学問」', '蘭学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kaitai', '次の説明にあてはまる語句を答えなさい。
「1774年、オランダ語の人体解剖書を翻訳して出版された医学書」', '解体新書', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kaitai-year', '「解体新書」は西暦何年のことか。数字で答えなさい。', '1774', '近世', '{"accept":["1774年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kaitai-person', '次の説明にあてはまる人物はだれか。
「前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した」', '杉田玄白', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kokugaku', '次の説明にあてはまる語句を答えなさい。
「仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問」', '国学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'kokugaku-person', '次の説明にあてはまる人物はだれか。
「『古事記伝』を著し、国学を大成した」', '本居宣長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'inou', '次の説明にあてはまる語句を答えなさい。
「全国を測量してつくられた、日本で初めての正確な日本地図。1821年に完成した」', '大日本沿海輿地全図', '近世', '{"accept":["伊能図"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'inou-year', '「大日本沿海輿地全図」は西暦何年のことか。数字で答えなさい。', '1821', '近世', '{"accept":["1821年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'inou-person', '次の説明にあてはまる人物はだれか。
「全国を歩いて測量し、正確な日本地図のもとをつくった」', '伊能忠敬', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'terakoya', '次の説明にあてはまる語句を答えなさい。
「町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場」', '寺子屋', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'meiyo', '次の説明にあてはまる語句を答えなさい。
「1688年、イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた」', '名誉革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'meiyo-year', '「名誉革命」は西暦何年のことか。数字で答えなさい。', '1688', '近世', '{"accept":["1688年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'dokuritsu', '次の説明にあてはまる語句を答えなさい。
「1776年、イギリスからの独立にあたって出された、自由と平等をうたった宣言」', 'アメリカ独立宣言', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'dokuritsu-year', '「アメリカ独立宣言」は西暦何年のことか。数字で答えなさい。', '1776', '近世', '{"accept":["1776年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'furansu', '次の説明にあてはまる語句を答えなさい。
「1789年に始まり、自由・平等・国民主権をうたう人権宣言が出された革命」', 'フランス革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'furansu-year', '「フランス革命」は西暦何年のことか。数字で答えなさい。', '1789', '近世', '{"accept":["1789年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-koki', 'sangyokakumei', '次の説明にあてはまる語句を答えなさい。
「18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化」', '産業革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sekigahara', '次の説明にあてはまる語句を答えなさい。
「1600年、徳川家康が石田三成らを破り、天下の実権をにぎった戦い」', '関ヶ原の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sekigahara-year', '「関ヶ原の戦い」は西暦何年のことか。数字で答えなさい。', '1600', '近世', '{"accept":["1600年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'edobakufu', '次の説明にあてはまる語句を答えなさい。
「1603年、徳川家康が征夷大将軍となって開いた幕府」', '江戸幕府', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'edobakufu-year', '「江戸幕府」は西暦何年のことか。数字で答えなさい。', '1603', '近世', '{"accept":["1603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'edobakufu-person', '次の説明にあてはまる人物はだれか。
「関ヶ原の戦いに勝ち、江戸に幕府を開いた」', '徳川家康', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'bukeshohatto', '次の説明にあてはまる語句を答えなさい。
「1615年に定められた、大名を統制するためのきまり」', '武家諸法度', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'bukeshohatto-year', '「武家諸法度」は西暦何年のことか。数字で答えなさい。', '1615', '近世', '{"accept":["1615年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sankinkotai', '次の説明にあてはまる語句を答えなさい。
「1635年に制度化された、大名が1年おきに江戸と領地を行き来するきまり」', '参勤交代', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sankinkotai-year', '「参勤交代」は西暦何年のことか。数字で答えなさい。', '1635', '近世', '{"accept":["1635年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sankinkotai-person', '次の説明にあてはまる人物はだれか。
「参勤交代を制度化し、鎖国を完成させた」', '徳川家光', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'tozama', '次の説明にあてはまる語句を答えなさい。
「関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された」', '外様大名', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'goningumi', '次の説明にあてはまる語句を答えなさい。
「近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み」', '五人組', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shimabara', '次の説明にあてはまる語句を答えなさい。
「1637年、重い年貢とキリスト教の弾圧に苦しむ人々が天草四郎を中心に起こした一揆」', '島原・天草一揆', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shimabara-year', '「島原・天草一揆」は西暦何年のことか。数字で答えなさい。', '1637', '近世', '{"accept":["1637年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sakoku', '次の説明にあてはまる語句を答えなさい。
「1641年に完成した、貿易相手と場所を幕府が厳しく制限した体制。長崎の出島でオランダと中国のみ交易した」', '鎖国', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'sakoku-year', '「鎖国」は西暦何年のことか。数字で答えなさい。', '1641', '近世', '{"accept":["1641年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'dejima', '次の説明にあてはまる語句を答えなさい。
「鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島」', '出島', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shuinsen', '次の説明にあてはまる語句を答えなさい。
「江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易」', '朱印船貿易', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shorui', '次の説明にあてはまる語句を答えなさい。
「徳川綱吉が出した、犬をはじめ生き物を大切にすることを命じた極端な法令」', '生類憐みの令', '近世', '{"accept":["生類憐れみの令","生類あわれみの令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shorui-person', '次の説明にあてはまる人物はだれか。
「生類憐みの令を出し、学問を重んじる政治を行った」', '徳川綱吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'shinden', '次の説明にあてはまる語句を答えなさい。
「年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと」', '新田開発', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'gonin', '次の説明にあてはまる語句を答えなさい。
「江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路」', '五街道', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'kurayashiki', '次の説明にあてはまる語句を答えなさい。
「諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫」', '蔵屋敷', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'genroku', '次の説明にあてはまる語句を答えなさい。
「17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化」', '元禄文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'ukiyozoshi', '次の説明にあてはまる語句を答えなさい。
「町人の暮らしや欲望をありのままにえがいた小説。井原西鶴が代表」', '浮世草子', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'ukiyozoshi-person', '次の説明にあてはまる人物はだれか。
「『日本永代蔵』などの浮世草子で町人の生活をえがいた」', '井原西鶴', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'haikai', '次の説明にあてはまる語句を答えなさい。
「五・七・五の形式の文芸。松尾芭蕉が芸術性を高めた」', '俳諧', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'haikai-person', '次の説明にあてはまる人物はだれか。
「各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた」', '松尾芭蕉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'joruri', '次の説明にあてはまる語句を答えなさい。
「人形をあやつって物語を演じる芸能。近松門左衛門が脚本を書いた」', '人形浄瑠璃', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-edo-zenki', 'joruri-person', '次の説明にあてはまる人物はだれか。
「『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた」', '近松門左衛門', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'potsdam', '次の説明にあてはまる語句を答えなさい。
「1945年に受け入れて日本が降伏することになった、連合国からの宣言」', 'ポツダム宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'potsdam-year', '「ポツダム宣言」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nochikaikaku', '次の説明にあてはまる語句を答えなさい。
「戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革」', '農地改革', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'zaibatsu', '次の説明にあてはまる語句を答えなさい。
「戦後、経済を支配していた大きな企業グループを解散させた改革」', '財閥解体', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nihonkoku-kenpo', '次の説明にあてはまる語句を答えなさい。
「1946年11月3日に公布され、翌年5月3日に施行された憲法。国民主権・基本的人権の尊重・平和主義を三原則とする」', '日本国憲法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nihonkoku-kenpo-year', '「日本国憲法」は西暦何年のことか。数字で答えなさい。', '1946', '現代', '{"accept":["1946年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'reisen', '次の説明にあてはまる語句を答えなさい。
「戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態」', '冷戦', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'chosen', '次の説明にあてはまる語句を答えなさい。
「1950年に始まった戦争。日本は物資の生産で好景気となった」', '朝鮮戦争', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'chosen-year', '「朝鮮戦争」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'sanfrancisco', '次の説明にあてはまる語句を答えなさい。
「1951年に48か国と結ばれ、翌年日本が独立を回復した条約」', 'サンフランシスコ平和条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'sanfrancisco-year', '「サンフランシスコ平和条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'sanfrancisco-person', '次の説明にあてはまる人物はだれか。
「サンフランシスコ平和条約と日米安全保障条約に調印した首相」', '吉田茂', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nisso', '次の説明にあてはまる語句を答えなさい。
「1956年、ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言」', '日ソ共同宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nisso-year', '「日ソ共同宣言」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nisso-person', '次の説明にあてはまる人物はだれか。
「1956年にソ連を訪れ、日ソ共同宣言に調印した首相」', '鳩山一郎', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kokuren', '次の説明にあてはまる語句を答えなさい。
「1956年、日ソ共同宣言によってソ連の反対がなくなり実現した」', '国際連合への加盟', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kokuren-year', '「国際連合への加盟」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'gojugonen', '次の説明にあてはまる語句を答えなさい。
「1955年から約38年間続いた、自由民主党が与党であり続けた政治体制」', '55年体制', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kodo', '次の説明にあてはまる語句を答えなさい。
「1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期」', '高度経済成長', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'shinkansen', '次の説明にあてはまる語句を答えなさい。
「1964年、東京オリンピックに合わせて開通した高速鉄道」', '東海道新幹線', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'shinkansen-year', '「東海道新幹線」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'tokyo-olympic', '次の説明にあてはまる語句を答えなさい。
「1964年、アジアで初めて開かれた大会。東海道新幹線の開通など高度経済成長を象徴した」', '東京オリンピック', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'tokyo-olympic-year', '「東京オリンピック」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kogai', '次の説明にあてはまる語句を答えなさい。
「高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく」', '四大公害病', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'sekiyu', '次の説明にあてはまる語句を答えなさい。
「1973年、中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事」', '石油危機', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'sekiyu-year', '「石油危機」は西暦何年のことか。数字で答えなさい。', '1973', '現代', '{"accept":["1973年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'okinawa', '次の説明にあてはまる語句を答えなさい。
「1972年、アメリカの統治下から日本に復帰した出来事」', '沖縄の返還', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'okinawa-year', '「沖縄の返還」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'okinawa-person', '次の説明にあてはまる人物はだれか。
「沖縄の返還を実現し、非核三原則を表明した首相」', '佐藤栄作', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nicchu-kokko', '次の説明にあてはまる語句を答えなさい。
「1972年、日中共同声明によって中国との国交が結ばれたこと」', '日中国交正常化', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nicchu-kokko-year', '「日中国交正常化」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nicchu-kokko-person', '次の説明にあてはまる人物はだれか。
「1972年に中国を訪れ、日中共同声明に調印した首相」', '田中角栄', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'bubble', '次の説明にあてはまる語句を答えなさい。
「1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気」', 'バブル経済', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'ghq', '次の説明にあてはまる語句を答えなさい。
「戦後、日本を占領して民主化を指令した、アメリカを中心とする連合国の組織」', 'GHQ', '現代', '{"accept":["連合国軍最高司令官総司令部","連合国軍総司令部"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'ghq-person', '次の説明にあてはまる人物はだれか。
「GHQの最高司令官として、日本の占領政策を指揮した」', 'マッカーサー', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'anpo', '次の説明にあてはまる語句を答えなさい。
「1951年、サンフランシスコ平和条約と同じ日に結ばれ、独立後もアメリカ軍が日本にとどまることを認めた条約」', '日米安全保障条約', '現代', '{"accept":["日米安保条約","安保条約"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'anpo-year', '「日米安全保障条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'josei-sanseiken', '次の説明にあてはまる語句を答えなさい。
「1945年の選挙法改正で、満20歳以上の男女に認められた権利」', '女性参政権', '現代', '{"accept":["婦人参政権","女性の参政権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'josei-sanseiken-year', '「女性参政権」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'berlin', '次の説明にあてはまる語句を答えなさい。
「1989年、東西ドイツを分けていた壁がこわされ、冷戦の終わりを象徴した出来事」', 'ベルリンの壁の崩壊', '現代', '{"accept":["ベルリンの壁崩壊","ベルリンの壁がこわされた"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'berlin-year', '「ベルリンの壁の崩壊」は西暦何年のことか。数字で答えなさい。', '1989', '現代', '{"accept":["1989年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'malta', '次の説明にあてはまる語句を答えなさい。
「1989年、アメリカとソ連の首脳が地中海の島で会談し、冷戦の終結を宣言した出来事」', 'マルタ会談', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'malta-year', '「マルタ会談」は西暦何年のことか。数字で答えなさい。', '1989', '現代', '{"accept":["1989年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'soren-kaitai', '次の説明にあてはまる語句を答えなさい。
「1991年、15の共和国に分かれて消滅した、東側陣営の中心だった国の出来事」', 'ソ連の解体', '現代', '{"accept":["ソビエト連邦の解体","ソ連解体","ソ連の消滅"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'soren-kaitai-year', '「ソ連の解体」は西暦何年のことか。数字で答えなさい。', '1991', '現代', '{"accept":["1991年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'chuka', '次の説明にあてはまる語句を答えなさい。
「1949年、毛沢東を主席として成立した、東側陣営に属する中国の国家」', '中華人民共和国の成立', '現代', '{"accept":["中華人民共和国"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'chuka-year', '「中華人民共和国の成立」は西暦何年のことか。数字で答えなさい。', '1949', '現代', '{"accept":["1949年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kyoiku', '次の説明にあてはまる語句を答えなさい。
「1947年に制定された、民主主義にもとづく教育の理念を定めた法律」', '教育基本法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kokusairengo', '次の説明にあてはまる語句を答えなさい。
「1945年、二度の世界大戦への反省から、世界の平和を守るために発足した国際組織」', '国際連合', '現代', '{"accept":["国連"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kokusairengo-year', '「国際連合」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'tokuju', '次の説明にあてはまる語句を答えなさい。
「朝鮮戦争のとき、アメリカ軍向けの物資の注文が増えたことで日本が好景気になったこと」', '特需景気', '現代', '{"accept":["朝鮮特需","特需"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'keisatsu-yobitai', '次の説明にあてはまる語句を答えなさい。
「1950年、朝鮮戦争をきっかけにGHQの指令でつくられた組織。のちの自衛隊のもと」', '警察予備隊', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'keisatsu-yobitai-year', '「警察予備隊」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'jieitai', '次の説明にあてはまる語句を答えなさい。
「1954年、警察予備隊・保安隊を経て発足した、日本の防衛にあたる組織」', '自衛隊', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'jieitai-year', '「自衛隊」は西暦何年のことか。数字で答えなさい。', '1954', '現代', '{"accept":["1954年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nikkan', '次の説明にあてはまる語句を答えなさい。
「1965年、韓国を朝鮮半島唯一の政府と認め、国交を正常化した条約」', '日韓基本条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nikkan-year', '「日韓基本条約」は西暦何年のことか。数字で答えなさい。', '1965', '現代', '{"accept":["1965年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nicchu-heiwa', '次の説明にあてはまる語句を答えなさい。
「1978年、日中国交正常化を受けて結ばれた、中国との友好を定めた条約」', '日中平和友好条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'nicchu-heiwa-year', '「日中平和友好条約」は西暦何年のことか。数字で答えなさい。', '1978', '現代', '{"accept":["1978年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'hikaku', '次の説明にあてはまる語句を答えなさい。
「核兵器を「持たず、つくらず、持ちこませず」という、日本政府の方針」', '非核三原則', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'chuto', '次の説明にあてはまる語句を答えなさい。
「1973年に起こり、石油危機の引き金となった中東の戦争」', '第四次中東戦争', '現代', '{"accept":["中東戦争"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kogai-kihon', '次の説明にあてはまる語句を答えなさい。
「1967年、公害から国民の健康を守るために制定された法律」', '公害対策基本法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kogai-kihon-year', '「公害対策基本法」は西暦何年のことか。数字で答えなさい。', '1967', '現代', '{"accept":["1967年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kankyocho', '次の説明にあてはまる語句を答えなさい。
「1971年、公害対策や自然保護を担当するために設置された国の役所。2001年に環境省となった」', '環境庁', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kankyocho-year', '「環境庁」は西暦何年のことか。数字で答えなさい。', '1971', '現代', '{"accept":["1971年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'shotoku-baizo', '次の説明にあてはまる語句を答えなさい。
「1960年、10年で国民の所得を2倍にすることを目標にかかげた政策」', '所得倍増計画', '現代', '{"accept":["国民所得倍増計画"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'shotoku-baizo-year', '「所得倍増計画」は西暦何年のことか。数字で答えなさい。', '1960', '現代', '{"accept":["1960年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'shotoku-baizo-person', '次の説明にあてはまる人物はだれか。
「所得倍増計画をかかげ、高度経済成長を進めた首相」', '池田勇人', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'bubble-hokai', '次の説明にあてはまる語句を答えなさい。
「1991年ごろ、地価や株価が急落してバブル経済が終わり、長い不況が始まった出来事」', 'バブル経済の崩壊', '現代', '{"accept":["バブルの崩壊","バブル崩壊"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'bubble-hokai-year', '「バブル経済の崩壊」は西暦何年のことか。数字で答えなさい。', '1991', '現代', '{"accept":["1991年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kenpo-shuken', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、国の政治のあり方を最終的に決める力が国民にあるとするもの」', '国民主権', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kenpo-jinken', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、人が生まれながらにもつ権利を侵してはならないとするもの」', '基本的人権の尊重', '現代', '{"accept":["基本的人権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-gendai', 'kenpo-heiwa', '次の説明にあてはまる語句を答えなさい。
「日本国憲法の三つの原則のうち、戦争を放棄し戦力をもたないとするもの。第9条に定められている」', '平和主義', '現代', '{"accept":["戦争の放棄"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'jomondoki', '次の説明にあてはまる語句を答えなさい。
「縄目の文様がつけられた、厚手で黒っぽい土器」', '縄文土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'tateana', '次の説明にあてはまる語句を答えなさい。
「地面を掘り下げ、柱を立てて屋根をかけた住まい」', '竪穴住居', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'kaizuka', '次の説明にあてはまる語句を答えなさい。
「当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる」', '貝塚', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'dogu', '次の説明にあてはまる語句を答えなさい。
「縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている」', '土偶', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'sannai', '次の説明にあてはまる語句を答えなさい。
「青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡」', '三内丸山遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'yayoidoki', '次の説明にあてはまる語句を答えなさい。
「縄文土器より薄手でかたく、かざりの少ない赤褐色の土器」', '弥生土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'inasaku', '次の説明にあてはまる語句を答えなさい。
「大陸から九州北部に伝わり、弥生時代に各地へ広まった農業」', '稲作', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'takayuka', '次の説明にあてはまる語句を答えなさい。
「収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉」', '高床倉庫', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'toro', '次の説明にあてはまる語句を答えなさい。
「静岡県にある、水田の跡が見つかった弥生時代の遺跡」', '登呂遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'yoshinogari', '次の説明にあてはまる語句を答えなさい。
「佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡」', '吉野ヶ里遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'seidoki', '次の説明にあてはまる語句を答えなさい。
「銅鐸や銅剣など、主に祭りの道具として使われた金属器」', '青銅器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'himiko', '次の説明にあてはまる語句を答えなさい。
「3世紀ごろ、女王卑弥呼が治めていたとされる国。魏に使いを送り「親魏倭王」の称号を得た」', '邪馬台国', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'himiko-person', '次の説明にあてはまる人物はだれか。
「魏に使いを送り、「親魏倭王」の称号と金印を授けられた」', '卑弥呼', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'kofun', '次の説明にあてはまる語句を答えなさい。
「3世紀後半から各地につくられた、王や豪族の大きな墓」', '古墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'zenpokoen', '次の説明にあてはまる語句を答えなさい。
「円形と四角形を組み合わせた、かぎ穴のような形をした古墳」', '前方後円墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'daisen', '次の説明にあてはまる語句を答えなさい。
「大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる」', '大仙古墳', '原始', '{"accept":["大仙陵古墳","仁徳天皇陵古墳","仁徳天皇陵","大山古墳"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'haniwa', '次の説明にあてはまる語句を答えなさい。
「古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある」', '埴輪', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'yamato', '次の説明にあてはまる語句を答えなさい。
「3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権」', '大和政権', '原始', '{"accept":["大和朝廷","ヤマト政権","ヤマト王権","大和王権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'toraijin', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々」', '渡来人', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'heiankyo', '次の説明にあてはまる語句を答えなさい。
「794年に京都につくられ、以後約400年にわたって都となった」', '平安京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'heiankyo-year', '「平安京」は西暦何年のことか。数字で答えなさい。', '794', '古代', '{"accept":["794年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kentoshi-teishi', '次の説明にあてはまる語句を答えなさい。
「894年、唐のおとろえと航海の危険を理由に取りやめられた」', '遣唐使の停止', '古代', '{"accept":["遣唐使の廃止","遣唐使廃止","遣唐使停止","遣唐使の中止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kentoshi-teishi-year', '「遣唐使の停止」は西暦何年のことか。数字で答えなさい。', '894', '古代', '{"accept":["894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kentoshi-teishi-person', '次の説明にあてはまる人物はだれか。
「894年、遣唐使の停止を提案した」', '菅原道真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'sekkan', '次の説明にあてはまる語句を答えなさい。
「藤原氏が娘を天皇のきさきにし、摂政・関白として実権をにぎった政治」', '摂関政治', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'sekkan-person', '次の説明にあてはまる人物はだれか。
「4人の娘を天皇のきさきにし、摂関政治の全盛期を築いた」', '藤原道長', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'byodoin', '次の説明にあてはまる語句を答えなさい。
「1053年、藤原頼通が宇治に建てた阿弥陀堂。浄土信仰を代表する建物」', '平等院鳳凰堂', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'byodoin-year', '「平等院鳳凰堂」は西暦何年のことか。数字で答えなさい。', '1053', '古代', '{"accept":["1053年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'byodoin-person', '次の説明にあてはまる人物はだれか。
「宇治に平等院鳳凰堂を建てた」', '藤原頼通', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kokufu', '次の説明にあてはまる語句を答えなさい。
「遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化」', '国風文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'genji', '次の説明にあてはまる語句を答えなさい。
「光源氏を主人公とする、国風文化を代表する長編物語」', '源氏物語', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'genji-person', '次の説明にあてはまる人物はだれか。
「かな文字を用いて長編物語『源氏物語』を書いた」', '紫式部', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'makura', '次の説明にあてはまる語句を答えなさい。
「「春はあけぼの」で始まる、宮中の生活をつづった随筆」', '枕草子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'makura-person', '次の説明にあてはまる人物はだれか。
「宮中の生活を随筆『枕草子』につづった」', '清少納言', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kokinshu', '次の説明にあてはまる語句を答えなさい。
「紀貫之らが天皇の命令でまとめた、最初の勅撰和歌集」', '古今和歌集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kokinshu-person', '次の説明にあてはまる人物はだれか。
「『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた」', '紀貫之', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'jodo', '次の説明にあてはまる語句を答えなさい。
「阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表」', '浄土信仰', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'saicho', '次の説明にあてはまる語句を答えなさい。
「最澄が唐から伝え、比叡山延暦寺を中心に広まった仏教の宗派」', '天台宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'saicho-person', '次の説明にあてはまる人物はだれか。
「唐にわたって天台宗を学び、比叡山に延暦寺を建てた」', '最澄', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kukai', '次の説明にあてはまる語句を答えなさい。
「空海が唐から伝え、高野山金剛峯寺を中心に広まった仏教の宗派」', '真言宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'kukai-person', '次の説明にあてはまる人物はだれか。
「唐にわたって真言宗を学び、高野山に金剛峯寺を建てた」', '空海', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'shoen', '次の説明にあてはまる語句を答えなさい。
「貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった」', '荘園', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'insei', '次の説明にあてはまる語句を答えなさい。
「1086年、白河上皇が始めた、天皇の位をゆずったあとも上皇として政治を動かす仕組み」', '院政', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'insei-year', '「院政」は西暦何年のことか。数字で答えなさい。', '1086', '古代', '{"accept":["1086年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'insei-person', '次の説明にあてはまる人物はだれか。
「天皇の位をゆずったあとも上皇として政治を行う院政を始めた」', '白河上皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'masakado', '次の説明にあてはまる語句を答えなさい。
「10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった」', '平将門の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'hogen', '次の説明にあてはまる語句を答えなさい。
「1156年、天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された」', '保元の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'hogen-year', '「保元の乱」は西暦何年のことか。数字で答えなさい。', '1156', '古代', '{"accept":["1156年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'dajodaijin-kiyomori', '次の説明にあてはまる語句を答えなさい。
「1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'dajodaijin-kiyomori-person', '次の説明にあてはまる人物はだれか。
「武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'dannoura', '次の説明にあてはまる語句を答えなさい。
「1185年、現在の山口県で平氏がほろんだ戦い」', '壇ノ浦の戦い', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'dannoura-year', '「壇ノ浦の戦い」は西暦何年のことか。数字で答えなさい。', '1185', '中世', '{"accept":["1185年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'seiitaishogun', '次の説明にあてはまる語句を答えなさい。
「1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'seiitaishogun-person', '次の説明にあてはまる人物はだれか。
「守護・地頭を置き、鎌倉に幕府を開いた」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jokyu', '次の説明にあてはまる語句を答えなさい。
「1221年、後鳥羽上皇が幕府をたおそうとして起こしたが敗れた戦い」', '承久の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jokyu-year', '「承久の乱」は西暦何年のことか。数字で答えなさい。', '1221', '中世', '{"accept":["1221年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'goseibai', '次の説明にあてはまる語句を答えなさい。
「1232年に定められた、武士の慣習をもとにした初めての武家法」', '御成敗式目', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'goseibai-year', '「御成敗式目」は西暦何年のことか。数字で答えなさい。', '1232', '中世', '{"accept":["1232年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'goseibai-person', '次の説明にあてはまる人物はだれか。
「執権として御成敗式目を定めた」', '北条泰時', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'bunei', '次の説明にあてはまる語句を答えなさい。
「1274年、元と高麗の軍が北九州にせめてきた最初の元寇」', '文永の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'bunei-year', '「文永の役」は西暦何年のことか。数字で答えなさい。', '1274', '中世', '{"accept":["1274年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'koan', '次の説明にあてはまる語句を答えなさい。
「1281年、元が再び北九州にせめてきた二度目の元寇」', '弘安の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'koan-year', '「弘安の役」は西暦何年のことか。数字で答えなさい。', '1281', '中世', '{"accept":["1281年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'koan-person', '次の説明にあてはまる人物はだれか。
「執権として二度の元寇を退けた」', '北条時宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'shugo', '次の説明にあてはまる語句を答えなさい。
「源頼朝が国ごとに置いた、軍事・警察の仕事をする役職」', '守護', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jito', '次の説明にあてはまる語句を答えなさい。
「源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職」', '地頭', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'shikken', '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ」', '執権', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'goonhoko', '次の説明にあてはまる語句を答えなさい。
「将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係」', '御恩と奉公', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'gokenin', '次の説明にあてはまる語句を答えなさい。
「将軍と主従関係を結んだ武士」', '御家人', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'shinkokin', '次の説明にあてはまる語句を答えなさい。
「鎌倉時代に後鳥羽上皇の命令でまとめられた歌集」', '新古今和歌集', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'heike', '次の説明にあてはまる語句を答えなさい。
「平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた」', '平家物語', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'hojoki', '次の説明にあてはまる語句を答えなさい。
「「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆」', '方丈記', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'tsurezure', '次の説明にあてはまる語句を答えなさい。
「「つれづれなるままに」で始まる、兼好法師の随筆」', '徒然草', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'kongorikishi', '次の説明にあてはまる語句を答えなさい。
「運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻」', '金剛力士像', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jodoshu', '次の説明にあてはまる語句を答えなさい。
「「南無阿弥陀仏」と念仏を唱えれば救われると説いた、法然が開いた宗派」', '浄土宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jodoshu-person', '次の説明にあてはまる人物はだれか。
「念仏を唱えれば救われると説き、浄土宗を開いた」', '法然', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jodoshinshu', '次の説明にあてはまる語句を答えなさい。
「自分の罪を自覚した悪人こそ救われると説いた、親鸞が開いた宗派」', '浄土真宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'jodoshinshu-person', '次の説明にあてはまる人物はだれか。
「法然の弟子で、浄土真宗を開いた」', '親鸞', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'nichirenshu', '次の説明にあてはまる語句を答えなさい。
「「南無妙法蓮華経」と題目を唱えることを説いた宗派」', '日蓮宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'nichirenshu-person', '次の説明にあてはまる人物はだれか。
「題目を唱えることを説き、日蓮宗を開いた」', '日蓮', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'zen', '次の説明にあてはまる語句を答えなさい。
「座禅によってさとりを開こうとする仏教。武士の気風に合い広まった」', '禅宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'nimosaku', '次の説明にあてはまる語句を答えなさい。
「同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった」', '二毛作', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-kamakura', 'teikiichi', '次の説明にあてはまる語句を答えなさい。
「寺社の門前や交通の要地で、月に数回開かれた市」', '定期市', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kenmu', '次の説明にあてはまる語句を答えなさい。
「1334年から始まった、鎌倉幕府をたおした天皇による政治。武士の不満で2年余りで失敗した」', '建武の新政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kenmu-year', '「建武の新政」は西暦何年のことか。数字で答えなさい。', '1334', '中世', '{"accept":["1334年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kenmu-person', '次の説明にあてはまる人物はだれか。
「鎌倉幕府をたおし、建武の新政を行った」', '後醍醐天皇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'muromachi', '次の説明にあてはまる語句を答えなさい。
「1338年、足利尊氏が征夷大将軍となって開いた幕府」', '室町幕府', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'muromachi-year', '「室町幕府」は西暦何年のことか。数字で答えなさい。', '1338', '中世', '{"accept":["1338年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'muromachi-person', '次の説明にあてはまる人物はだれか。
「征夷大将軍となり、京都に室町幕府を開いた」', '足利尊氏', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kango', '次の説明にあてはまる語句を答えなさい。
「1404年に始まった明との貿易。倭寇と区別するために合い札を用いた」', '勘合貿易', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kango-year', '「勘合貿易」は西暦何年のことか。数字で答えなさい。', '1404', '中世', '{"accept":["1404年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kango-person', '次の説明にあてはまる人物はだれか。
「南北朝を統一し、明と勘合貿易を始めた。金閣を建てた」', '足利義満', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kinkaku', '次の説明にあてはまる語句を答えなさい。
「足利義満が京都の北山に建てた、公家と武家の文化が混じった建物」', '金閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'ginkaku', '次の説明にあてはまる語句を答えなさい。
「足利義政が京都の東山に建てた建物。書院造が用いられている」', '銀閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'ginkaku-person', '次の説明にあてはまる人物はだれか。
「東山に銀閣を建てた。その後継ぎ争いが応仁の乱の原因となった」', '足利義政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'onin', '次の説明にあてはまる語句を答えなさい。
「1467年から11年続いた戦乱。京都が荒れ、戦国時代が始まるきっかけとなった」', '応仁の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'onin-year', '「応仁の乱」は西暦何年のことか。数字で答えなさい。', '1467', '中世', '{"accept":["1467年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'teppo', '次の説明にあてはまる語句を答えなさい。
「1543年、種子島に流れ着いたポルトガル人によって伝えられた」', '鉄砲の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'teppo-year', '「鉄砲の伝来」は西暦何年のことか。数字で答えなさい。', '1543', '中世', '{"accept":["1543年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kirisutokyo', '次の説明にあてはまる語句を答えなさい。
「1549年、鹿児島に上陸した宣教師によって伝えられた」', 'キリスト教の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kirisutokyo-year', '「キリスト教の伝来」は西暦何年のことか。数字で答えなさい。', '1549', '中世', '{"accept":["1549年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'kirisutokyo-person', '次の説明にあてはまる人物はだれか。
「1549年に鹿児島に来て、日本にキリスト教を伝えた」', 'フランシスコ・ザビエル', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'noh', '次の説明にあてはまる語句を答えなさい。
「足利義満の保護を受けた観阿弥・世阿弥の父子が大成した舞台芸能」', '能', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'noh-person', '次の説明にあてはまる人物はだれか。
「父の観阿弥とともに能を大成した」', '世阿弥', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'suibokuga', '次の説明にあてはまる語句を答えなさい。
「墨の濃淡だけで自然をえがく絵画。室町時代に雪舟が日本独自の様式を完成させた」', '水墨画', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'suibokuga-person', '次の説明にあてはまる人物はだれか。
「明にわたって学び、日本の水墨画を大成した」', '雪舟', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'shoin', '次の説明にあてはまる語句を答えなさい。
「床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった」', '書院造', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'so-mura', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が寄合を開いて村のきまりを定めた自治組織」', '惣', '中世', '{"accept":["惣村"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'za', '次の説明にあてはまる語句を答えなさい。
「商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合」', '座', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'tsuchiikki', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆」', '土一揆', '中世', '{"accept":["徳政一揆"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'gekokujo', '次の説明にあてはまる語句を答えなさい。
「地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴」', '下剋上', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'bunkokuho', '次の説明にあてはまる語句を答えなさい。
「戦国大名が領国を治めるために独自に定めたきまり」', '分国法', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'bashaku', '次の説明にあてはまる語句を答えなさい。
「馬を使って物資を運んだ運送業者。土一揆の中心になることもあった」', '馬借', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'wako', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた」', '倭寇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'renaissance', '次の説明にあてはまる語句を答えなさい。
「14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き」', 'ルネサンス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'shukyokaikaku', '次の説明にあてはまる語句を答えなさい。
「16世紀、免罪符を売る教会を批判してルターらが始めた改革」', '宗教改革', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'shukyokaikaku-person', '次の説明にあてはまる人物はだれか。
「免罪符を売る教会を批判し、宗教改革を始めた」', 'ルター', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'columbus', '次の説明にあてはまる語句を答えなさい。
「1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'columbus-person', '次の説明にあてはまる人物はだれか。
「1492年に大西洋を横断し、アメリカ大陸付近の島に到達した」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-muromachi', 'magellan', '次の説明にあてはまる語句を答えなさい。
「その船隊が初めて世界一周を成しとげた人物」', 'マゼラン', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'heijokyo', '次の説明にあてはまる語句を答えなさい。
「710年に奈良につくられた、唐の長安にならった都」', '平城京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'heijokyo-year', '「平城京」は西暦何年のことか。数字で答えなさい。', '710', '古代', '{"accept":["710年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'konden', '次の説明にあてはまる語句を答えなさい。
「743年、新しく開墾した土地の永久私有を認めた法。公地公民の原則がくずれるきっかけになった」', '墾田永年私財法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'konden-year', '「墾田永年私財法」は西暦何年のことか。数字で答えなさい。', '743', '古代', '{"accept":["743年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'todaiji', '次の説明にあてはまる語句を答えなさい。
「752年に開眼供養が行われた、仏教の力で国を守ろうとしてつくられた大仏」', '東大寺の大仏', '古代', '{"accept":["大仏","奈良の大仏","盧舎那仏"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'todaiji-year', '「東大寺の大仏」は西暦何年のことか。数字で答えなさい。', '752', '古代', '{"accept":["752年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'todaiji-person', '次の説明にあてはまる人物はだれか。
「仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた」', '聖武天皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'kojiki', '次の説明にあてはまる語句を答えなさい。
「712年にまとめられた、日本最古の歴史書」', '古事記', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'kojiki-year', '「古事記」は西暦何年のことか。数字で答えなさい。', '712', '古代', '{"accept":["712年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'nihonshoki', '次の説明にあてはまる語句を答えなさい。
「720年にまとめられた、日本の正式な歴史書」', '日本書紀', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'nihonshoki-year', '「日本書紀」は西暦何年のことか。数字で答えなさい。', '720', '古代', '{"accept":["720年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'manyoshu', '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集」', '万葉集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'tenpyo', '次の説明にあてはまる語句を答えなさい。
「奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化」', '天平文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'shosoin', '次の説明にあてはまる語句を答えなさい。
「東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている」', '正倉院', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'ganjin', '次の説明にあてはまる語句を答えなさい。
「何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺」', '唐招提寺', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'ganjin-person', '次の説明にあてはまる人物はだれか。
「何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた」', '鑑真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'daiichiji', '次の説明にあてはまる語句を答えなさい。
「1914年に始まった世界的な戦争。日本は日英同盟を理由に参戦した」', '第一次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'daiichiji-year', '「第一次世界大戦」は西暦何年のことか。数字で答えなさい。', '1914', '近代', '{"accept":["1914年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'roshia', '次の説明にあてはまる語句を答えなさい。
「1917年に起こり、世界で初めての社会主義国が生まれるきっかけとなった革命」', 'ロシア革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'roshia-year', '「ロシア革命」は西暦何年のことか。数字で答えなさい。', '1917', '近代', '{"accept":["1917年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kome', '次の説明にあてはまる語句を答えなさい。
「1918年、米の値上がりに対して富山県から全国に広がった民衆の運動」', '米騒動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kome-year', '「米騒動」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'seitonaikaku', '次の説明にあてはまる語句を答えなさい。
「1918年、原敬が首相となって成立した、日本で初めての本格的なもの」', '政党内閣', '近代', '{"accept":["本格的な政党内閣","原敬内閣"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'seitonaikaku-year', '「政党内閣」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'seitonaikaku-person', '次の説明にあてはまる人物はだれか。
「1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた」', '原敬', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'taisho', '次の説明にあてはまる語句を答えなさい。
「大正時代に高まった、民主主義を求める風潮」', '大正デモクラシー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'futsusenkyo', '次の説明にあてはまる語句を答えなさい。
「1925年に成立し、満25歳以上のすべての男子に選挙権が認められた法律」', '普通選挙法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'futsusenkyo-year', '「普通選挙法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'chian', '次の説明にあてはまる語句を答えなさい。
「1925年、共産主義などの運動を取りしまるために定められた法律」', '治安維持法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'chian-year', '「治安維持法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kanto-daishinsai', '次の説明にあてはまる語句を答えなさい。
「1923年、東京や横浜に大きな被害をもたらした地震災害」', '関東大震災', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kanto-daishinsai-year', '「関東大震災」は西暦何年のことか。数字で答えなさい。', '1923', '近代', '{"accept":["1923年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kokusairenmei', '次の説明にあてはまる語句を答えなさい。
「1920年、第一次世界大戦の反省から世界平和のためにつくられた国際組織」', '国際連盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'kokusairenmei-year', '「国際連盟」は西暦何年のことか。数字で答えなさい。', '1920', '近代', '{"accept":["1920年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'sekaikyoko', '次の説明にあてはまる語句を答えなさい。
「1929年、アメリカの株価暴落をきっかけに世界中に広がった不景気」', '世界恐慌', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'sekaikyoko-year', '「世界恐慌」は西暦何年のことか。数字で答えなさい。', '1929', '近代', '{"accept":["1929年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'manshu', '次の説明にあてはまる語句を答えなさい。
「1931年、南満州鉄道の爆破をきっかけに始まった軍事行動。翌年、満州国がつくられた」', '満州事変', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'manshu-year', '「満州事変」は西暦何年のことか。数字で答えなさい。', '1931', '近代', '{"accept":["1931年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'manshukoku', '次の説明にあてはまる語句を答えなさい。
「1932年、満州事変のあとに日本が中国東北部につくった国」', '満州国', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'manshukoku-year', '「満州国」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'renmei-dattai', '次の説明にあてはまる語句を答えなさい。
「1933年、満州国を認められなかった日本が通告した」', '国際連盟からの脱退', '近代', '{"accept":["国際連盟脱退","連盟脱退"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'renmei-dattai-year', '「国際連盟からの脱退」は西暦何年のことか。数字で答えなさい。', '1933', '近代', '{"accept":["1933年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'goichigo', '次の説明にあてはまる語句を答えなさい。
「1932年、海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった」', '五・一五事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'goichigo-year', '「五・一五事件」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'ninirooku', '次の説明にあてはまる語句を答えなさい。
「1936年、陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件」', '二・二六事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'ninirooku-year', '「二・二六事件」は西暦何年のことか。数字で答えなさい。', '1936', '近代', '{"accept":["1936年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'nicchu', '次の説明にあてはまる語句を答えなさい。
「1937年、北京郊外での衝突をきっかけに始まった中国との戦争」', '日中戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'nicchu-year', '「日中戦争」は西暦何年のことか。数字で答えなさい。', '1937', '近代', '{"accept":["1937年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'sodoin', '次の説明にあてはまる語句を答えなさい。
「1938年、戦争のために国民や物資を政府が自由に動かせるようにした法律」', '国家総動員法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'sodoin-year', '「国家総動員法」は西暦何年のことか。数字で答えなさい。', '1938', '近代', '{"accept":["1938年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'dainiji', '次の説明にあてはまる語句を答えなさい。
「1939年、ドイツのポーランド侵攻によって始まった世界的な戦争」', '第二次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'dainiji-year', '「第二次世界大戦」は西暦何年のことか。数字で答えなさい。', '1939', '近代', '{"accept":["1939年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'taiheiyo', '次の説明にあてはまる語句を答えなさい。
「1941年、ハワイの真珠湾への攻撃などによって始まった戦争」', '太平洋戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-taisho-showa', 'taiheiyo-year', '「太平洋戦争」は西暦何年のことか。数字で答えなさい。', '1941', '近代', '{"accept":["1941年"]}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-haishutsu', 'q-18', '腎臓の働きによって、血液中の尿素の量は増えるか、減るか。', '減る', '腎臓', NULL);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-01', '生物の種類、同じ種類の個体の形質、生態系の多様さなど、生物に見られるさまざまな違いを何というか。', '生物多様性', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-02', 'ある地域に生息する、同じ種類の生物の集まりを何というか。', '個体群', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-03', 'ある地域に生息する、さまざまな種類の生物の集まりを何というか。', '生物群集', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-04', 'ある地域の生物群集と、それを取り巻く環境を合わせたまとまりを何というか。', '生態系', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-05', 'もともとその地域にいなかったのに、人間の活動によって持ち込まれた生物を何というか。', '外来種', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-06', '絶滅するおそれがある生物の種類を何というか。', '絶滅危惧種', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-07', 'その種類の生物が地球上から一個体もいなくなることを何というか。', '絶滅', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-08', '絶滅のおそれがある生物の生息状況などをまとめた資料を何というか。', 'レッドデータブック', '生物多様性', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-09', '道路や都市の開発などによって、生物が生活する場所が失われることを何というか。', '生息地破壊', '環境問題', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-10', '生物の種類や生態系を守り、将来にわたって維持することを何というか。', '環境保全', '環境保全', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kankyou', 'q-11', '生物やその生息地を守るために、開発などを制限して保護する地域を何というか。', '自然保護区', '環境保全', NULL);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-09', '息を吸うとき、横隔膜は収縮して上がるか、下がるか。', '下がる', '呼吸運動', '{"accept":["下降する"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kokyu-junkan', 'q-10', '息を吐くとき、胸郭の容積は大きくなるか、小さくなるか。', '小さくなる', '呼吸運動', '{"accept":["減少する"]}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-kougousei', 'q-15', '葉でつくられたデンプンは、そのままでは水にとけにくい。植物はデンプンを何に変えて、師管を通して運ぶか。', '糖', '養分の移動', NULL);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-06', 'ヒトの女性がつくる生殖細胞を何というか。', '卵', 'ヒトの生殖', '{"accept":["卵細胞"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-07', '精子と卵が結合することを何というか。', '受精', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-08', '受精によってできる最初の細胞を何というか。', '受精卵', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-09', 'ヒトの受精卵が細胞分裂を繰り返して成長する過程を何というか。', '発生', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-10', '精子をつくる男性の生殖器官を何というか。', '精巣', 'ヒトの生殖', '{"accept":["睾丸"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-11', '卵をつくる女性の生殖器官を何というか。', '卵巣', 'ヒトの生殖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-12', '体細胞が分裂して、同じ種類の細胞が2個できる細胞分裂を何というか。', '体細胞分裂', '細胞分裂', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-13', '細胞分裂のとき、核の中でひも状に見えるようになるものを何というか。', '染色体', '細胞分裂', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seishoku', 'q-14', '体細胞分裂によってできた2個の細胞の染色体数は、分裂前と比べてどうなるか。', '変わらない', '細胞分裂', '{"accept":["同じ"]}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-09', '食物連鎖で、生産者を直接食べる消費者を何というか。', '一次消費者', '食物連鎖', '{"accept":["第一次消費者"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-10', '食物連鎖で、植物を食べる動物を何というか。', '草食動物', '食物連鎖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-11', '食物連鎖で、他の動物を食べる動物を何というか。', '肉食動物', '食物連鎖', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-12', '生態系において、生物が生きるためのエネルギーの主なもとは何か。', '太陽光', 'エネルギー', '{"accept":["日光","太陽","太陽のエネルギー"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-13', '食物連鎖を通って、生物から生物へ受け渡されるものは何か。', 'エネルギー', 'エネルギー', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-14', '生態系の中で、エネルギーが生物から生物へ移動する流れを何というか。', 'エネルギーの流れ', 'エネルギー', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-15', '植物の光合成によって、空気中から取り入れられる物質は何か。', '二酸化炭素', '物質循環', '{"accept":["炭酸ガス","CO2"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-16', '植物の光合成によって、空気中へ放出される気体は何か。', '酸素', '物質循環', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-17', '生産者・消費者・分解者の働きによって、物質が生態系の中を繰り返し移動することを何というか。', '物質循環', '物質循環', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-seitaikei', 'q-18', '生態系の中で、生物の種類や数の関係が大きく変化せずに保たれている状態を何というか。', 'つり合い', '生態系', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-01', '光・音・温度など、動物が外界から受け取る変化を何というか。', '刺激', '刺激と反応', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-02', '刺激を受け取り、神経に信号を送る目や耳などの器官を何というか。', '感覚器官', '感覚器官', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-03', '光を刺激として受け取る感覚器官は何か。', '目', '感覚器官', '{"accept":["眼","め"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-04', '目の奥にあり、光の刺激を受け取る細胞がある部分を何というか。', '網膜', '目', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-05', '目に入る光を屈折させ、網膜に像を結ばせるレンズのような部分を何というか。', '水晶体', '目', '{"accept":["レンズ"]}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rika-shigeki-hannou', 'q-20', '光を受けたとき、瞳孔を小さくして目の中に入る光の量を減らす反応を何というか。', '瞳孔反射', '反射', NULL);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物', '次の説明にあてはまる世界遺産は？
「現存する世界最古の木造建築群として知られる仏教寺院」', '法隆寺地域の仏教建造物', '文化遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物-pref', '「法隆寺地域の仏教建造物」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物-type', '「法隆寺地域の仏教建造物」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城', '次の説明にあてはまる世界遺産は？
「白鷺城とも呼ばれる、白い外観が美しい天守を持つ城」', '姫路城', '文化遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城-pref', '「姫路城」の所在都道府県を1つ答えなさい。', '兵庫県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城-type', '「姫路城」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財', '次の説明にあてはまる世界遺産は？
「清水寺や金閣寺など、古い都に残る社寺・城の総称」', '古都京都の文化財', '文化遺産', '{"year":1994}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財-pref', '「古都京都の文化財」の所在都道府県を1つ答えなさい。', '京都府', '文化遺産', '{"accept":["滋賀県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財-type', '「古都京都の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落', '次の説明にあてはまる世界遺産は？
「急な茅葺き屋根が特徴的な、豪雪地帯の伝統的な家屋群」', '白川郷・五箇山の合掌造り集落', '文化遺産', '{"year":1995}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落-pref', '「白川郷・五箇山の合掌造り集落」の所在都道府県を1つ答えなさい。', '岐阜県', '文化遺産', '{"accept":["富山県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落-type', '「白川郷・五箇山の合掌造り集落」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム', '次の説明にあてはまる世界遺産は？
「原子爆弾の惨禍を伝える、骨組みだけが残された建物」', '原爆ドーム', '文化遺産', '{"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム-pref', '「原爆ドーム」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム-type', '「原爆ドーム」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社', '次の説明にあてはまる世界遺産は？
「海上に立つ朱色の大鳥居で知られる神社」', '厳島神社', '文化遺産', '{"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社-pref', '「厳島神社」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社-type', '「厳島神社」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財', '次の説明にあてはまる世界遺産は？
「東大寺や興福寺など、かつての都に残る寺社群」', '古都奈良の文化財', '文化遺産', '{"year":1998}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財-pref', '「古都奈良の文化財」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財-type', '「古都奈良の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺', '次の説明にあてはまる世界遺産は？
「「見ざる言わざる聞かざる」の彫刻で知られる東照宮を含む社寺群」', '日光の社寺', '文化遺産', '{"year":1999}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺-pref', '「日光の社寺」の所在都道府県を1つ答えなさい。', '栃木県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺-type', '「日光の社寺」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群', '次の説明にあてはまる世界遺産は？
「首里城跡を中心とする、かつての王国の城・聖地群」', '琉球王国のグスク及び関連遺産群', '文化遺産', '{"year":2000}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群-pref', '「琉球王国のグスク及び関連遺産群」の所在都道府県を1つ答えなさい。', '沖縄県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群-type', '「琉球王国のグスク及び関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道', '次の説明にあてはまる世界遺産は？
「熊野古道など、山岳信仰の霊場と参詣道からなる遺産」', '紀伊山地の霊場と参詣道', '文化遺産', '{"year":2004}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道-pref', '「紀伊山地の霊場と参詣道」の所在都道府県を1つ答えなさい。', '三重県', '文化遺産', '{"accept":["奈良県","和歌山県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道-type', '「紀伊山地の霊場と参詣道」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観', '次の説明にあてはまる世界遺産は？
「かつて世界有数の産出量を誇った、銀の採掘・精錬の遺跡」', '石見銀山遺跡とその文化的景観', '文化遺産', '{"year":2007}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観-pref', '「石見銀山遺跡とその文化的景観」の所在都道府県を1つ答えなさい。', '島根県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観-type', '「石見銀山遺跡とその文化的景観」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉', '次の説明にあてはまる世界遺産は？
「中尊寺金色堂など、浄土思想を表す寺院・庭園群」', '平泉', '文化遺産', '{"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉-pref', '「平泉」の所在都道府県を1つ答えなさい。', '岩手県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉-type', '「平泉」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山', '次の説明にあてはまる世界遺産は？
「信仰の対象であり、多くの芸術作品の題材となった日本一の山」', '富士山', '文化遺産', '{"year":2013}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山-pref', '「富士山」の所在都道府県を1つ答えなさい。', '山梨県', '文化遺産', '{"accept":["静岡県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山-type', '「富士山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群', '次の説明にあてはまる世界遺産は？
「明治時代に建てられた、日本の近代製糸業を支えた工場」', '富岡製糸場と絹産業遺産群', '文化遺産', '{"year":2014}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群-pref', '「富岡製糸場と絹産業遺産群」の所在都道府県を1つ答えなさい。', '群馬県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群-type', '「富岡製糸場と絹産業遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産', '次の説明にあてはまる世界遺産は？
「製鉄・製鋼、造船、石炭産業に関する、幕末から明治期の産業施設群」', '明治日本の産業革命遺産', '文化遺産', '{"year":2015}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産-pref', '「明治日本の産業革命遺産」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', '{"accept":["佐賀県","長崎県","熊本県","鹿児島県","山口県","岩手県","静岡県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産-type', '「明治日本の産業革命遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品', '次の説明にあてはまる世界遺産は？
「フランス人建築家が設計した、上野にある美術館を含む国際的な建築群」', 'ル・コルビュジエの建築作品', '文化遺産', '{"year":2016,"accept":["国立西洋美術館"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品-pref', '「ル・コルビュジエの建築作品」の所在都道府県を1つ答えなさい。', '東京都', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品-type', '「ル・コルビュジエの建築作品」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群', '次の説明にあてはまる世界遺産は？
「女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産」', '「神宿る島」宗像・沖ノ島と関連遺産群', '文化遺産', '{"year":2017,"accept":["宗像・沖ノ島","神宿る島 宗像・沖ノ島と関連遺産群"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群-pref', '「「神宿る島」宗像・沖ノ島と関連遺産群」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群-type', '「「神宿る島」宗像・沖ノ島と関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産', '次の説明にあてはまる世界遺産は？
「禁教期にひそかに信仰を続けた人々に関わる教会・集落群」', '長崎と天草地方の潜伏キリシタン関連遺産', '文化遺産', '{"year":2018}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産-pref', '「長崎と天草地方の潜伏キリシタン関連遺産」の所在都道府県を1つ答えなさい。', '長崎県', '文化遺産', '{"accept":["熊本県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産-type', '「長崎と天草地方の潜伏キリシタン関連遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群', '次の説明にあてはまる世界遺産は？
「仁徳天皇陵古墳を含む、日本最大級の前方後円墳が集まる古墳群」', '百舌鳥・古市古墳群', '文化遺産', '{"year":2019}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群-pref', '「百舌鳥・古市古墳群」の所在都道府県を1つ答えなさい。', '大阪府', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群-type', '「百舌鳥・古市古墳群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群', '次の説明にあてはまる世界遺産は？
「三内丸山遺跡など、狩猟採集による定住生活を示す縄文時代の遺跡群」', '北海道・北東北の縄文遺跡群', '文化遺産', '{"year":2021}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群-pref', '「北海道・北東北の縄文遺跡群」の所在都道府県を1つ答えなさい。', '北海道', '文化遺産', '{"accept":["青森県","岩手県","秋田県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群-type', '「北海道・北東北の縄文遺跡群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山', '次の説明にあてはまる世界遺産は？
「江戸時代に日本最大の産出量を誇った、手作業による採掘技術が評価された金山」', '佐渡島の金山', '文化遺産', '{"year":2024}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山-pref', '「佐渡島の金山」の所在都道府県を1つ答えなさい。', '新潟県', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山-type', '「佐渡島の金山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島', '次の説明にあてはまる世界遺産は？
「樹齢数千年ともいわれる屋久杉で知られる、亜熱帯から亜寒帯までの植生が分布する島」', '屋久島', '自然遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島-pref', '「屋久島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島-type', '「屋久島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地', '次の説明にあてはまる世界遺産は？
「世界最大級のブナの原生林が広がる山地」', '白神山地', '自然遺産', '{"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地-pref', '「白神山地」の所在都道府県を1つ答えなさい。', '青森県', '自然遺産', '{"accept":["秋田県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地-type', '「白神山地」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床', '次の説明にあてはまる世界遺産は？
「流氷が育む豊かな生態系と、ヒグマなど野生動物の宝庫として知られる半島」', '知床', '自然遺産', '{"year":2005}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床-pref', '「知床」の所在都道府県を1つ答えなさい。', '北海道', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床-type', '「知床」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島', '次の説明にあてはまる世界遺産は？
「独自の進化を遂げた生物が多く、「東洋のガラパゴス」とも呼ばれる諸島」', '小笠原諸島', '自然遺産', '{"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島-pref', '「小笠原諸島」の所在都道府県を1つ答えなさい。', '東京都', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島-type', '「小笠原諸島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島', '次の説明にあてはまる世界遺産は？
「アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々」', '奄美大島、徳之島、沖縄島北部及び西表島', '自然遺産', '{"year":2021,"accept":["奄美・沖縄","奄美大島と沖縄島","奄美大島"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島-pref', '「奄美大島、徳之島、沖縄島北部及び西表島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', '{"accept":["沖縄県"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島-type', '「奄美大島、徳之島、沖縄島北部及び西表島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '1', '次の地図で色がついている都道府県はどこか。', '北海道', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '2', '次の地図で色がついている都道府県はどこか。', '青森県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '3', '次の地図で色がついている都道府県はどこか。', '岩手県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '4', '次の地図で色がついている都道府県はどこか。', '宮城県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '5', '次の地図で色がついている都道府県はどこか。', '秋田県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '6', '次の地図で色がついている都道府県はどこか。', '山形県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '7', '次の地図で色がついている都道府県はどこか。', '福島県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '8', '次の地図で色がついている都道府県はどこか。', '茨城県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '9', '次の地図で色がついている都道府県はどこか。', '栃木県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '10', '次の地図で色がついている都道府県はどこか。', '群馬県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '11', '次の地図で色がついている都道府県はどこか。', '埼玉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '12', '次の地図で色がついている都道府県はどこか。', '千葉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '13', '次の地図で色がついている都道府県はどこか。', '東京都', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '14', '次の地図で色がついている都道府県はどこか。', '神奈川県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '15', '次の地図で色がついている都道府県はどこか。', '新潟県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '16', '次の地図で色がついている都道府県はどこか。', '富山県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '17', '次の地図で色がついている都道府県はどこか。', '石川県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '18', '次の地図で色がついている都道府県はどこか。', '福井県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '19', '次の地図で色がついている都道府県はどこか。', '山梨県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '20', '次の地図で色がついている都道府県はどこか。', '長野県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '21', '次の地図で色がついている都道府県はどこか。', '岐阜県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '22', '次の地図で色がついている都道府県はどこか。', '静岡県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '23', '次の地図で色がついている都道府県はどこか。', '愛知県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '24', '次の地図で色がついている都道府県はどこか。', '三重県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '25', '次の地図で色がついている都道府県はどこか。', '滋賀県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '26', '次の地図で色がついている都道府県はどこか。', '京都府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '27', '次の地図で色がついている都道府県はどこか。', '大阪府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '28', '次の地図で色がついている都道府県はどこか。', '兵庫県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '29', '次の地図で色がついている都道府県はどこか。', '奈良県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '30', '次の地図で色がついている都道府県はどこか。', '和歌山県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '31', '次の地図で色がついている都道府県はどこか。', '鳥取県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '32', '次の地図で色がついている都道府県はどこか。', '島根県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '33', '次の地図で色がついている都道府県はどこか。', '岡山県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '34', '次の地図で色がついている都道府県はどこか。', '広島県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '35', '次の地図で色がついている都道府県はどこか。', '山口県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '36', '次の地図で色がついている都道府県はどこか。', '徳島県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '37', '次の地図で色がついている都道府県はどこか。', '香川県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '38', '次の地図で色がついている都道府県はどこか。', '愛媛県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '39', '次の地図で色がついている都道府県はどこか。', '高知県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '40', '次の地図で色がついている都道府県はどこか。', '福岡県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '41', '次の地図で色がついている都道府県はどこか。', '佐賀県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '42', '次の地図で色がついている都道府県はどこか。', '長崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '43', '次の地図で色がついている都道府県はどこか。', '熊本県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '44', '次の地図で色がついている都道府県はどこか。', '大分県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '45', '次の地図で色がついている都道府県はどこか。', '宮崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '46', '次の地図で色がついている都道府県はどこか。', '鹿児島県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '47', '次の地図で色がついている都道府県はどこか。', '沖縄県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '1', '北海道', '北海道', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '2', '青森県', '青森県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '3', '岩手県', '岩手県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '4', '宮城県', '宮城県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '5', '秋田県', '秋田県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '6', '山形県', '山形県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '7', '福島県', '福島県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '8', '茨城県', '茨城県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '9', '栃木県', '栃木県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '10', '群馬県', '群馬県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '11', '埼玉県', '埼玉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '12', '千葉県', '千葉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '13', '東京都', '東京都', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '14', '神奈川県', '神奈川県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '15', '新潟県', '新潟県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '16', '富山県', '富山県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '17', '石川県', '石川県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '18', '福井県', '福井県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '19', '山梨県', '山梨県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '20', '長野県', '長野県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '21', '岐阜県', '岐阜県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '22', '静岡県', '静岡県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '23', '愛知県', '愛知県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '24', '三重県', '三重県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '25', '滋賀県', '滋賀県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '26', '京都府', '京都府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '27', '大阪府', '大阪府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '28', '兵庫県', '兵庫県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '29', '奈良県', '奈良県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '30', '和歌山県', '和歌山県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '31', '鳥取県', '鳥取県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '32', '島根県', '島根県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '33', '岡山県', '岡山県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '34', '広島県', '広島県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '35', '山口県', '山口県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '36', '徳島県', '徳島県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '37', '香川県', '香川県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '38', '愛媛県', '愛媛県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '39', '高知県', '高知県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '40', '福岡県', '福岡県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '41', '佐賀県', '佐賀県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '42', '長崎県', '長崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '43', '熊本県', '熊本県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '44', '大分県', '大分県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '45', '宮崎県', '宮崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '46', '鹿児島県', '鹿児島県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken', '47', '沖縄県', '沖縄県', 'kyushu-okinawa', NULL);
