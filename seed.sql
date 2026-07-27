-- data/ 配下のCSVから自動生成。直接編集せず scripts/generate-seed.js を使うこと。
-- quizzes 8件 / items 761件 (chikei=25, chizu-kigou=22, kencho=47, nihon-chiri=107, rekishi=388, sekai-isan=78, todofuken=47, todofuken-chizu=47)

INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('nihon-chiri', '日本地理', 'syakai', '地理', 'syakai/nihon-chiri/', 10, 10, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('todofuken-chizu', '都道府県(地図)', 'syakai', '地理', 'syakai/todofuken-chizu/', 10, 20, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chikei', '日本の地形', 'syakai', '地理', 'syakai/chikei/', 10, 30, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('chizu-kigou', '地図記号', 'syakai', '地理', 'syakai/chizu-kigou/', 10, 40, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('sekai-isan', '日本の世界遺産', 'syakai', '地理', 'syakai/sekai-isan/', 10, 50, 0);
INSERT INTO quizzes (id, name, genre, section, url, max_score, sort_order, is_archived) VALUES ('rekishi', '歴史', 'syakai', '歴史', 'syakai/rekishi/', 10, 100, 0);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jinja', '次の地図記号は何を表しているか。', '神社', '建物・施設', '{"note":"鳥居をかたどっている"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'jiin', '次の地図記号は何を表しているか。', '寺院', '建物・施設', '{"note":"仏教に由来する印をかたどっている","accept":["寺","お寺"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'yubinkyoku', '次の地図記号は何を表しているか。', '郵便局', '建物・施設', '{"note":"郵便のマークを丸で囲んでいる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shochugakko', '次の地図記号は何を表しているか。', '小・中学校', '建物・施設', '{"note":"「文」の字をかたどっている","accept":["小中学校","小学校・中学校","小学校","中学校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kotogakko', '次の地図記号は何を表しているか。', '高等学校', '建物・施設', '{"note":"「文」の字を丸で囲んでいる","accept":["高校"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shiyakusho', '次の地図記号は何を表しているか。', '市役所', '建物・施設', '{"note":"二重丸で表す"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'choson-yakuba', '次の地図記号は何を表しているか。', '町村役場', '建物・施設', '{"note":"丸ひとつで表す"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koban', '次の地図記号は何を表しているか。', '交番', '建物・施設', '{"note":"警棒を2本交差させた形"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'keisatsusho', '次の地図記号は何を表しているか。', '警察署', '建物・施設', '{"note":"交差した警棒を丸で囲んでいる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shobosho', '次の地図記号は何を表しているか。', '消防署', '建物・施設', '{"note":"昔の消火道具「さすまた」の形"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kojo', '次の地図記号は何を表しているか。', '工場', '建物・施設', '{"note":"機械の歯車をかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'toshokan', '次の地図記号は何を表しているか。', '図書館', '建物・施設', '{"note":"開いた本の形"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'hakubutsukan', '次の地図記号は何を表しているか。', '博物館', '建物・施設', '{"note":"柱のある建物をかたどっている"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'rojin-home', '次の地図記号は何を表しているか。', '老人ホーム', '建物・施設', '{"note":"建物の中に杖が描かれている"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'todai', '次の地図記号は何を表しているか。', '灯台', '建物・施設', '{"note":"光を放つ様子をかたどっている"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'minato', '次の地図記号は何を表しているか。', '港', '建物・施設', '{"note":"船の錨をかたどっている"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'onsen', '次の地図記号は何を表しているか。', '温泉', '自然・その他', '{"note":"湯気が立ちのぼる様子"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'sankakuten', '次の地図記号は何を表しているか。', '三角点', '自然・その他', '{"note":"測量の基準となる点。三角形で表す"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'chabatake', '次の地図記号は何を表しているか。', '茶畑', '土地利用', '{"note":"茶の実を3つ並べた形"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'kuwabatake', '次の地図記号は何を表しているか。', '桑畑', '土地利用', '{"note":"桑の木の枝ぶりをかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'koyojurin', '次の地図記号は何を表しているか。', '広葉樹林', '土地利用', '{"note":"丸い樹冠の木で表す"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chizu-kigou', 'shinyojurin', '次の地図記号は何を表しているか。', '針葉樹林', '土地利用', '{"note":"とがった樹冠の木で表す"}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'himiko', '次の説明にあてはまる語句を答えなさい。
「3世紀ごろ、女王卑弥呼が治めていたとされる国。魏に使いを送り「親魏倭王」の称号を得た」', '邪馬台国', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'himiko-person', '次の説明にあてはまる人物はだれか。
「魏に使いを送り、「親魏倭王」の称号と金印を授けられた」', '卑弥呼', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jushichijo', '次の説明にあてはまる語句を答えなさい。
「604年、役人の心構えを示すために定められたきまり」', '十七条の憲法', '古代', '{"accept":["十七条憲法"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jushichijo-year', '「十七条の憲法」は西暦何年のことか。数字で答えなさい。', '604', '古代', '{"accept":["604年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jushichijo-person', '次の説明にあてはまる人物はだれか。
「十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した」', '聖徳太子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaniijunikai', '次の説明にあてはまる語句を答えなさい。
「603年、家柄によらず能力のある人を役人に取り立てるために定められた制度」', '冠位十二階', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaniijunikai-year', '「冠位十二階」は西暦何年のことか。数字で答えなさい。', '603', '古代', '{"accept":["603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenzuishi', '次の説明にあてはまる語句を答えなさい。
「607年、小野妹子らが中国の進んだ制度や文化を学ぶために派遣された使節」', '遣隋使', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenzuishi-year', '「遣隋使」は西暦何年のことか。数字で答えなさい。', '607', '古代', '{"accept":["607年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenzuishi-person', '次の説明にあてはまる人物はだれか。
「607年、遣隋使として隋にわたった」', '小野妹子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taika', '次の説明にあてはまる語句を答えなさい。
「645年、蘇我氏を倒して始まった、天皇中心の国づくりを目指す政治改革」', '大化の改新', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taika-year', '「大化の改新」は西暦何年のことか。数字で答えなさい。', '645', '古代', '{"accept":["645年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taika-person', '次の説明にあてはまる人物はだれか。
「中臣鎌足とともに蘇我氏を倒し、大化の改新を進めた」', '中大兄皇子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taihoritsuryo', '次の説明にあてはまる語句を答えなさい。
「701年に完成した、律と令からなる国の基本法典」', '大宝律令', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taihoritsuryo-year', '「大宝律令」は西暦何年のことか。数字で答えなさい。', '701', '古代', '{"accept":["701年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heijokyo', '次の説明にあてはまる語句を答えなさい。
「710年に奈良につくられた、唐の長安にならった都」', '平城京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heijokyo-year', '「平城京」は西暦何年のことか。数字で答えなさい。', '710', '古代', '{"accept":["710年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'konden', '次の説明にあてはまる語句を答えなさい。
「743年、新しく開墾した土地の永久私有を認めた法。公地公民の原則がくずれるきっかけになった」', '墾田永年私財法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'konden-year', '「墾田永年私財法」は西暦何年のことか。数字で答えなさい。', '743', '古代', '{"accept":["743年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'todaiji', '次の説明にあてはまる語句を答えなさい。
「752年に開眼供養が行われた、仏教の力で国を守ろうとしてつくられた大仏」', '東大寺の大仏', '古代', '{"accept":["大仏","奈良の大仏","盧舎那仏"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'todaiji-year', '「東大寺の大仏」は西暦何年のことか。数字で答えなさい。', '752', '古代', '{"accept":["752年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'todaiji-person', '次の説明にあてはまる人物はだれか。
「仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた」', '聖武天皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heiankyo', '次の説明にあてはまる語句を答えなさい。
「794年に京都につくられ、以後約400年にわたって都となった」', '平安京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heiankyo-year', '「平安京」は西暦何年のことか。数字で答えなさい。', '794', '古代', '{"accept":["794年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kentoshi-teishi', '次の説明にあてはまる語句を答えなさい。
「894年、唐のおとろえと航海の危険を理由に取りやめられた」', '遣唐使の停止', '古代', '{"accept":["遣唐使の廃止","遣唐使廃止","遣唐使停止","遣唐使の中止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kentoshi-teishi-year', '「遣唐使の停止」は西暦何年のことか。数字で答えなさい。', '894', '古代', '{"accept":["894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kentoshi-teishi-person', '次の説明にあてはまる人物はだれか。
「894年、遣唐使の停止を提案した」', '菅原道真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekkan', '次の説明にあてはまる語句を答えなさい。
「藤原氏が娘を天皇のきさきにし、摂政・関白として実権をにぎった政治」', '摂関政治', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekkan-person', '次の説明にあてはまる人物はだれか。
「4人の娘を天皇のきさきにし、摂関政治の全盛期を築いた」', '藤原道長', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'byodoin', '次の説明にあてはまる語句を答えなさい。
「1053年、藤原頼通が宇治に建てた阿弥陀堂。浄土信仰を代表する建物」', '平等院鳳凰堂', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'byodoin-year', '「平等院鳳凰堂」は西暦何年のことか。数字で答えなさい。', '1053', '古代', '{"accept":["1053年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'byodoin-person', '次の説明にあてはまる人物はだれか。
「宇治に平等院鳳凰堂を建てた」', '藤原頼通', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dajodaijin-kiyomori', '次の説明にあてはまる語句を答えなさい。
「1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dajodaijin-kiyomori-person', '次の説明にあてはまる人物はだれか。
「武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った」', '平清盛', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dannoura', '次の説明にあてはまる語句を答えなさい。
「1185年、現在の山口県で平氏がほろんだ戦い」', '壇ノ浦の戦い', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dannoura-year', '「壇ノ浦の戦い」は西暦何年のことか。数字で答えなさい。', '1185', '中世', '{"accept":["1185年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seiitaishogun', '次の説明にあてはまる語句を答えなさい。
「1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seiitaishogun-person', '次の説明にあてはまる人物はだれか。
「守護・地頭を置き、鎌倉に幕府を開いた」', '源頼朝', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jokyu', '次の説明にあてはまる語句を答えなさい。
「1221年、後鳥羽上皇が幕府をたおそうとして起こしたが敗れた戦い」', '承久の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jokyu-year', '「承久の乱」は西暦何年のことか。数字で答えなさい。', '1221', '中世', '{"accept":["1221年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goseibai', '次の説明にあてはまる語句を答えなさい。
「1232年に定められた、武士の慣習をもとにした初めての武家法」', '御成敗式目', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goseibai-year', '「御成敗式目」は西暦何年のことか。数字で答えなさい。', '1232', '中世', '{"accept":["1232年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goseibai-person', '次の説明にあてはまる人物はだれか。
「執権として御成敗式目を定めた」', '北条泰時', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunei', '次の説明にあてはまる語句を答えなさい。
「1274年、元と高麗の軍が北九州にせめてきた最初の元寇」', '文永の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunei-year', '「文永の役」は西暦何年のことか。数字で答えなさい。', '1274', '中世', '{"accept":["1274年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'koan', '次の説明にあてはまる語句を答えなさい。
「1281年、元が再び北九州にせめてきた二度目の元寇」', '弘安の役', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'koan-year', '「弘安の役」は西暦何年のことか。数字で答えなさい。', '1281', '中世', '{"accept":["1281年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'koan-person', '次の説明にあてはまる人物はだれか。
「執権として二度の元寇を退けた」', '北条時宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenmu', '次の説明にあてはまる語句を答えなさい。
「1334年から始まった、鎌倉幕府をたおした天皇による政治。武士の不満で2年余りで失敗した」', '建武の新政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenmu-year', '「建武の新政」は西暦何年のことか。数字で答えなさい。', '1334', '中世', '{"accept":["1334年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenmu-person', '次の説明にあてはまる人物はだれか。
「鎌倉幕府をたおし、建武の新政を行った」', '後醍醐天皇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'muromachi', '次の説明にあてはまる語句を答えなさい。
「1338年、足利尊氏が征夷大将軍となって開いた幕府」', '室町幕府', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'muromachi-year', '「室町幕府」は西暦何年のことか。数字で答えなさい。', '1338', '中世', '{"accept":["1338年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'muromachi-person', '次の説明にあてはまる人物はだれか。
「征夷大将軍となり、京都に室町幕府を開いた」', '足利尊氏', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kango', '次の説明にあてはまる語句を答えなさい。
「1404年に始まった明との貿易。倭寇と区別するために合い札を用いた」', '勘合貿易', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kango-year', '「勘合貿易」は西暦何年のことか。数字で答えなさい。', '1404', '中世', '{"accept":["1404年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kango-person', '次の説明にあてはまる人物はだれか。
「南北朝を統一し、明と勘合貿易を始めた。金閣を建てた」', '足利義満', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kinkaku', '次の説明にあてはまる語句を答えなさい。
「足利義満が京都の北山に建てた、公家と武家の文化が混じった建物」', '金閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ginkaku', '次の説明にあてはまる語句を答えなさい。
「足利義政が京都の東山に建てた建物。書院造が用いられている」', '銀閣', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ginkaku-person', '次の説明にあてはまる人物はだれか。
「東山に銀閣を建てた。その後継ぎ争いが応仁の乱の原因となった」', '足利義政', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'onin', '次の説明にあてはまる語句を答えなさい。
「1467年から11年続いた戦乱。京都が荒れ、戦国時代が始まるきっかけとなった」', '応仁の乱', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'onin-year', '「応仁の乱」は西暦何年のことか。数字で答えなさい。', '1467', '中世', '{"accept":["1467年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teppo', '次の説明にあてはまる語句を答えなさい。
「1543年、種子島に流れ着いたポルトガル人によって伝えられた」', '鉄砲の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teppo-year', '「鉄砲の伝来」は西暦何年のことか。数字で答えなさい。', '1543', '中世', '{"accept":["1543年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kirisutokyo', '次の説明にあてはまる語句を答えなさい。
「1549年、鹿児島に上陸した宣教師によって伝えられた」', 'キリスト教の伝来', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kirisutokyo-year', '「キリスト教の伝来」は西暦何年のことか。数字で答えなさい。', '1549', '中世', '{"accept":["1549年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kirisutokyo-person', '次の説明にあてはまる人物はだれか。
「1549年に鹿児島に来て、日本にキリスト教を伝えた」', 'フランシスコ・ザビエル', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okehazama', '次の説明にあてはまる語句を答えなさい。
「1560年、織田信長が今川義元を破った戦い」', '桶狭間の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okehazama-year', '「桶狭間の戦い」は西暦何年のことか。数字で答えなさい。', '1560', '近世', '{"accept":["1560年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nagashino', '次の説明にあてはまる語句を答えなさい。
「1575年、織田・徳川の連合軍が鉄砲を大量に使って武田軍を破った戦い」', '長篠の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nagashino-year', '「長篠の戦い」は西暦何年のことか。数字で答えなさい。', '1575', '近世', '{"accept":["1575年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nagashino-person', '次の説明にあてはまる人物はだれか。
「楽市・楽座や関所の廃止を行い、長篠の戦いで鉄砲を活用した」', '織田信長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'honnoji', '次の説明にあてはまる語句を答えなさい。
「1582年、明智光秀にそむかれて織田信長が自害した事件」', '本能寺の変', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'honnoji-year', '「本能寺の変」は西暦何年のことか。数字で答えなさい。', '1582', '近世', '{"accept":["1582年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenchi', '次の説明にあてはまる語句を答えなさい。
「全国の田畑の面積と収穫高を調べ、年貢を確実に取るために行われた土地の調査」', '太閤検地', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenchi-person', '次の説明にあてはまる人物はだれか。
「太閤検地と刀狩を行い、兵農分離を進めて全国を統一した」', '豊臣秀吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'katanagari', '次の説明にあてはまる語句を答えなさい。
「1588年、百姓から武器を取り上げ、一揆を防ぐために行われた政策」', '刀狩', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'katanagari-year', '「刀狩」は西暦何年のことか。数字で答えなさい。', '1588', '近世', '{"accept":["1588年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekigahara', '次の説明にあてはまる語句を答えなさい。
「1600年、徳川家康が石田三成らを破り、天下の実権をにぎった戦い」', '関ヶ原の戦い', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekigahara-year', '「関ヶ原の戦い」は西暦何年のことか。数字で答えなさい。', '1600', '近世', '{"accept":["1600年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'edobakufu', '次の説明にあてはまる語句を答えなさい。
「1603年、徳川家康が征夷大将軍となって開いた幕府」', '江戸幕府', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'edobakufu-year', '「江戸幕府」は西暦何年のことか。数字で答えなさい。', '1603', '近世', '{"accept":["1603年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'edobakufu-person', '次の説明にあてはまる人物はだれか。
「関ヶ原の戦いに勝ち、江戸に幕府を開いた」', '徳川家康', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bukeshohatto', '次の説明にあてはまる語句を答えなさい。
「1615年に定められた、大名を統制するためのきまり」', '武家諸法度', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bukeshohatto-year', '「武家諸法度」は西暦何年のことか。数字で答えなさい。', '1615', '近世', '{"accept":["1615年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sankinkotai', '次の説明にあてはまる語句を答えなさい。
「1635年に制度化された、大名が1年おきに江戸と領地を行き来するきまり」', '参勤交代', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sankinkotai-year', '「参勤交代」は西暦何年のことか。数字で答えなさい。', '1635', '近世', '{"accept":["1635年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sankinkotai-person', '次の説明にあてはまる人物はだれか。
「参勤交代を制度化し、鎖国を完成させた」', '徳川家光', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimabara', '次の説明にあてはまる語句を答えなさい。
「1637年、重い年貢とキリスト教の弾圧に苦しむ人々が天草四郎を中心に起こした一揆」', '島原・天草一揆', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimabara-year', '「島原・天草一揆」は西暦何年のことか。数字で答えなさい。', '1637', '近世', '{"accept":["1637年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sakoku', '次の説明にあてはまる語句を答えなさい。
「1641年に完成した、貿易相手と場所を幕府が厳しく制限した体制。長崎の出島でオランダと中国のみ交易した」', '鎖国', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sakoku-year', '「鎖国」は西暦何年のことか。数字で答えなさい。', '1641', '近世', '{"accept":["1641年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kyoho', '次の説明にあてはまる語句を答えなさい。
「1716年から始まった改革。目安箱の設置や公事方御定書の制定を行った」', '享保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kyoho-year', '「享保の改革」は西暦何年のことか。数字で答えなさい。', '1716', '近世', '{"accept":["1716年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kyoho-person', '次の説明にあてはまる人物はだれか。
「享保の改革を行い、目安箱を設置した」', '徳川吉宗', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kansei', '次の説明にあてはまる語句を答えなさい。
「1787年から行われた改革。ききんに備えて米をたくわえさせ、質素倹約を命じた」', '寛政の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kansei-year', '「寛政の改革」は西暦何年のことか。数字で答えなさい。', '1787', '近世', '{"accept":["1787年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kansei-person', '次の説明にあてはまる人物はだれか。
「寛政の改革を行った」', '松平定信', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpo', '次の説明にあてはまる語句を答えなさい。
「1841年から行われた改革。株仲間の解散などを命じたが、2年余りで失敗した」', '天保の改革', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpo-year', '「天保の改革」は西暦何年のことか。数字で答えなさい。', '1841', '近世', '{"accept":["1841年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpo-person', '次の説明にあてはまる人物はだれか。
「天保の改革を行い、株仲間を解散させた」', '水野忠邦', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'perry', '次の説明にあてはまる語句を答えなさい。
「1853年、4隻の軍艦を率いて浦賀に来航し、日本に開国を求めたアメリカの使節」', 'ペリーの来航', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'perry-year', '「ペリーの来航」は西暦何年のことか。数字で答えなさい。', '1853', '近代', '{"accept":["1853年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'perry-person', '次の説明にあてはまる人物はだれか。
「1853年に浦賀に来航し、日本に開国を求めた」', 'ペリー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'washin', '次の説明にあてはまる語句を答えなさい。
「1854年に結ばれ、下田と函館の2港を開いて日本が開国することになった条約」', '日米和親条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'washin-year', '「日米和親条約」は西暦何年のことか。数字で答えなさい。', '1854', '近代', '{"accept":["1854年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukotsusho', '次の説明にあてはまる語句を答えなさい。
「1858年に結ばれた、領事裁判権を認め関税自主権がない不平等条約」', '日米修好通商条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukotsusho-year', '「日米修好通商条約」は西暦何年のことか。数字で答えなさい。', '1858', '近代', '{"accept":["1858年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiseihokan', '次の説明にあてはまる語句を答えなさい。
「1867年、政権を朝廷に返した出来事。江戸幕府が終わった」', '大政奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiseihokan-year', '「大政奉還」は西暦何年のことか。数字で答えなさい。', '1867', '近代', '{"accept":["1867年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiseihokan-person', '次の説明にあてはまる人物はだれか。
「1867年に大政奉還を行い、政権を朝廷に返した」', '徳川慶喜', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gokajo', '次の説明にあてはまる語句を答えなさい。
「1868年、新政府が示した政治の基本方針」', '五箇条の御誓文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gokajo-year', '「五箇条の御誓文」は西暦何年のことか。数字で答えなさい。', '1868', '近代', '{"accept":["1868年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haihan', '次の説明にあてはまる語句を答えなさい。
「1871年、藩を廃止して県を置き、中央から府知事・県令を派遣した改革」', '廃藩置県', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haihan-year', '「廃藩置県」は西暦何年のことか。数字で答えなさい。', '1871', '近代', '{"accept":["1871年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chiso', '次の説明にあてはまる語句を答えなさい。
「1873年、土地の価格の3%を現金で納めさせるようにした改革。政府の収入を安定させた」', '地租改正', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chiso-year', '「地租改正」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpo', '次の説明にあてはまる語句を答えなさい。
「1889年に発布された、天皇が国を治める仕組みを定めた憲法。ドイツの憲法を参考にした」', '大日本帝国憲法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpo-year', '「大日本帝国憲法」は西暦何年のことか。数字で答えなさい。', '1889', '近代', '{"accept":["1889年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpo-person', '次の説明にあてはまる人物はだれか。
「初代内閣総理大臣となり、大日本帝国憲法の作成を進めた」', '伊藤博文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisshin', '次の説明にあてはまる語句を答えなさい。
「1894年に始まった清との戦争。勝利して下関条約で遼東半島や台湾を得た」', '日清戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisshin-year', '「日清戦争」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiro', '次の説明にあてはまる語句を答えなさい。
「1904年に始まったロシアとの戦争。ポーツマス条約で講和したが賠償金は得られなかった」', '日露戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiro-year', '「日露戦争」は西暦何年のことか。数字で答えなさい。', '1904', '近代', '{"accept":["1904年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kankoku', '次の説明にあてはまる語句を答えなさい。
「1910年、日本が韓国を植民地とした出来事」', '韓国併合', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kankoku-year', '「韓国併合」は西暦何年のことか。数字で答えなさい。', '1910', '近代', '{"accept":["1910年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'daiichiji', '次の説明にあてはまる語句を答えなさい。
「1914年に始まった世界的な戦争。日本は日英同盟を理由に参戦した」', '第一次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'daiichiji-year', '「第一次世界大戦」は西暦何年のことか。数字で答えなさい。', '1914', '近代', '{"accept":["1914年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshu', '次の説明にあてはまる語句を答えなさい。
「1931年、南満州鉄道の爆破をきっかけに始まった軍事行動。翌年、満州国がつくられた」', '満州事変', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshu-year', '「満州事変」は西暦何年のことか。数字で答えなさい。', '1931', '近代', '{"accept":["1931年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu', '次の説明にあてはまる語句を答えなさい。
「1937年、北京郊外での衝突をきっかけに始まった中国との戦争」', '日中戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-year', '「日中戦争」は西暦何年のことか。数字で答えなさい。', '1937', '近代', '{"accept":["1937年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiheiyo', '次の説明にあてはまる語句を答えなさい。
「1941年、ハワイの真珠湾への攻撃などによって始まった戦争」', '太平洋戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiheiyo-year', '「太平洋戦争」は西暦何年のことか。数字で答えなさい。', '1941', '近代', '{"accept":["1941年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'potsdam', '次の説明にあてはまる語句を答えなさい。
「1945年に受け入れて日本が降伏することになった、連合国からの宣言」', 'ポツダム宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'potsdam-year', '「ポツダム宣言」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonkoku-kenpo', '次の説明にあてはまる語句を答えなさい。
「1946年11月3日に公布され、翌年5月3日に施行された憲法。国民主権・基本的人権の尊重・平和主義を三原則とする」', '日本国憲法', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonkoku-kenpo-year', '「日本国憲法」は西暦何年のことか。数字で答えなさい。', '1946', '現代', '{"accept":["1946年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sanfrancisco', '次の説明にあてはまる語句を答えなさい。
「1951年に48か国と結ばれ、翌年日本が独立を回復した条約」', 'サンフランシスコ平和条約', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sanfrancisco-year', '「サンフランシスコ平和条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokuren', '次の説明にあてはまる語句を答えなさい。
「1956年、日ソ共同宣言によってソ連の反対がなくなり実現した」', '国際連合への加盟', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokuren-year', '「国際連合への加盟」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tokyo-olympic', '次の説明にあてはまる語句を答えなさい。
「1964年、アジアで初めて開かれた大会。東海道新幹線の開通など高度経済成長を象徴した」', '東京オリンピック', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tokyo-olympic-year', '「東京オリンピック」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okinawa', '次の説明にあてはまる語句を答えなさい。
「1972年、アメリカの統治下から日本に復帰した出来事」', '沖縄の返還', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okinawa-year', '「沖縄の返還」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kojiki', '次の説明にあてはまる語句を答えなさい。
「712年にまとめられた、日本最古の歴史書」', '古事記', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kojiki-year', '「古事記」は西暦何年のことか。数字で答えなさい。', '712', '古代', '{"accept":["712年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonshoki', '次の説明にあてはまる語句を答えなさい。
「720年にまとめられた、日本の正式な歴史書」', '日本書紀', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonshoki-year', '「日本書紀」は西暦何年のことか。数字で答えなさい。', '720', '古代', '{"accept":["720年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manyoshu', '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集」', '万葉集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpyo', '次の説明にあてはまる語句を答えなさい。
「奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化」', '天平文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shosoin', '次の説明にあてはまる語句を答えなさい。
「東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている」', '正倉院', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokufu', '次の説明にあてはまる語句を答えなさい。
「遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化」', '国風文化', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genji', '次の説明にあてはまる語句を答えなさい。
「光源氏を主人公とする、国風文化を代表する長編物語」', '源氏物語', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genji-person', '次の説明にあてはまる人物はだれか。
「かな文字を用いて長編物語『源氏物語』を書いた」', '紫式部', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'makura', '次の説明にあてはまる語句を答えなさい。
「「春はあけぼの」で始まる、宮中の生活をつづった随筆」', '枕草子', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'makura-person', '次の説明にあてはまる人物はだれか。
「宮中の生活を随筆『枕草子』につづった」', '清少納言', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokinshu', '次の説明にあてはまる語句を答えなさい。
「紀貫之らが天皇の命令でまとめた、最初の勅撰和歌集」', '古今和歌集', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokinshu-person', '次の説明にあてはまる人物はだれか。
「『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた」', '紀貫之', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodo', '次の説明にあてはまる語句を答えなさい。
「阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表」', '浄土信仰', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'saicho', '次の説明にあてはまる語句を答えなさい。
「最澄が唐から伝え、比叡山延暦寺を中心に広まった仏教の宗派」', '天台宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'saicho-person', '次の説明にあてはまる人物はだれか。
「唐にわたって天台宗を学び、比叡山に延暦寺を建てた」', '最澄', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kukai', '次の説明にあてはまる語句を答えなさい。
「空海が唐から伝え、高野山金剛峯寺を中心に広まった仏教の宗派」', '真言宗', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kukai-person', '次の説明にあてはまる人物はだれか。
「唐にわたって真言宗を学び、高野山に金剛峯寺を建てた」', '空海', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ganjin', '次の説明にあてはまる語句を答えなさい。
「何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺」', '唐招提寺', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ganjin-person', '次の説明にあてはまる人物はだれか。
「何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた」', '鑑真', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkokin', '次の説明にあてはまる語句を答えなさい。
「鎌倉時代に後鳥羽上皇の命令でまとめられた歌集」', '新古今和歌集', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heike', '次の説明にあてはまる語句を答えなさい。
「平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた」', '平家物語', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hojoki', '次の説明にあてはまる語句を答えなさい。
「「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆」', '方丈記', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tsurezure', '次の説明にあてはまる語句を答えなさい。
「「つれづれなるままに」で始まる、兼好法師の随筆」', '徒然草', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kongorikishi', '次の説明にあてはまる語句を答えなさい。
「運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻」', '金剛力士像', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshu', '次の説明にあてはまる語句を答えなさい。
「「南無阿弥陀仏」と念仏を唱えれば救われると説いた、法然が開いた宗派」', '浄土宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshu-person', '次の説明にあてはまる人物はだれか。
「念仏を唱えれば救われると説き、浄土宗を開いた」', '法然', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshinshu', '次の説明にあてはまる語句を答えなさい。
「自分の罪を自覚した悪人こそ救われると説いた、親鸞が開いた宗派」', '浄土真宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshinshu-person', '次の説明にあてはまる人物はだれか。
「法然の弟子で、浄土真宗を開いた」', '親鸞', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichirenshu', '次の説明にあてはまる語句を答えなさい。
「「南無妙法蓮華経」と題目を唱えることを説いた宗派」', '日蓮宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichirenshu-person', '次の説明にあてはまる人物はだれか。
「題目を唱えることを説き、日蓮宗を開いた」', '日蓮', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zen', '次の説明にあてはまる語句を答えなさい。
「座禅によってさとりを開こうとする仏教。武士の気風に合い広まった」', '禅宗', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'noh', '次の説明にあてはまる語句を答えなさい。
「足利義満の保護を受けた観阿弥・世阿弥の父子が大成した舞台芸能」', '能', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'noh-person', '次の説明にあてはまる人物はだれか。
「父の観阿弥とともに能を大成した」', '世阿弥', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'suibokuga', '次の説明にあてはまる語句を答えなさい。
「墨の濃淡だけで自然をえがく絵画。室町時代に雪舟が日本独自の様式を完成させた」', '水墨画', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'suibokuga-person', '次の説明にあてはまる人物はだれか。
「明にわたって学び、日本の水墨画を大成した」', '雪舟', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shoin', '次の説明にあてはまる語句を答えなさい。
「床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった」', '書院造', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'momoyama', '次の説明にあてはまる語句を答えなさい。
「安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化」', '桃山文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wabicha', '次の説明にあてはまる語句を答えなさい。
「簡素さの中に美を見いだす茶の湯。千利休が大成した」', 'わび茶', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wabicha-person', '次の説明にあてはまる人物はだれか。
「質素なわび茶を大成し、茶の湯を芸術の域に高めた」', '千利休', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genroku', '次の説明にあてはまる語句を答えなさい。
「17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化」', '元禄文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyozoshi', '次の説明にあてはまる語句を答えなさい。
「町人の暮らしや欲望をありのままにえがいた小説。井原西鶴が代表」', '浮世草子', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyozoshi-person', '次の説明にあてはまる人物はだれか。
「『日本永代蔵』などの浮世草子で町人の生活をえがいた」', '井原西鶴', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haikai', '次の説明にあてはまる語句を答えなさい。
「五・七・五の形式の文芸。松尾芭蕉が芸術性を高めた」', '俳諧', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haikai-person', '次の説明にあてはまる人物はだれか。
「各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた」', '松尾芭蕉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'joruri', '次の説明にあてはまる語句を答えなさい。
「人形をあやつって物語を演じる芸能。近松門左衛門が脚本を書いた」', '人形浄瑠璃', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'joruri-person', '次の説明にあてはまる人物はだれか。
「『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた」', '近松門左衛門', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kasei', '次の説明にあてはまる語句を答えなさい。
「19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化」', '化政文化', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyoe', '次の説明にあてはまる語句を答えなさい。
「町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった」', '浮世絵', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hokusai', '次の説明にあてはまる語句を答えなさい。
「葛飾北斎がえがいた、さまざまな場所からの富士山の風景画集」', '富嶽三十六景', '近世', '{"accept":["富岳三十六景"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hokusai-person', '次の説明にあてはまる人物はだれか。
「『富嶽三十六景』をえがき、風景版画で人気を集めた」', '葛飾北斎', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hiroshige', '次の説明にあてはまる語句を答えなさい。
「歌川広重がえがいた、江戸から京都までの宿場の風景画集」', '東海道五十三次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hiroshige-person', '次の説明にあてはまる人物はだれか。
「『東海道五十三次』をえがいた」', '歌川広重', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'rangaku', '次の説明にあてはまる語句を答えなさい。
「オランダ語を通じてヨーロッパの学問や技術を学ぶ学問」', '蘭学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai', '次の説明にあてはまる語句を答えなさい。
「1774年、オランダ語の人体解剖書を翻訳して出版された医学書」', '解体新書', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai-year', '「解体新書」は西暦何年のことか。数字で答えなさい。', '1774', '近世', '{"accept":["1774年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai-person', '次の説明にあてはまる人物はだれか。
「前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した」', '杉田玄白', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokugaku', '次の説明にあてはまる語句を答えなさい。
「仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問」', '国学', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokugaku-person', '次の説明にあてはまる人物はだれか。
「『古事記伝』を著し、国学を大成した」', '本居宣長', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou', '次の説明にあてはまる語句を答えなさい。
「全国を測量してつくられた、日本で初めての正確な日本地図。1821年に完成した」', '大日本沿海輿地全図', '近世', '{"accept":["伊能図"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou-year', '「大日本沿海輿地全図」は西暦何年のことか。数字で答えなさい。', '1821', '近世', '{"accept":["1821年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou-person', '次の説明にあてはまる人物はだれか。
「全国を歩いて測量し、正確な日本地図のもとをつくった」', '伊能忠敬', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'terakoya', '次の説明にあてはまる語句を答えなさい。
「町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場」', '寺子屋', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunmei', '次の説明にあてはまる語句を答えなさい。
「明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと」', '文明開化', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakusei', '次の説明にあてはまる語句を答えなさい。
「1872年に公布された、6歳以上の男女すべてを小学校に通わせることを目指した制度」', '学制', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakusei-year', '「学制」は西暦何年のことか。数字で答えなさい。', '1872', '近代', '{"accept":["1872年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakumon', '次の説明にあてはまる語句を答えなさい。
「「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物」', '学問のすゝめ', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakumon-person', '次の説明にあてはまる人物はだれか。
「『学問のすゝめ』を著し、欧米の思想を広めた」', '福沢諭吉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jiyuminken', '次の説明にあてはまる語句を答えなさい。
「国民が政治に参加する権利を求め、国会の開設を要求した運動」', '自由民権運動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho', '次の説明にあてはまる語句を答えなさい。
「1874年に政府に提出され、自由民権運動の出発点となった意見書」', '民撰議院設立の建白書', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho-year', '「民撰議院設立の建白書」は西暦何年のことか。数字で答えなさい。', '1874', '近代', '{"accept":["1874年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho-person', '次の説明にあてはまる人物はだれか。
「民撰議院設立の建白書を提出し、のちに自由党をつくった」', '板垣退助', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto', '次の説明にあてはまる語句を答えなさい。
「1882年に大隈重信がつくった、イギリス流の議会政治を目指した政党」', '立憲改進党', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto-year', '「立憲改進党」は西暦何年のことか。数字で答えなさい。', '1882', '近代', '{"accept":["1882年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto-person', '次の説明にあてはまる人物はだれか。
「立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた」', '大隈重信', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikokugikai', '次の説明にあてはまる語句を答えなさい。
「1890年に初めて開かれた議会。衆議院と貴族院の二院制だった」', '帝国議会', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikokugikai-year', '「帝国議会」は西暦何年のことか。数字で答えなさい。', '1890', '近代', '{"accept":["1890年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken', '次の説明にあてはまる語句を答えなさい。
「1894年、外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した」', '領事裁判権の撤廃', '近代', '{"accept":["治外法権の撤廃","治外法権撤廃","領事裁判権撤廃","領事裁判権の廃止","治外法権の廃止"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken-year', '「領事裁判権の撤廃」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken-person', '次の説明にあてはまる人物はだれか。
「1894年に領事裁判権の撤廃に成功した」', '陸奥宗光', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei', '次の説明にあてはまる語句を答えなさい。
「1911年、外務大臣が実現し、条約改正が完全に達成された」', '関税自主権の回復', '近代', '{"accept":["関税自主権回復","関税自主権の完全回復"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei-year', '「関税自主権の回復」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei-person', '次の説明にあてはまる人物はだれか。
「1911年に関税自主権の回復を実現し、条約改正を完成させた」', '小村寿太郎', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yahata', '次の説明にあてはまる語句を答えなさい。
「日清戦争の賠償金をもとに建設され、1901年に操業を始めた官営の製鉄所」', '八幡製鉄所', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yahata-year', '「八幡製鉄所」は西暦何年のことか。数字で答えなさい。', '1901', '近代', '{"accept":["1901年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kodo', '次の説明にあてはまる語句を答えなさい。
「1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期」', '高度経済成長', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'handen', '次の説明にあてはまる語句を答えなさい。
「6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度」', '班田収授法', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kubunden', '次の説明にあてはまる語句を答えなさい。
「班田収授法によって人々に分け与えられた土地」', '口分田', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'so', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、収穫した稲の約3%を納めるもの」', '租', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'cho', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、絹や糸、地方の特産物を都に納めるもの」', '調', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yo', '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、都での労役の代わりに布を納めるもの」', '庸', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sakimori', '次の説明にあてはまる語句を答えなさい。
「律令制のもとで、九州北部の防備にあたらされた兵士」', '防人', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokushi', '次の説明にあてはまる語句を答えなさい。
「地方の国を治めるために、中央から派遣された役人」', '国司', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shoen', '次の説明にあてはまる語句を答えなさい。
「貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった」', '荘園', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shugo', '次の説明にあてはまる語句を答えなさい。
「源頼朝が国ごとに置いた、軍事・警察の仕事をする役職」', '守護', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jito', '次の説明にあてはまる語句を答えなさい。
「源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職」', '地頭', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shikken', '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ」', '執権', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goonhoko', '次の説明にあてはまる語句を答えなさい。
「将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係」', '御恩と奉公', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gokenin', '次の説明にあてはまる語句を答えなさい。
「将軍と主従関係を結んだ武士」', '御家人', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'so-mura', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が寄合を開いて村のきまりを定めた自治組織」', '惣', '中世', '{"accept":["惣村"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'za', '次の説明にあてはまる語句を答えなさい。
「商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合」', '座', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tsuchiikki', '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆」', '土一揆', '中世', '{"accept":["徳政一揆"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gekokujo', '次の説明にあてはまる語句を答えなさい。
「地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴」', '下剋上', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunkokuho', '次の説明にあてはまる語句を答えなさい。
「戦国大名が領国を治めるために独自に定めたきまり」', '分国法', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'rakuichi', '次の説明にあてはまる語句を答えなさい。
「織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策」', '楽市・楽座', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heino', '次の説明にあてはまる語句を答えなさい。
「検地と刀狩によって、武士と農民の身分がはっきり分けられたこと」', '兵農分離', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goningumi', '次の説明にあてはまる語句を答えなさい。
「近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み」', '五人組', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tozama', '次の説明にあてはまる語句を答えなさい。
「関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された」', '外様大名', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dejima', '次の説明にあてはまる語句を答えなさい。
「鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島」', '出島', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shuinsen', '次の説明にあてはまる語句を答えなさい。
「江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易」', '朱印船貿易', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kurayashiki', '次の説明にあてはまる語句を答えなさい。
「諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫」', '蔵屋敷', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kabunakama', '次の説明にあてはまる語句を答えなさい。
「幕府や藩に公認され、営業を独占した商工業者の同業組合」', '株仲間', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchikowashi', '次の説明にあてはまる語句を答えなさい。
「ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動」', '打ちこわし', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fukoku', '次の説明にあてはまる語句を答えなさい。
「欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標」', '富国強兵', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shokusan', '次の説明にあてはまる語句を答えなさい。
「官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策」', '殖産興業', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hanseki', '次の説明にあてはまる語句を答えなさい。
「1869年、大名が治めていた土地と人民を天皇に返させた政策」', '版籍奉還', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hanseki-year', '「版籍奉還」は西暦何年のことか。数字で答えなさい。', '1869', '近代', '{"accept":["1869年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chohei', '次の説明にあてはまる語句を答えなさい。
「1873年、満20歳以上の男子に兵役の義務を課した法令」', '徴兵令', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chohei-year', '「徴兵令」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tomioka', '次の説明にあてはまる語句を答えなさい。
「殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場」', '富岡製糸場', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan', '次の説明にあてはまる語句を答えなさい。
「1877年、政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱」', '西南戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan-year', '「西南戦争」は西暦何年のことか。数字で答えなさい。', '1877', '近代', '{"accept":["1877年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan-person', '次の説明にあてはまる人物はだれか。
「明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた」', '西郷隆盛', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimonoseki', '次の説明にあてはまる語句を答えなさい。
「1895年に結ばれた日清戦争の講和条約。遼東半島や台湾を得た」', '下関条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimonoseki-year', '「下関条約」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangoku', '次の説明にあてはまる語句を答えなさい。
「1895年、ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事」', '三国干渉', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangoku-year', '「三国干渉」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'portsmouth', '次の説明にあてはまる語句を答えなさい。
「1905年に結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった」', 'ポーツマス条約', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'portsmouth-year', '「ポーツマス条約」は西暦何年のことか。数字で答えなさい。', '1905', '近代', '{"accept":["1905年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renaissance', '次の説明にあてはまる語句を答えなさい。
「14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き」', 'ルネサンス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukyokaikaku', '次の説明にあてはまる語句を答えなさい。
「16世紀、免罪符を売る教会を批判してルターらが始めた改革」', '宗教改革', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukyokaikaku-person', '次の説明にあてはまる人物はだれか。
「免罪符を売る教会を批判し、宗教改革を始めた」', 'ルター', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'columbus', '次の説明にあてはまる語句を答えなさい。
「1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'columbus-person', '次の説明にあてはまる人物はだれか。
「1492年に大西洋を横断し、アメリカ大陸付近の島に到達した」', 'コロンブス', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'magellan', '次の説明にあてはまる語句を答えなさい。
「その船隊が初めて世界一周を成しとげた人物」', 'マゼラン', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'meiyo', '次の説明にあてはまる語句を答えなさい。
「1688年、イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた」', '名誉革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'meiyo-year', '「名誉革命」は西暦何年のことか。数字で答えなさい。', '1688', '近世', '{"accept":["1688年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dokuritsu', '次の説明にあてはまる語句を答えなさい。
「1776年、イギリスからの独立にあたって出された、自由と平等をうたった宣言」', 'アメリカ独立宣言', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dokuritsu-year', '「アメリカ独立宣言」は西暦何年のことか。数字で答えなさい。', '1776', '近世', '{"accept":["1776年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'furansu', '次の説明にあてはまる語句を答えなさい。
「1789年に始まり、自由・平等・国民主権をうたう人権宣言が出された革命」', 'フランス革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'furansu-year', '「フランス革命」は西暦何年のことか。数字で答えなさい。', '1789', '近世', '{"accept":["1789年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangyokakumei', '次の説明にあてはまる語句を答えなさい。
「18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化」', '産業革命', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ahen', '次の説明にあてはまる語句を答えなさい。
「1840年に始まったイギリスと清の戦争。清が敗れ、日本の対外政策にも影響した」', 'アヘン戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ahen-year', '「アヘン戦争」は西暦何年のことか。数字で答えなさい。', '1840', '近代', '{"accept":["1840年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku', '次の説明にあてはまる語句を答えなさい。
「1861年に始まったアメリカの内戦。奴隷制をめぐって国内が二分された」', '南北戦争', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku-year', '「南北戦争」は西暦何年のことか。数字で答えなさい。', '1861', '近代', '{"accept":["1861年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku-person', '次の説明にあてはまる人物はだれか。
「南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた」', 'リンカン', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai', '次の説明にあてはまる語句を答えなさい。
「1911年に起こり、清をたおして翌年に中華民国が成立した革命」', '辛亥革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai-year', '「辛亥革命」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai-person', '次の説明にあてはまる人物はだれか。
「三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした」', '孫文', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'roshia', '次の説明にあてはまる語句を答えなさい。
「1917年に起こり、世界で初めての社会主義国が生まれるきっかけとなった革命」', 'ロシア革命', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'roshia-year', '「ロシア革命」は西暦何年のことか。数字で答えなさい。', '1917', '近代', '{"accept":["1917年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokusairenmei', '次の説明にあてはまる語句を答えなさい。
「1920年、第一次世界大戦の反省から世界平和のためにつくられた国際組織」', '国際連盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokusairenmei-year', '「国際連盟」は西暦何年のことか。数字で答えなさい。', '1920', '近代', '{"accept":["1920年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dainiji', '次の説明にあてはまる語句を答えなさい。
「1939年、ドイツのポーランド侵攻によって始まった世界的な戦争」', '第二次世界大戦', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dainiji-year', '「第二次世界大戦」は西暦何年のことか。数字で答えなさい。', '1939', '近代', '{"accept":["1939年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nochikaikaku', '次の説明にあてはまる語句を答えなさい。
「戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革」', '農地改革', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zaibatsu', '次の説明にあてはまる語句を答えなさい。
「戦後、経済を支配していた大きな企業グループを解散させた改革」', '財閥解体', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'reisen', '次の説明にあてはまる語句を答えなさい。
「戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態」', '冷戦', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chosen', '次の説明にあてはまる語句を答えなさい。
「1950年に始まった戦争。日本は物資の生産で好景気となった」', '朝鮮戦争', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chosen-year', '「朝鮮戦争」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisso', '次の説明にあてはまる語句を答えなさい。
「1956年、ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言」', '日ソ共同宣言', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisso-year', '「日ソ共同宣言」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekiyu', '次の説明にあてはまる語句を答えなさい。
「1973年、中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事」', '石油危機', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekiyu-year', '「石油危機」は西暦何年のことか。数字で答えなさい。', '1973', '現代', '{"accept":["1973年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jomondoki', '次の説明にあてはまる語句を答えなさい。
「縄目の文様がつけられた、厚手で黒っぽい土器」', '縄文土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tateana', '次の説明にあてはまる語句を答えなさい。
「地面を掘り下げ、柱を立てて屋根をかけた住まい」', '竪穴住居', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaizuka', '次の説明にあてはまる語句を答えなさい。
「当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる」', '貝塚', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dogu', '次の説明にあてはまる語句を答えなさい。
「縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている」', '土偶', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sannai', '次の説明にあてはまる語句を答えなさい。
「青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡」', '三内丸山遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yayoidoki', '次の説明にあてはまる語句を答えなさい。
「縄文土器より薄手でかたく、かざりの少ない赤褐色の土器」', '弥生土器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inasaku', '次の説明にあてはまる語句を答えなさい。
「大陸から九州北部に伝わり、弥生時代に各地へ広まった農業」', '稲作', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'takayuka', '次の説明にあてはまる語句を答えなさい。
「収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉」', '高床倉庫', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'toro', '次の説明にあてはまる語句を答えなさい。
「静岡県にある、水田の跡が見つかった弥生時代の遺跡」', '登呂遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yoshinogari', '次の説明にあてはまる語句を答えなさい。
「佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡」', '吉野ヶ里遺跡', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seidoki', '次の説明にあてはまる語句を答えなさい。
「銅鐸や銅剣など、主に祭りの道具として使われた金属器」', '青銅器', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kofun', '次の説明にあてはまる語句を答えなさい。
「3世紀後半から各地につくられた、王や豪族の大きな墓」', '古墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'zenpokoen', '次の説明にあてはまる語句を答えなさい。
「円形と四角形を組み合わせた、かぎ穴のような形をした古墳」', '前方後円墳', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'daisen', '次の説明にあてはまる語句を答えなさい。
「大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる」', '大仙古墳', '原始', '{"accept":["大仙陵古墳","仁徳天皇陵古墳","仁徳天皇陵","大山古墳"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haniwa', '次の説明にあてはまる語句を答えなさい。
「古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある」', '埴輪', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yamato', '次の説明にあてはまる語句を答えなさい。
「3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権」', '大和政権', '原始', '{"accept":["大和朝廷","ヤマト政権","ヤマト王権","大和王権"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'toraijin', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々」', '渡来人', '原始', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jinshin', '次の説明にあてはまる語句を答えなさい。
「672年、天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった」', '壬申の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jinshin-year', '「壬申の乱」は西暦何年のことか。数字で答えなさい。', '672', '古代', '{"accept":["672年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fujiwarakyo', '次の説明にあてはまる語句を答えなさい。
「694年、奈良盆地南部につくられた、日本で初めての本格的な都」', '藤原京', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fujiwarakyo-year', '「藤原京」は西暦何年のことか。数字で答えなさい。', '694', '古代', '{"accept":["694年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei', '次の説明にあてはまる語句を答えなさい。
「1086年、白河上皇が始めた、天皇の位をゆずったあとも上皇として政治を動かす仕組み」', '院政', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei-year', '「院政」は西暦何年のことか。数字で答えなさい。', '1086', '古代', '{"accept":["1086年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei-person', '次の説明にあてはまる人物はだれか。
「天皇の位をゆずったあとも上皇として政治を行う院政を始めた」', '白河上皇', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'masakado', '次の説明にあてはまる語句を答えなさい。
「10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった」', '平将門の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hogen', '次の説明にあてはまる語句を答えなさい。
「1156年、天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された」', '保元の乱', '古代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hogen-year', '「保元の乱」は西暦何年のことか。数字で答えなさい。', '1156', '古代', '{"accept":["1156年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nimosaku', '次の説明にあてはまる語句を答えなさい。
「同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった」', '二毛作', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikiichi', '次の説明にあてはまる語句を答えなさい。
「寺社の門前や交通の要地で、月に数回開かれた市」', '定期市', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bashaku', '次の説明にあてはまる語句を答えなさい。
「馬を使って物資を運んだ運送業者。土一揆の中心になることもあった」', '馬借', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wako', '次の説明にあてはまる語句を答えなさい。
「朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた」', '倭寇', '中世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shorui', '次の説明にあてはまる語句を答えなさい。
「徳川綱吉が出した、犬をはじめ生き物を大切にすることを命じた極端な法令」', '生類憐みの令', '近世', '{"accept":["生類憐れみの令","生類あわれみの令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shorui-person', '次の説明にあてはまる人物はだれか。
「生類憐みの令を出し、学問を重んじる政治を行った」', '徳川綱吉', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tanuma', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tanuma-person', '次の説明にあてはまる人物はだれか。
「株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した」', '田沼意次', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'oshio', '次の説明にあてはまる語句を答えなさい。
「1837年、ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱」', '大塩平八郎の乱', '近世', '{"accept":["大塩の乱"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'oshio-year', '「大塩平八郎の乱」は西暦何年のことか。数字で答えなさい。', '1837', '近世', '{"accept":["1837年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchiharai', '次の説明にあてはまる語句を答えなさい。
「1825年、日本に近づく外国船を追い払うことを命じた幕府の法令」', '異国船打払令', '近世', '{"accept":["外国船打払令","無二念打払令"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchiharai-year', '「異国船打払令」は西暦何年のことか。数字で答えなさい。', '1825', '近世', '{"accept":["1825年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinden', '次の説明にあてはまる語句を答えなさい。
「年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと」', '新田開発', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manufacture', '次の説明にあてはまる語句を答えなさい。
「作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう」', '工場制手工業', '近世', '{"accept":["マニュファクチュア"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gonin', '次の説明にあてはまる語句を答えなさい。
「江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路」', '五街道', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenmei', '次の説明にあてはまる語句を答えなさい。
「18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた」', '天明のききん', '近世', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiei', '次の説明にあてはまる語句を答えなさい。
「1902年、ロシアの南下に対抗するためイギリスと結んだ同盟」', '日英同盟', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiei-year', '「日英同盟」は西暦何年のことか。数字で答えなさい。', '1902', '近代', '{"accept":["1902年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kome', '次の説明にあてはまる語句を答えなさい。
「1918年、米の値上がりに対して富山県から全国に広がった民衆の運動」', '米騒動', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kome-year', '「米騒動」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku', '次の説明にあてはまる語句を答えなさい。
「1918年、原敬が首相となって成立した、日本で初めての本格的なもの」', '政党内閣', '近代', '{"accept":["本格的な政党内閣","原敬内閣"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku-year', '「政党内閣」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku-person', '次の説明にあてはまる人物はだれか。
「1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた」', '原敬', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taisho', '次の説明にあてはまる語句を答えなさい。
「大正時代に高まった、民主主義を求める風潮」', '大正デモクラシー', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'futsusenkyo', '次の説明にあてはまる語句を答えなさい。
「1925年に成立し、満25歳以上のすべての男子に選挙権が認められた法律」', '普通選挙法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'futsusenkyo-year', '「普通選挙法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chian', '次の説明にあてはまる語句を答えなさい。
「1925年、共産主義などの運動を取りしまるために定められた法律」', '治安維持法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chian-year', '「治安維持法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanto-daishinsai', '次の説明にあてはまる語句を答えなさい。
「1923年、東京や横浜に大きな被害をもたらした地震災害」', '関東大震災', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanto-daishinsai-year', '「関東大震災」は西暦何年のことか。数字で答えなさい。', '1923', '近代', '{"accept":["1923年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekaikyoko', '次の説明にあてはまる語句を答えなさい。
「1929年、アメリカの株価暴落をきっかけに世界中に広がった不景気」', '世界恐慌', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekaikyoko-year', '「世界恐慌」は西暦何年のことか。数字で答えなさい。', '1929', '近代', '{"accept":["1929年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshukoku', '次の説明にあてはまる語句を答えなさい。
「1932年、満州事変のあとに日本が中国東北部につくった国」', '満州国', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshukoku-year', '「満州国」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renmei-dattai', '次の説明にあてはまる語句を答えなさい。
「1933年、満州国を認められなかった日本が通告した」', '国際連盟からの脱退', '近代', '{"accept":["国際連盟脱退","連盟脱退"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renmei-dattai-year', '「国際連盟からの脱退」は西暦何年のことか。数字で答えなさい。', '1933', '近代', '{"accept":["1933年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goichigo', '次の説明にあてはまる語句を答えなさい。
「1932年、海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった」', '五・一五事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goichigo-year', '「五・一五事件」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ninirooku', '次の説明にあてはまる語句を答えなさい。
「1936年、陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件」', '二・二六事件', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ninirooku-year', '「二・二六事件」は西暦何年のことか。数字で答えなさい。', '1936', '近代', '{"accept":["1936年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sodoin', '次の説明にあてはまる語句を答えなさい。
「1938年、戦争のために国民や物資を政府が自由に動かせるようにした法律」', '国家総動員法', '近代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sodoin-year', '「国家総動員法」は西暦何年のことか。数字で答えなさい。', '1938', '近代', '{"accept":["1938年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gojugonen', '次の説明にあてはまる語句を答えなさい。
「1955年から約38年間続いた、自由民主党が与党であり続けた政治体制」', '55年体制', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kogai', '次の説明にあてはまる語句を答えなさい。
「高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく」', '四大公害病', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkansen', '次の説明にあてはまる語句を答えなさい。
「1964年、東京オリンピックに合わせて開通した高速鉄道」', '東海道新幹線', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkansen-year', '「東海道新幹線」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-kokko', '次の説明にあてはまる語句を答えなさい。
「1972年、日中共同声明によって中国との国交が結ばれたこと」', '日中国交正常化', '現代', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-kokko-year', '「日中国交正常化」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bubble', '次の説明にあてはまる語句を答えなさい。
「1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気」', 'バブル経済', '現代', NULL);
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
