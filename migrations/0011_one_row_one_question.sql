-- 0011: 1行=1問への移行
--
-- それまで label の意味がクイズごとに違っていた(日本地理だけ問題文で、他は名称。
-- 問題文はJSが組み立てていた)。DBを見れば出題内容がそのまま分かる状態にするため、
-- label に必ず問題文を入れ、1つの事物から複数の問い方を作っていたクイズは行を分ける。
--   歴史 222 -> 388 (説明→語句 / 出来事→年代 / 業績→人物)
--   世界遺産 26 -> 78 (説明→名称 / 名称→所在県 / 名称→種別)
--   地形・地図記号・都道府県(地図)・日本地理 は件数そのまま
--
-- 既存の行は item_key を据え置いて UPDATE するので item_id が変わらず、
-- 解答履歴(attempts)はそのまま使える。削除は無い。
--
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0011_one_row_one_question.sql
-- 冪等: UPDATE と INSERT OR IGNORE のみなので再実行しても安全。

-- 既存 543 件: 問題文などを更新
UPDATE items SET label = '次の説明にあてはまる地形は？
「東北地方を南北に走る、日本で最も長い山脈」', answer = '奥羽山脈', category = '山地・山脈', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '奥羽山脈';
UPDATE items SET label = '次の説明にあてはまる地形は？
「「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる」', answer = '飛騨山脈', category = '山地・山脈', extra_json = '{"accept":["北アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '飛騨山脈';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本アルプスの一つで、長野県に位置する」', answer = '木曽山脈', category = '山地・山脈', extra_json = '{"accept":["中央アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '木曽山脈';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本アルプスの一つで、山梨県・長野県・静岡県にまたがる」', answer = '赤石山脈', category = '山地・山脈', extra_json = '{"accept":["南アルプス"]}' WHERE quiz_id = 'chikei' AND item_key = '赤石山脈';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本最高峰(標高3776m)。静岡県と山梨県にまたがる」', answer = '富士山', category = '山地・山脈', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '富士山';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本最大の平野」', answer = '関東平野', category = '平野', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '関東平野';
UPDATE items SET label = '次の説明にあてはまる地形は？
「新潟県に広がる、日本有数の稲作地帯」', answer = '越後平野', category = '平野', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '越後平野';
UPDATE items SET label = '次の説明にあてはまる地形は？
「愛知県・岐阜県に広がり、「輪中」と呼ばれる堤防で知られる」', answer = '濃尾平野', category = '平野', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '濃尾平野';
UPDATE items SET label = '次の説明にあてはまる地形は？
「北海道に広がる、稲作がさかんな平野」', answer = '石狩平野', category = '平野', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '石狩平野';
UPDATE items SET label = '次の説明にあてはまる地形は？
「九州最大の平野で、佐賀県・福岡県に広がる」', answer = '筑紫平野', category = '平野', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '筑紫平野';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本で最も長い川(約367km)」', answer = '信濃川', category = '川', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '信濃川';
UPDATE items SET label = '次の説明にあてはまる地形は？
「流域面積が日本一で、「坂東太郎」とも呼ばれる川」', answer = '利根川', category = '川', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '利根川';
UPDATE items SET label = '次の説明にあてはまる地形は？
「北海道を流れる、日本三大河川の一つ」', answer = '石狩川', category = '川', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '石狩川';
UPDATE items SET label = '次の説明にあてはまる地形は？
「濃尾平野を流れる、木曽三川の一つ」', answer = '木曽川', category = '川', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '木曽川';
UPDATE items SET label = '次の説明にあてはまる地形は？
「琵琶湖から大阪湾へ流れる川」', answer = '淀川', category = '川', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '淀川';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本最大の湖。滋賀県にある」', answer = '琵琶湖', category = '湖', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '琵琶湖';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本の太平洋側を流れる暖流」', answer = '黒潮', category = '海流', extra_json = '{"accept":["日本海流"]}' WHERE quiz_id = 'chikei' AND item_key = '黒潮';
UPDATE items SET label = '次の説明にあてはまる地形は？
「三陸沖などを流れる寒流」', answer = '親潮', category = '海流', extra_json = '{"accept":["千島海流"]}' WHERE quiz_id = 'chikei' AND item_key = '親潮';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本海側を流れる暖流」', answer = '対馬海流', category = '海流', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '対馬海流';
UPDATE items SET label = '次の説明にあてはまる地形は？
「日本海側を北から南へ流れる寒流」', answer = 'リマン海流', category = '海流', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = 'リマン海流';
UPDATE items SET label = '次の説明にあてはまる地形は？
「千葉県にある半島」', answer = '房総半島', category = '半島', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '房総半島';
UPDATE items SET label = '次の説明にあてはまる地形は？
「近畿地方最大の半島」', answer = '紀伊半島', category = '半島', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '紀伊半島';
UPDATE items SET label = '次の説明にあてはまる地形は？
「石川県にある、日本海に突き出た半島」', answer = '能登半島', category = '半島', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '能登半島';
UPDATE items SET label = '次の説明にあてはまる地形は？
「本州と北海道を隔てる海峡」', answer = '津軽海峡', category = '海峡', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '津軽海峡';
UPDATE items SET label = '次の説明にあてはまる地形は？
「本州と九州を隔てる海峡」', answer = '関門海峡', category = '海峡', extra_json = NULL WHERE quiz_id = 'chikei' AND item_key = '関門海峡';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '神社', category = '建物・施設', extra_json = '{"note":"鳥居をかたどっている"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'jinja';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '寺院', category = '建物・施設', extra_json = '{"note":"仏教に由来する印をかたどっている","accept":["寺","お寺"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'jiin';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '郵便局', category = '建物・施設', extra_json = '{"note":"郵便のマークを丸で囲んでいる"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'yubinkyoku';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '小・中学校', category = '建物・施設', extra_json = '{"note":"「文」の字をかたどっている","accept":["小中学校","小学校・中学校","小学校","中学校"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'shochugakko';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '高等学校', category = '建物・施設', extra_json = '{"note":"「文」の字を丸で囲んでいる","accept":["高校"]}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kotogakko';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '市役所', category = '建物・施設', extra_json = '{"note":"二重丸で表す"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'shiyakusho';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '町村役場', category = '建物・施設', extra_json = '{"note":"丸ひとつで表す"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'choson-yakuba';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '交番', category = '建物・施設', extra_json = '{"note":"警棒を2本交差させた形"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'koban';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '警察署', category = '建物・施設', extra_json = '{"note":"交差した警棒を丸で囲んでいる"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'keisatsusho';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '消防署', category = '建物・施設', extra_json = '{"note":"昔の消火道具「さすまた」の形"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'shobosho';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '工場', category = '建物・施設', extra_json = '{"note":"機械の歯車をかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kojo';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '図書館', category = '建物・施設', extra_json = '{"note":"開いた本の形"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'toshokan';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '博物館', category = '建物・施設', extra_json = '{"note":"柱のある建物をかたどっている"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'hakubutsukan';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '老人ホーム', category = '建物・施設', extra_json = '{"note":"建物の中に杖が描かれている"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'rojin-home';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '灯台', category = '建物・施設', extra_json = '{"note":"光を放つ様子をかたどっている"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'todai';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '港', category = '建物・施設', extra_json = '{"note":"船の錨をかたどっている"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'minato';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '温泉', category = '自然・その他', extra_json = '{"note":"湯気が立ちのぼる様子"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'onsen';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '三角点', category = '自然・その他', extra_json = '{"note":"測量の基準となる点。三角形で表す"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'sankakuten';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '茶畑', category = '土地利用', extra_json = '{"note":"茶の実を3つ並べた形"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'chabatake';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '桑畑', category = '土地利用', extra_json = '{"note":"桑の木の枝ぶりをかたどっている。2013年の改訂で廃止され、今の地形図には使われていない"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'kuwabatake';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '広葉樹林', category = '土地利用', extra_json = '{"note":"丸い樹冠の木で表す"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'koyojurin';
UPDATE items SET label = '次の地図記号は何を表しているか。', answer = '針葉樹林', category = '土地利用', extra_json = '{"note":"とがった樹冠の木で表す"}' WHERE quiz_id = 'chizu-kigou' AND item_key = 'shinyojurin';
UPDATE items SET label = '北海道', answer = '札幌市', category = 'hokkaido', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '1';
UPDATE items SET label = '青森県', answer = '青森市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '2';
UPDATE items SET label = '岩手県', answer = '盛岡市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '3';
UPDATE items SET label = '宮城県', answer = '仙台市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '4';
UPDATE items SET label = '秋田県', answer = '秋田市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '5';
UPDATE items SET label = '山形県', answer = '山形市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '6';
UPDATE items SET label = '福島県', answer = '福島市', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '7';
UPDATE items SET label = '茨城県', answer = '水戸市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '8';
UPDATE items SET label = '栃木県', answer = '宇都宮市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '9';
UPDATE items SET label = '群馬県', answer = '前橋市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '10';
UPDATE items SET label = '埼玉県', answer = 'さいたま市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '11';
UPDATE items SET label = '千葉県', answer = '千葉市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '12';
UPDATE items SET label = '東京都', answer = '東京', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '13';
UPDATE items SET label = '神奈川県', answer = '横浜市', category = 'kanto', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '14';
UPDATE items SET label = '新潟県', answer = '新潟市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '15';
UPDATE items SET label = '富山県', answer = '富山市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '16';
UPDATE items SET label = '石川県', answer = '金沢市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '17';
UPDATE items SET label = '福井県', answer = '福井市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '18';
UPDATE items SET label = '山梨県', answer = '甲府市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '19';
UPDATE items SET label = '長野県', answer = '長野市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '20';
UPDATE items SET label = '岐阜県', answer = '岐阜市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '21';
UPDATE items SET label = '静岡県', answer = '静岡市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '22';
UPDATE items SET label = '愛知県', answer = '名古屋市', category = 'chubu', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '23';
UPDATE items SET label = '三重県', answer = '津市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '24';
UPDATE items SET label = '滋賀県', answer = '大津市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '25';
UPDATE items SET label = '京都府', answer = '京都市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '26';
UPDATE items SET label = '大阪府', answer = '大阪市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '27';
UPDATE items SET label = '兵庫県', answer = '神戸市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '28';
UPDATE items SET label = '奈良県', answer = '奈良市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '29';
UPDATE items SET label = '和歌山県', answer = '和歌山市', category = 'kinki', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '30';
UPDATE items SET label = '鳥取県', answer = '鳥取市', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '31';
UPDATE items SET label = '島根県', answer = '松江市', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '32';
UPDATE items SET label = '岡山県', answer = '岡山市', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '33';
UPDATE items SET label = '広島県', answer = '広島市', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '34';
UPDATE items SET label = '山口県', answer = '山口市', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '35';
UPDATE items SET label = '徳島県', answer = '徳島市', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '36';
UPDATE items SET label = '香川県', answer = '高松市', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '37';
UPDATE items SET label = '愛媛県', answer = '松山市', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '38';
UPDATE items SET label = '高知県', answer = '高知市', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '39';
UPDATE items SET label = '福岡県', answer = '福岡市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '40';
UPDATE items SET label = '佐賀県', answer = '佐賀市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '41';
UPDATE items SET label = '長崎県', answer = '長崎市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '42';
UPDATE items SET label = '熊本県', answer = '熊本市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '43';
UPDATE items SET label = '大分県', answer = '大分市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '44';
UPDATE items SET label = '宮崎県', answer = '宮崎市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '45';
UPDATE items SET label = '鹿児島県', answer = '鹿児島市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '46';
UPDATE items SET label = '沖縄県', answer = '那覇市', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'kencho' AND item_key = '47';
UPDATE items SET label = '日本の一番南にある島（極南端）の名前は何ですか？', answer = '沖ノ鳥島', category = 'basic', extra_json = '{"accept":["沖の鳥島"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nan-tan';
UPDATE items SET label = '飛騨山脈、木曽山脈、赤石山脈の3つの山脈を合わせた総称を何といいますか？', answer = '日本アルプス', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'nihon-alps';
UPDATE items SET label = '日本で一番流域面積が広い川の名前は何ですか？', answer = '利根川', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'tone-gawa';
UPDATE items SET label = '三陸海岸や志摩半島に見られる、複雑に入り組んだ鋸刃状の海岸地形を何といいますか？', answer = 'リアス海岸', category = 'basic', extra_json = '{"accept":["リアス式海岸","リアス"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'rias-kaigan';
UPDATE items SET label = '東北地方の太平洋側で、夏に吹き冷害の原因となる冷たく湿った北東の風を何といいますか？', answer = 'やませ', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'yamase';
UPDATE items SET label = '関東平野のほぼ中央を流れる利根川などの流域に広がる、火山灰が降り積もってできた赤土の台地を何といいますか？', answer = '関東ローム層', category = 'basic', extra_json = '{"accept":["関東ローム"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'kanto-loam';
UPDATE items SET label = '中部地方の八ヶ岳山麓や菅平高原などで盛んな、夏の涼しい気候を利用してレタスやキャベツなどを栽培する農業を何といいますか？', answer = '高冷地農業', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'korechi';
UPDATE items SET label = '大阪市やその周辺など、大消費地に近い立地を生かして野菜などを栽培する農業を何といいますか？', answer = '近郊農業', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'kinko';
UPDATE items SET label = '瀬戸内海沿岸の地域に見られる、年中温暖で雨が少ない気候を何といいますか？', answer = '瀬戸内の気候', category = 'basic', extra_json = '{"accept":["瀬戸内気候","瀬戸内式気候"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'setouchi';
UPDATE items SET label = '九州南部に広がる、シラスと呼ばれる火山灰が堆積した台地を何といいますか？', answer = 'シラス台地', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'shirasu';
UPDATE items SET label = '青森県にある、むつ湾を囲むまさかりの形をした半島は何ですか？', answer = '下北半島', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'shimokita-hanto';
UPDATE items SET label = '日本の太平洋側を南から北へ流れる、日本海流とも呼ばれる暖流の名前は何ですか？', answer = '黒潮', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'kuroshio';
UPDATE items SET label = '日本で最も長い川の名前は何ですか？', answer = '信濃川', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'shinano-gawa';
UPDATE items SET label = '山口県の秋吉台などに代表される、石灰岩が雨水などで侵食されてできた地形を何といいますか？', answer = 'カルスト地形', category = 'basic', extra_json = '{"accept":["カルスト"]}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'karst';
UPDATE items SET label = '北海道の根釧台地などで盛んな、乳牛などを飼育して生乳や乳製品を生産する農業を何といいますか？', answer = '酪農', category = 'basic', extra_json = NULL WHERE quiz_id = 'nihon-chiri' AND item_key = 'rakuno';
UPDATE items SET label = 'ここは日本列島の最北に位置し、都道府県の中で面積が最も広い。冬の寒さが厳しく、流氷が接岸する海岸もある。じゃがいもや小麦などの畑作、酪農が盛んで、世界遺産・知床が含まれる。これはどこの都道府県か。', answer = '北海道', category = 'todofuken', extra_json = '{"region":"hokkaido"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-1';
UPDATE items SET label = 'ここは本州最北端に位置し、津軽海峡を挟んで北海道と向かい合う。日本海と太平洋の両方に面する数少ない県の一つである。りんごの生産量が全国一位で、世界遺産・白神山地のブナ原生林も広がる。これはどこの都道府県か。', answer = '青森県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-2';
UPDATE items SET label = 'ここは東北地方の太平洋側に位置し、面積は北海道に次いで全国2位の広さである。三陸海岸はリアス海岸が続き、漁業が盛んである。世界遺産「平泉」の中尊寺金色堂があることでも知られる。これはどこの都道府県か。', answer = '岩手県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-3';
UPDATE items SET label = 'ここは東北地方の太平洋側に位置し、東北地方の中心都市を県庁所在地とする。日本三景の一つに数えられる松島がある。牛タン料理でも知られる。これはどこの都道府県か。', answer = '宮城県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-4';
UPDATE items SET label = 'ここは東北地方の日本海側に位置する。あきたこまちなど米の産地として知られ、世界遺産・白神山地の一部もまたがる。なまはげと呼ばれる伝統行事が伝わる。これはどこの都道府県か。', answer = '秋田県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-5';
UPDATE items SET label = 'ここは東北地方の日本海側に位置する。さくらんぼの生産量が全国一位で、将棋の駒の生産地としても知られる。蔵王の樹氷でも有名である。これはどこの都道府県か。', answer = '山形県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-6';
UPDATE items SET label = 'ここは東北地方の最南端に位置し、東は太平洋に面する。東北地方の中で最も面積が広い。ももの産地としても知られる。これはどこの都道府県か。', answer = '福島県', category = 'todofuken', extra_json = '{"region":"tohoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-7';
UPDATE items SET label = 'ここは関東地方の北東部に位置し、太平洋に面する。日本で2番目に大きい湖である霞ヶ浦がある。納豆や、メロン・レンコンなどの農産物の生産量が高いことで知られる。これはどこの都道府県か。', answer = '茨城県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-8';
UPDATE items SET label = 'ここは関東地方の内陸県で、海に面していない。世界遺産・日光の社寺があり、いちごの生産量は全国一位である。これはどこの都道府県か。', answer = '栃木県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-9';
UPDATE items SET label = 'ここは関東地方北西部の内陸県である。世界遺産・富岡製糸場があり、こんにゃくいもの生産量は全国一位である。草津温泉など温泉地も多い。これはどこの都道府県か。', answer = '群馬県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-10';
UPDATE items SET label = 'ここは関東地方の内陸県で、東京都の北に隣接する。海に面していない。小江戸と呼ばれる古い町並みが残る川越市や、草加せんべいで知られる。これはどこの都道府県か。', answer = '埼玉県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-11';
UPDATE items SET label = 'ここは関東地方に位置し、房総半島の大部分を占め、三方を海に囲まれる。成田国際空港があり、落花生の生産量は全国一位である。これはどこの都道府県か。', answer = '千葉県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-12';
UPDATE items SET label = 'ここは日本の首都であり、人口は全国で最も多い。かつて江戸と呼ばれ、伊豆諸島や小笠原諸島も含まれる。これはどこの都道府県か。', answer = '東京都', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-13';
UPDATE items SET label = 'ここは関東地方に位置し、東京都の南に隣接して太平洋に面する。横浜港などの港町が発展し、鎌倉の大仏でも知られる。これはどこの都道府県か。', answer = '神奈川県', category = 'todofuken', extra_json = '{"region":"kanto"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-14';
UPDATE items SET label = 'ここは日本海に面し、日本で最も長い信濃川の下流域が広がる。米どころとして知られ、コシヒカリの名産地である。世界遺産・佐渡島の金山がある。これはどこの都道府県か。', answer = '新潟県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-15';
UPDATE items SET label = 'ここは日本海に面し、立山連峰と富山湾に挟まれる。ホタルイカ漁で知られ、チューリップの球根の生産も盛んである。これはどこの都道府県か。', answer = '富山県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-16';
UPDATE items SET label = 'ここは日本海に突き出た能登半島を含む。かつて加賀百万石と呼ばれた城下町が発展し、金箔の生産量は全国一位である。これはどこの都道府県か。', answer = '石川県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-17';
UPDATE items SET label = 'ここは日本海に面し、東尋坊と呼ばれる断崖で知られる。恐竜の化石の発掘地としても有名で、眼鏡フレームの生産量は全国一位である。これはどこの都道府県か。', answer = '福井県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-18';
UPDATE items SET label = 'ここは内陸県で、富士山の北側に位置する。ぶどうとももの生産量がともに全国一位で、ワインの生産も盛んである。これはどこの都道府県か。', answer = '山梨県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-19';
UPDATE items SET label = 'ここは内陸に位置し、海に面していない数少ない県の一つである。隣接する都道府県の数は全国で最も多い。中央部から南部にかけて日本アルプスと呼ばれる山脈が連なり、りんごやそばの産地としても知られる。これはどこの都道府県か。', answer = '長野県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-20';
UPDATE items SET label = 'ここは内陸県で、北部の飛騨地方と南部の美濃地方に分かれる。世界遺産・白川郷の合掌造り集落があり、長良川の鵜飼でも知られる。これはどこの都道府県か。', answer = '岐阜県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-21';
UPDATE items SET label = 'ここは太平洋に面し、富士山の南側に広がる。茶の生産量が全国有数で、うなぎの養殖地としても知られる。これはどこの都道府県か。', answer = '静岡県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-22';
UPDATE items SET label = 'ここは濃尾平野の東部に位置し、太平洋に面する。自動車産業を中心とする日本最大級の工業地帯があり、製造品出荷額は全国トップクラスである。これはどこの都道府県か。', answer = '愛知県', category = 'todofuken', extra_json = '{"region":"chubu"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-23';
UPDATE items SET label = 'ここは近畿地方に位置し、紀伊半島の東側を占める。伊勢神宮があり、英虞湾では真珠の養殖が盛んである。これはどこの都道府県か。', answer = '三重県', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-24';
UPDATE items SET label = 'ここは近畿地方の内陸に位置し、日本最大の面積を持つ湖である琵琶湖がある。京都府・大阪府に隣接し、ベッドタウンとしても発展してきた。これはどこの都道府県か。', answer = '滋賀県', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-25';
UPDATE items SET label = 'ここは近畿地方に位置し、かつて都が置かれていた地域である。清水寺や金閣寺など、世界遺産に登録された多くの社寺が残り、西陣織や京友禅などの伝統産業でも知られる。これはどこの都道府県か。', answer = '京都府', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-26';
UPDATE items SET label = 'ここは近畿地方に位置し、西日本最大の商業都市を中心とする。都道府県の中で面積は香川県に次いで2番目に小さく、たこ焼きやお好み焼きなど「粉もん」文化で知られる。これはどこの都道府県か。', answer = '大阪府', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-27';
UPDATE items SET label = 'ここは近畿地方に位置し、瀬戸内海と日本海の両方に面する数少ない県の一つである。世界遺産・姫路城があり、淡路島は玉ねぎの産地として知られる。これはどこの都道府県か。', answer = '兵庫県', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-28';
UPDATE items SET label = 'ここは近畿地方の内陸県で、かつて平城京が置かれた。東大寺や法隆寺など世界遺産に登録された寺社が多く、鹿が生息する公園でも知られる。これはどこの都道府県か。', answer = '奈良県', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-29';
UPDATE items SET label = 'ここは近畿地方に位置し、紀伊半島の南西部を占める。梅の生産量は全国一位で、世界遺産・熊野古道の一部を含む。これはどこの都道府県か。', answer = '和歌山県', category = 'todofuken', extra_json = '{"region":"kinki"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-30';
UPDATE items SET label = 'ここは中国地方の日本海側に位置し、都道府県の中で人口が最も少ない。広大な砂丘が広がることで知られる。これはどこの都道府県か。', answer = '鳥取県', category = 'todofuken', extra_json = '{"region":"chugoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-31';
UPDATE items SET label = 'ここは中国地方の日本海側に位置し、縁結びの神社として知られる出雲大社がある。世界遺産・石見銀山もこの県にある。これはどこの都道府県か。', answer = '島根県', category = 'todofuken', extra_json = '{"region":"chugoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-32';
UPDATE items SET label = 'ここは中国地方に位置し、瀬戸内海に面する。桃やぶどう(マスカット)の産地として知られ、倉敷市児島地区は学生服やジーンズの生産地としても有名である。これはどこの都道府県か。', answer = '岡山県', category = 'todofuken', extra_json = '{"region":"chugoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-33';
UPDATE items SET label = 'ここは中国地方に位置し、瀬戸内海に面する。原爆ドームと厳島神社という2つの世界遺産があり、かきの養殖生産量は全国一位である。これはどこの都道府県か。', answer = '広島県', category = 'todofuken', extra_json = '{"region":"chugoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-34';
UPDATE items SET label = 'ここは本州最西端に位置し、瀬戸内海と日本海の両方に面する。関門海峡を挟んで九州と向かい合い、ふぐの水揚げで知られる。これはどこの都道府県か。', answer = '山口県', category = 'todofuken', extra_json = '{"region":"chugoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-35';
UPDATE items SET label = 'ここは四国地方の東部に位置し、鳴門海峡の渦潮で知られる。阿波おどりが有名で、すだちの生産量は全国一位である。これはどこの都道府県か。', answer = '徳島県', category = 'todofuken', extra_json = '{"region":"shikoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-36';
UPDATE items SET label = 'ここは四国地方に位置し、瀬戸内海に面する。対岸には本州がある。都道府県の中で面積が最も小さく、降水量が少ないためため池が数多くつくられてきた。うどんの生産・消費量で全国的に知られる。これはどこの都道府県か。', answer = '香川県', category = 'todofuken', extra_json = '{"region":"shikoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-37';
UPDATE items SET label = 'ここは四国地方の北西部に位置し、瀬戸内海に面する。みかんの生産量が全国有数で、今治市はタオルの生産地として知られる。これはどこの都道府県か。', answer = '愛媛県', category = 'todofuken', extra_json = '{"region":"shikoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-38';
UPDATE items SET label = 'ここは四国地方の太平洋側に位置する。なすやピーマンなどの促成栽培が盛んで、かつおの一本釣り漁でも知られる。これはどこの都道府県か。', answer = '高知県', category = 'todofuken', extra_json = '{"region":"shikoku"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-39';
UPDATE items SET label = 'ここは九州地方の北部に位置し、人口・経済規模ともに九州で最大である。博多ラーメンや明太子で知られ、世界遺産・宗像大社沖ノ島を含む。これはどこの都道府県か。', answer = '福岡県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-40';
UPDATE items SET label = 'ここは九州地方北部に位置し、有明海に面してのりの養殖が盛んである。有田焼・伊万里焼などの陶磁器の産地としても知られる。これはどこの都道府県か。', answer = '佐賀県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-41';
UPDATE items SET label = 'ここは九州地方西部に位置し、離島の数が全国で最も多い。出島やカステラ・ちゃんぽんなど独自の文化で知られ、明治日本の産業革命遺産(軍艦島)を含む世界遺産がある。これはどこの都道府県か。', answer = '長崎県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-42';
UPDATE items SET label = 'ここは九州地方の中央部に位置し、世界最大級のカルデラを持つ阿蘇山がある。畳表に使われるい草の生産量は全国一位である。これはどこの都道府県か。', answer = '熊本県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-43';
UPDATE items SET label = 'ここは九州地方の北東部に位置し、太平洋に面する。温泉の源泉数・湧出量が全国一位で、かぼすの生産量も全国一位である。これはどこの都道府県か。', answer = '大分県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-44';
UPDATE items SET label = 'ここは九州地方の南東部に位置し、太平洋に面する。温暖な気候を活かしたきゅうりやピーマンの促成栽培が盛んである。マンゴーの産地としても知られる。これはどこの都道府県か。', answer = '宮崎県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-45';
UPDATE items SET label = 'ここは九州地方の最南端に位置し、今も活動を続ける桜島がある。さつまいもの生産量は全国一位で、世界遺産・屋久島を含む。これはどこの都道府県か。', answer = '鹿児島県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-46';
UPDATE items SET label = 'ここは日本最南端・最西端の島々からなり、亜熱帯の気候に属する。かつて琉球王国として独立した歴史を持ち、首里城跡などが世界遺産に登録されている。さとうきびの生産量は全国一位である。これはどこの都道府県か。', answer = '沖縄県', category = 'todofuken', extra_json = '{"region":"kyushu-okinawa"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'todofuken-47';
UPDATE items SET label = '「輪島塗」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '石川県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-1';
UPDATE items SET label = '「九谷焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '石川県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-2';
UPDATE items SET label = '「南部鉄器」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '岩手県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-3';
UPDATE items SET label = '「会津塗」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '福島県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-4';
UPDATE items SET label = '「有田焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '佐賀県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-5';
UPDATE items SET label = '「信楽焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '滋賀県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-6';
UPDATE items SET label = '「西陣織」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '京都府', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-7';
UPDATE items SET label = '「博多人形」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '福岡県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-8';
UPDATE items SET label = '「熊野筆」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '広島県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-9';
UPDATE items SET label = '「小千谷ちぢみ」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '新潟県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-10';
UPDATE items SET label = '「甲州印伝」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '山梨県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-11';
UPDATE items SET label = '「天童の将棋駒」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '山形県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-12';
UPDATE items SET label = '「越前和紙」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '福井県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-13';
UPDATE items SET label = '「津軽塗」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '青森県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-14';
UPDATE items SET label = '「江戸切子」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '東京都', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-15';
UPDATE items SET label = '「高岡銅器」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '富山県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-16';
UPDATE items SET label = '「別府竹細工」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '大分県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-17';
UPDATE items SET label = '「桐生織」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '群馬県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-18';
UPDATE items SET label = '「出雲そば」は、どこの都道府県の郷土料理として知られているか。', answer = '島根県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-19';
UPDATE items SET label = '「今治タオル」は、どこの都道府県の特産品として知られているか。', answer = '愛媛県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-20';
UPDATE items SET label = '「灘の酒」は、どこの都道府県の特産品として知られる日本酒か。', answer = '兵庫県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-21';
UPDATE items SET label = '「有松絞り」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '愛知県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-22';
UPDATE items SET label = '「美濃和紙」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '岐阜県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-23';
UPDATE items SET label = '「伊賀焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '三重県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-24';
UPDATE items SET label = '「笠間焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '茨城県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-25';
UPDATE items SET label = '「益子焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '栃木県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-26';
UPDATE items SET label = '「岩槻の雛人形」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '埼玉県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-27';
UPDATE items SET label = '「鎌倉彫」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '神奈川県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-28';
UPDATE items SET label = '「焼津のかつお節」は、どこの都道府県の特産品として知られているか。', answer = '静岡県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-29';
UPDATE items SET label = '「萩焼」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '山口県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-30';
UPDATE items SET label = '「堺打刃物」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '大阪府', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-31';
UPDATE items SET label = '「奈良筆・奈良墨」は、どこの都道府県の伝統的工芸品として知られているか。', answer = '奈良県', category = 'tokusanhin', extra_json = '{"type":"伝統工芸"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-32';
UPDATE items SET label = '「桜島大根」は、どこの都道府県の特産品として知られているか。', answer = '鹿児島県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-33';
UPDATE items SET label = '「黒糖」は、さとうきびを原料としてどこの都道府県で特に多くつくられているか。', answer = '沖縄県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-34';
UPDATE items SET label = '「小豆島のオリーブ」は、どこの都道府県の特産品として知られているか。', answer = '香川県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-35';
UPDATE items SET label = '「鳴門わかめ」は、どこの都道府県の特産品として知られているか。', answer = '徳島県', category = 'tokusanhin', extra_json = '{"type":"特産品"}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'tokusanhin-36';
UPDATE items SET label = '次は、令和4年産のじゃがいも(ばれいしょ)収穫量、都道府県別ランキング(上位5位)である。
1位　？
2位　鹿児島県(97,600t)
3位　長崎県(83,900t)
4位　茨城県(48,500t)
5位　千葉県(28,100t)
1位に当てはまる都道府県はどこか。', answer = '北海道', category = 'nousuisan', extra_json = '{"crop":"じゃがいも","year":"令和4年産(2022年)","source":"農林水産省 作物統計","blank_rank":1}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-1';
UPDATE items SET label = '次は、令和5年産のキャベツ収穫量、都道府県別ランキング(上位5位)である。
1位　群馬県(282,900t)
2位　？(272,700t)
3位　千葉県(116,000t)
4位　茨城県(101,600t)
5位　鹿児島県(72,900t)
2位に当てはまる都道府県はどこか。', answer = '愛知県', category = 'nousuisan', extra_json = '{"crop":"キャベツ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-2';
UPDATE items SET label = '次は、令和5年産の米の収穫量、都道府県別ランキング(上位5位)である。
1位　新潟県(591,700t)
2位　北海道(540,200t)
3位　？(458,200t)
4位　山形県(359,300t)
5位　宮城県(344,700t)
3位に当てはまる都道府県はどこか。', answer = '秋田県', category = 'nousuisan', extra_json = '{"crop":"米","year":"令和5年産(2023年)","source":"農林水産省 水陸稲収穫量","blank_rank":3}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-3';
UPDATE items SET label = '次は、令和5年産のみかん収穫量、都道府県別ランキング(上位5位、全国シェア)である。
1位　？(約25%)
2位　静岡県(約16%)
3位　愛媛県(約14%)
4位　熊本県(約11%)
5位　佐賀県(約5%)
1位に当てはまる都道府県はどこか。', answer = '和歌山県', category = 'nousuisan', extra_json = '{"crop":"みかん","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-4';
UPDATE items SET label = '次は、令和5年産のレタス収穫量、都道府県別ランキング(上位5位)である。
1位　長野県(181,500t)
2位　？(84,000t)
3位　群馬県(58,200t)
4位　長崎県(35,200t)
5位　静岡県(24,700t)
2位に当てはまる都道府県はどこか。', answer = '茨城県', category = 'nousuisan', extra_json = '{"crop":"レタス","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":2}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-5';
UPDATE items SET label = '次は、令和5年の豚の飼育頭数、都道府県別ランキング(上位5位)である。
1位　鹿児島県(1,153,000頭)
2位　宮崎県(818,200頭)
3位　？(759,600頭)
4位　群馬県(593,700頭)
5位　千葉県(588,400頭)
3位に当てはまる都道府県はどこか。', answer = '北海道', category = 'nousuisan', extra_json = '{"crop":"豚(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":3}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-6';
UPDATE items SET label = '次は、令和5年産のりんご収穫量、都道府県別ランキング(上位5位)である。
1位　？(374,400t)
2位　長野県(106,900t)
3位　岩手県(31,600t)
4位　山形県(30,300t)
5位　福島県(18,500t)
1位に当てはまる都道府県はどこか。', answer = '青森県', category = 'nousuisan', extra_json = '{"crop":"りんご","year":"令和5年産(2023年)","source":"農林水産省 果樹生産出荷統計","blank_rank":1}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-7';
UPDATE items SET label = '次は、令和5年の肉用牛飼育頭数、都道府県別ランキング(上位5位)である。
1位　北海道(566,400頭)
2位　？(357,800頭)
3位　宮崎県(260,200頭)
4位　熊本県(139,100頭)
5位　長崎県(91,700頭)
2位に当てはまる都道府県はどこか。', answer = '鹿児島県', category = 'nousuisan', extra_json = '{"crop":"肉用牛(飼育頭数)","year":"令和5年(2023年)","source":"農林水産省 畜産統計","blank_rank":2}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-8';
UPDATE items SET label = '次は、令和5年産のたまねぎ収穫量、都道府県別ランキング(上位5位)である。
1位　北海道(752,500t)
2位　兵庫県(97,800t)
3位　？(97,600t)
4位　長崎県(29,900t)
5位　愛知県(24,300t)
3位に当てはまる都道府県はどこか。', answer = '佐賀県', category = 'nousuisan', extra_json = '{"crop":"たまねぎ","year":"令和5年産(2023年)","source":"農林水産省 野菜生産出荷統計","blank_rank":3}' WHERE quiz_id = 'nihon-chiri' AND item_key = 'nousuisan-9';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀ごろ、女王卑弥呼が治めていたとされる国。魏に使いを送り「親魏倭王」の称号を得た」', answer = '邪馬台国', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'himiko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「604年、役人の心構えを示すために定められたきまり」', answer = '十七条の憲法', category = '古代', extra_json = '{"accept":["十七条憲法"]}' WHERE quiz_id = 'rekishi' AND item_key = 'jushichijo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「603年、家柄によらず能力のある人を役人に取り立てるために定められた制度」', answer = '冠位十二階', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kaniijunikai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「607年、小野妹子らが中国の進んだ制度や文化を学ぶために派遣された使節」', answer = '遣隋使', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kenzuishi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「645年、蘇我氏を倒して始まった、天皇中心の国づくりを目指す政治改革」', answer = '大化の改新', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'taika';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「701年に完成した、律と令からなる国の基本法典」', answer = '大宝律令', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'taihoritsuryo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「710年に奈良につくられた、唐の長安にならった都」', answer = '平城京', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'heijokyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「743年、新しく開墾した土地の永久私有を認めた法。公地公民の原則がくずれるきっかけになった」', answer = '墾田永年私財法', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'konden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「752年に開眼供養が行われた、仏教の力で国を守ろうとしてつくられた大仏」', answer = '東大寺の大仏', category = '古代', extra_json = '{"accept":["大仏","奈良の大仏","盧舎那仏"]}' WHERE quiz_id = 'rekishi' AND item_key = 'todaiji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「794年に京都につくられ、以後約400年にわたって都となった」', answer = '平安京', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'heiankyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「894年、唐のおとろえと航海の危険を理由に取りやめられた」', answer = '遣唐使の停止', category = '古代', extra_json = '{"accept":["遣唐使の廃止","遣唐使廃止","遣唐使停止","遣唐使の中止"]}' WHERE quiz_id = 'rekishi' AND item_key = 'kentoshi-teishi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「藤原氏が娘を天皇のきさきにし、摂政・関白として実権をにぎった政治」', answer = '摂関政治', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sekkan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1053年、藤原頼通が宇治に建てた阿弥陀堂。浄土信仰を代表する建物」', answer = '平等院鳳凰堂', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'byodoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1167年に武士として初めて太政大臣となり、日宋貿易を進めた人物」', answer = '平清盛', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dajodaijin-kiyomori';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1185年、現在の山口県で平氏がほろんだ戦い」', answer = '壇ノ浦の戦い', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dannoura';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1192年に征夷大将軍に任じられ、鎌倉に幕府を開いた人物」', answer = '源頼朝', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'seiitaishogun';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1221年、後鳥羽上皇が幕府をたおそうとして起こしたが敗れた戦い」', answer = '承久の乱', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jokyu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1232年に定められた、武士の慣習をもとにした初めての武家法」', answer = '御成敗式目', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'goseibai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1274年、元と高麗の軍が北九州にせめてきた最初の元寇」', answer = '文永の役', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bunei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1281年、元が再び北九州にせめてきた二度目の元寇」', answer = '弘安の役', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'koan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1334年から始まった、鎌倉幕府をたおした天皇による政治。武士の不満で2年余りで失敗した」', answer = '建武の新政', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kenmu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1338年、足利尊氏が征夷大将軍となって開いた幕府」', answer = '室町幕府', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'muromachi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1404年に始まった明との貿易。倭寇と区別するために合い札を用いた」', answer = '勘合貿易', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kango';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「足利義満が京都の北山に建てた、公家と武家の文化が混じった建物」', answer = '金閣', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kinkaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「足利義政が京都の東山に建てた建物。書院造が用いられている」', answer = '銀閣', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ginkaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1467年から11年続いた戦乱。京都が荒れ、戦国時代が始まるきっかけとなった」', answer = '応仁の乱', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'onin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1543年、種子島に流れ着いたポルトガル人によって伝えられた」', answer = '鉄砲の伝来', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'teppo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1549年、鹿児島に上陸した宣教師によって伝えられた」', answer = 'キリスト教の伝来', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kirisutokyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1560年、織田信長が今川義元を破った戦い」', answer = '桶狭間の戦い', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'okehazama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1575年、織田・徳川の連合軍が鉄砲を大量に使って武田軍を破った戦い」', answer = '長篠の戦い', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nagashino';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1582年、明智光秀にそむかれて織田信長が自害した事件」', answer = '本能寺の変', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'honnoji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「全国の田畑の面積と収穫高を調べ、年貢を確実に取るために行われた土地の調査」', answer = '太閤検地', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kenchi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1588年、百姓から武器を取り上げ、一揆を防ぐために行われた政策」', answer = '刀狩', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'katanagari';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1600年、徳川家康が石田三成らを破り、天下の実権をにぎった戦い」', answer = '関ヶ原の戦い', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sekigahara';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1603年、徳川家康が征夷大将軍となって開いた幕府」', answer = '江戸幕府', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'edobakufu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1615年に定められた、大名を統制するためのきまり」', answer = '武家諸法度', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bukeshohatto';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1635年に制度化された、大名が1年おきに江戸と領地を行き来するきまり」', answer = '参勤交代', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sankinkotai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1637年、重い年貢とキリスト教の弾圧に苦しむ人々が天草四郎を中心に起こした一揆」', answer = '島原・天草一揆', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shimabara';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1641年に完成した、貿易相手と場所を幕府が厳しく制限した体制。長崎の出島でオランダと中国のみ交易した」', answer = '鎖国', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sakoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1716年から始まった改革。目安箱の設置や公事方御定書の制定を行った」', answer = '享保の改革', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kyoho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1787年から行われた改革。ききんに備えて米をたくわえさせ、質素倹約を命じた」', answer = '寛政の改革', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kansei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1841年から行われた改革。株仲間の解散などを命じたが、2年余りで失敗した」', answer = '天保の改革', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tenpo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1853年、4隻の軍艦を率いて浦賀に来航し、日本に開国を求めたアメリカの使節」', answer = 'ペリーの来航', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'perry';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1854年に結ばれ、下田と函館の2港を開いて日本が開国することになった条約」', answer = '日米和親条約', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'washin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1858年に結ばれた、領事裁判権を認め関税自主権がない不平等条約」', answer = '日米修好通商条約', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shukotsusho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1867年、政権を朝廷に返した出来事。江戸幕府が終わった」', answer = '大政奉還', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'taiseihokan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1868年、新政府が示した政治の基本方針」', answer = '五箇条の御誓文', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gokajo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1871年、藩を廃止して県を置き、中央から府知事・県令を派遣した改革」', answer = '廃藩置県', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'haihan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1873年、土地の価格の3%を現金で納めさせるようにした改革。政府の収入を安定させた」', answer = '地租改正', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'chiso';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1889年に発布された、天皇が国を治める仕組みを定めた憲法。ドイツの憲法を参考にした」', answer = '大日本帝国憲法', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kenpo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1894年に始まった清との戦争。勝利して下関条約で遼東半島や台湾を得た」', answer = '日清戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nisshin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1904年に始まったロシアとの戦争。ポーツマス条約で講和したが賠償金は得られなかった」', answer = '日露戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nichiro';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1910年、日本が韓国を植民地とした出来事」', answer = '韓国併合', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kankoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1914年に始まった世界的な戦争。日本は日英同盟を理由に参戦した」', answer = '第一次世界大戦', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'daiichiji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1931年、南満州鉄道の爆破をきっかけに始まった軍事行動。翌年、満州国がつくられた」', answer = '満州事変', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'manshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1937年、北京郊外での衝突をきっかけに始まった中国との戦争」', answer = '日中戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nicchu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1941年、ハワイの真珠湾への攻撃などによって始まった戦争」', answer = '太平洋戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'taiheiyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1945年に受け入れて日本が降伏することになった、連合国からの宣言」', answer = 'ポツダム宣言', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'potsdam';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1946年11月3日に公布され、翌年5月3日に施行された憲法。国民主権・基本的人権の尊重・平和主義を三原則とする」', answer = '日本国憲法', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nihonkoku-kenpo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1951年に48か国と結ばれ、翌年日本が独立を回復した条約」', answer = 'サンフランシスコ平和条約', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sanfrancisco';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1956年、日ソ共同宣言によってソ連の反対がなくなり実現した」', answer = '国際連合への加盟', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokuren';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1964年、アジアで初めて開かれた大会。東海道新幹線の開通など高度経済成長を象徴した」', answer = '東京オリンピック', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tokyo-olympic';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1972年、アメリカの統治下から日本に復帰した出来事」', answer = '沖縄の返還', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'okinawa';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「712年にまとめられた、日本最古の歴史書」', answer = '古事記', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kojiki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「720年にまとめられた、日本の正式な歴史書」', answer = '日本書紀', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nihonshoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代にまとめられた、天皇から農民まで幅広い人々の歌をおさめた歌集」', answer = '万葉集', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'manyoshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「奈良時代、聖武天皇のころに栄えた、遣唐使が伝えた唐の影響が強い国際的な仏教文化」', answer = '天平文化', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tenpyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「東大寺にある倉。遣唐使が持ち帰った西アジアやインドの品もおさめられている」', answer = '正倉院', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shosoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「遣唐使の停止後、かな文字が生まれるなど日本の風土や生活に合った形で栄えた文化」', answer = '国風文化', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokufu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「光源氏を主人公とする、国風文化を代表する長編物語」', answer = '源氏物語', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'genji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「春はあけぼの」で始まる、宮中の生活をつづった随筆」', answer = '枕草子', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'makura';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「紀貫之らが天皇の命令でまとめた、最初の勅撰和歌集」', answer = '古今和歌集', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokinshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「阿弥陀如来にすがって死後に極楽浄土へ生まれ変わることを願う信仰。平等院鳳凰堂はその代表」', answer = '浄土信仰', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jodo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「最澄が唐から伝え、比叡山延暦寺を中心に広まった仏教の宗派」', answer = '天台宗', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'saicho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「空海が唐から伝え、高野山金剛峯寺を中心に広まった仏教の宗派」', answer = '真言宗', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kukai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「何度も渡航に失敗し、失明しながら来日した唐の僧が奈良に建てた寺」', answer = '唐招提寺', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ganjin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉時代に後鳥羽上皇の命令でまとめられた歌集」', answer = '新古今和歌集', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shinkokin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「平氏の栄華と滅亡をえがいた軍記物。琵琶法師によって語り広められた」', answer = '平家物語', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'heike';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「ゆく河の流れは絶えずして」で始まる、鴨長明の随筆」', answer = '方丈記', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'hojoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「つれづれなるままに」で始まる、兼好法師の随筆」', answer = '徒然草', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tsurezure';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「運慶・快慶らがつくった、東大寺南大門に立つ力強い彫刻」', answer = '金剛力士像', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kongorikishi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「南無阿弥陀仏」と念仏を唱えれば救われると説いた、法然が開いた宗派」', answer = '浄土宗', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jodoshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「自分の罪を自覚した悪人こそ救われると説いた、親鸞が開いた宗派」', answer = '浄土真宗', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jodoshinshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「南無妙法蓮華経」と題目を唱えることを説いた宗派」', answer = '日蓮宗', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nichirenshu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「座禅によってさとりを開こうとする仏教。武士の気風に合い広まった」', answer = '禅宗', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'zen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「足利義満の保護を受けた観阿弥・世阿弥の父子が大成した舞台芸能」', answer = '能', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'noh';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「墨の濃淡だけで自然をえがく絵画。室町時代に雪舟が日本独自の様式を完成させた」', answer = '水墨画', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'suibokuga';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「床の間や畳、障子を用いた住宅の様式。銀閣の東求堂に代表され、今の和室のもとになった」', answer = '書院造', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「安土桃山時代の、大名や大商人の富を反映した豪華で雄大な文化」', answer = '桃山文化', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'momoyama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「簡素さの中に美を見いだす茶の湯。千利休が大成した」', answer = 'わび茶', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'wabicha';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「17世紀末から18世紀初め、上方(京都・大阪)の町人を担い手として栄えた文化」', answer = '元禄文化', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'genroku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町人の暮らしや欲望をありのままにえがいた小説。井原西鶴が代表」', answer = '浮世草子', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ukiyozoshi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「五・七・五の形式の文芸。松尾芭蕉が芸術性を高めた」', answer = '俳諧', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'haikai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「人形をあやつって物語を演じる芸能。近松門左衛門が脚本を書いた」', answer = '人形浄瑠璃', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'joruri';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「19世紀初め、江戸の町人を中心に栄えた、しゃれや皮肉を好む文化」', answer = '化政文化', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kasei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町人の風俗をえがいた絵。木版画として大量に刷られ、庶民にも広まった」', answer = '浮世絵', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ukiyoe';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「葛飾北斎がえがいた、さまざまな場所からの富士山の風景画集」', answer = '富嶽三十六景', category = '近世', extra_json = '{"accept":["富岳三十六景"]}' WHERE quiz_id = 'rekishi' AND item_key = 'hokusai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「歌川広重がえがいた、江戸から京都までの宿場の風景画集」', answer = '東海道五十三次', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'hiroshige';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「オランダ語を通じてヨーロッパの学問や技術を学ぶ学問」', answer = '蘭学', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'rangaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1774年、オランダ語の人体解剖書を翻訳して出版された医学書」', answer = '解体新書', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kaitai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「仏教や儒教が伝わる前の、日本古来の考え方を明らかにしようとする学問」', answer = '国学', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokugaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「全国を測量してつくられた、日本で初めての正確な日本地図。1821年に完成した」', answer = '大日本沿海輿地全図', category = '近世', extra_json = '{"accept":["伊能図"]}' WHERE quiz_id = 'rekishi' AND item_key = 'inou';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「町や村につくられ、庶民の子どもに読み・書き・そろばんを教えた場」', answer = '寺子屋', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'terakoya';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「明治初め、欧米の文化がさかんに取り入れられ、都市の生活が大きく変わったこと」', answer = '文明開化', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bunmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1872年に公布された、6歳以上の男女すべてを小学校に通わせることを目指した制度」', answer = '学制', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gakusei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「「天は人の上に人を造らず」で始まる、人間の平等と学問の大切さを説いた書物」', answer = '学問のすゝめ', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gakumon';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「国民が政治に参加する権利を求め、国会の開設を要求した運動」', answer = '自由民権運動', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jiyuminken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1874年に政府に提出され、自由民権運動の出発点となった意見書」', answer = '民撰議院設立の建白書', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kenpakusho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1882年に大隈重信がつくった、イギリス流の議会政治を目指した政党」', answer = '立憲改進党', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kaishinto';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1890年に初めて開かれた議会。衆議院と貴族院の二院制だった」', answer = '帝国議会', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'teikokugikai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1894年、外務大臣がイギリスとの条約改正で実現した。不平等条約の改正が大きく前進した」', answer = '領事裁判権の撤廃', category = '近代', extra_json = '{"accept":["治外法権の撤廃","治外法権撤廃","領事裁判権撤廃","領事裁判権の廃止","治外法権の廃止"]}' WHERE quiz_id = 'rekishi' AND item_key = 'ryojisaibanken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1911年、外務大臣が実現し、条約改正が完全に達成された」', answer = '関税自主権の回復', category = '近代', extra_json = '{"accept":["関税自主権回復","関税自主権の完全回復"]}' WHERE quiz_id = 'rekishi' AND item_key = 'kanzei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「日清戦争の賠償金をもとに建設され、1901年に操業を始めた官営の製鉄所」', answer = '八幡製鉄所', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'yahata';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1950年代後半から1973年ごろまで続いた、経済が急速に成長した時期」', answer = '高度経済成長', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kodo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「6歳以上の男女に口分田を与え、死んだら国に返させた土地の制度」', answer = '班田収授法', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'handen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「班田収授法によって人々に分け与えられた土地」', answer = '口分田', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kubunden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、収穫した稲の約3%を納めるもの」', answer = '租', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'so';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、絹や糸、地方の特産物を都に納めるもの」', answer = '調', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'cho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制の税のうち、都での労役の代わりに布を納めるもの」', answer = '庸', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'yo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「律令制のもとで、九州北部の防備にあたらされた兵士」', answer = '防人', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sakimori';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地方の国を治めるために、中央から派遣された役人」', answer = '国司', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokushi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「貴族や寺社が支配した私有地。公地公民の原則がくずれて広がった」', answer = '荘園', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shoen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「源頼朝が国ごとに置いた、軍事・警察の仕事をする役職」', answer = '守護', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shugo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「源頼朝が荘園や公領ごとに置いた、年貢の取り立てなどをする役職」', answer = '地頭', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jito';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎌倉幕府で将軍を補佐した職。北条氏が代々受けついだ」', answer = '執権', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shikken';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「将軍が御家人に領地を保障し、御家人は戦いで将軍に忠誠をつくすという主従関係」', answer = '御恩と奉公', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'goonhoko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「将軍と主従関係を結んだ武士」', answer = '御家人', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gokenin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が寄合を開いて村のきまりを定めた自治組織」', answer = '惣', category = '中世', extra_json = '{"accept":["惣村"]}' WHERE quiz_id = 'rekishi' AND item_key = 'so-mura';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「商人や職人が同業者でつくり、貴族や寺社に税を納めて営業を独占した組合」', answer = '座', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'za';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「室町時代、農民が借金の帳消し(徳政)を求めて起こした一揆」', answer = '土一揆', category = '中世', extra_json = '{"accept":["徳政一揆"]}' WHERE quiz_id = 'rekishi' AND item_key = 'tsuchiikki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地位の低い者が実力で上の者をたおす風潮。戦国時代の特徴」', answer = '下剋上', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gekokujo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦国大名が領国を治めるために独自に定めたきまり」', answer = '分国法', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bunkokuho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「織田信長が城下町で行った、市の税を免除し座の特権を廃止した政策」', answer = '楽市・楽座', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'rakuichi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「検地と刀狩によって、武士と農民の身分がはっきり分けられたこと」', answer = '兵農分離', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'heino';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「近くの5戸ほどを組にして、年貢の納入や犯罪の防止に連帯責任を負わせた仕組み」', answer = '五人組', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'goningumi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「関ヶ原の戦いのころから徳川氏に従った大名。江戸から遠い地に配置された」', answer = '外様大名', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tozama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「鎖国中、オランダとの貿易のために長崎につくられた扇形の人工島」', answer = '出島', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dejima';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「江戸時代初め、幕府の許可状を得た船が東南アジアと行った貿易」', answer = '朱印船貿易', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shuinsen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「諸藩が年貢米や特産物を売りさばくために大阪などに置いた倉庫」', answer = '蔵屋敷', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kurayashiki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「幕府や藩に公認され、営業を独占した商工業者の同業組合」', answer = '株仲間', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kabunakama';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「ききんや物価の上昇に苦しむ都市の民衆が、米屋などをおそった行動」', answer = '打ちこわし', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'uchikowashi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「欧米に追いつくため、経済を発展させ軍隊を強くしようとした明治政府の目標」', answer = '富国強兵', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'fukoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「官営工場をつくるなどして、近代的な産業を育てようとした明治政府の政策」', answer = '殖産興業', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shokusan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1869年、大名が治めていた土地と人民を天皇に返させた政策」', answer = '版籍奉還', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'hanseki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1873年、満20歳以上の男子に兵役の義務を課した法令」', answer = '徴兵令', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'chohei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「殖産興業のため群馬県につくられた、フランスの技術を取り入れた官営の製糸工場」', answer = '富岡製糸場', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tomioka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1877年、政府に不満をもつ鹿児島の士族が起こした、最大で最後の士族の反乱」', answer = '西南戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'seinan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1895年に結ばれた日清戦争の講和条約。遼東半島や台湾を得た」', answer = '下関条約', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shimonoseki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1895年、ロシア・フランス・ドイツが遼東半島の返還を日本にせまった出来事」', answer = '三国干渉', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sangoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1905年に結ばれた日露戦争の講和条約。賠償金が得られず国内で不満が高まった」', answer = 'ポーツマス条約', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'portsmouth';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「14世紀のイタリアから始まった、古代ギリシャ・ローマの文化を見直す動き」', answer = 'ルネサンス', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'renaissance';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「16世紀、免罪符を売る教会を批判してルターらが始めた改革」', answer = '宗教改革', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shukyokaikaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1492年、スペインの援助を受けて大西洋を横断し、アメリカ大陸付近に到達した人物」', answer = 'コロンブス', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'columbus';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「その船隊が初めて世界一周を成しとげた人物」', answer = 'マゼラン', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'magellan';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1688年、イギリスで血を流さずに国王を交代させた革命。翌年に権利章典が定められた」', answer = '名誉革命', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'meiyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1776年、イギリスからの独立にあたって出された、自由と平等をうたった宣言」', answer = 'アメリカ独立宣言', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dokuritsu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1789年に始まり、自由・平等・国民主権をうたう人権宣言が出された革命」', answer = 'フランス革命', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'furansu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀のイギリスで始まった、機械の発明と工場制生産による社会の大きな変化」', answer = '産業革命', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sangyokakumei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1840年に始まったイギリスと清の戦争。清が敗れ、日本の対外政策にも影響した」', answer = 'アヘン戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ahen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1861年に始まったアメリカの内戦。奴隷制をめぐって国内が二分された」', answer = '南北戦争', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nanboku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1911年に起こり、清をたおして翌年に中華民国が成立した革命」', answer = '辛亥革命', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shingai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1917年に起こり、世界で初めての社会主義国が生まれるきっかけとなった革命」', answer = 'ロシア革命', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'roshia';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1920年、第一次世界大戦の反省から世界平和のためにつくられた国際組織」', answer = '国際連盟', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kokusairenmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1939年、ドイツのポーランド侵攻によって始まった世界的な戦争」', answer = '第二次世界大戦', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dainiji';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、地主の土地を政府が買い上げて小作人に安く売りわたし、自作農を増やした改革」', answer = '農地改革', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nochikaikaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、経済を支配していた大きな企業グループを解散させた改革」', answer = '財閥解体', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'zaibatsu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「戦後、アメリカを中心とする西側とソ連を中心とする東側が直接戦火を交えずに対立した状態」', answer = '冷戦', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'reisen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1950年に始まった戦争。日本は物資の生産で好景気となった」', answer = '朝鮮戦争', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'chosen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1956年、ソ連との国交が回復し、日本の国際連合加盟が実現するきっかけとなった宣言」', answer = '日ソ共同宣言', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nisso';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1973年、中東の戦争をきっかけに石油価格が急上昇し、高度経済成長が終わった出来事」', answer = '石油危機', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sekiyu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄目の文様がつけられた、厚手で黒っぽい土器」', answer = '縄文土器', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jomondoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「地面を掘り下げ、柱を立てて屋根をかけた住まい」', answer = '竪穴住居', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tateana';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「当時の人々が食べた貝がらや魚の骨などを捨てた場所。当時の生活を知る手がかりになる」', answer = '貝塚', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kaizuka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄文時代につくられた土製の人形。豊かな実りや安産を祈るまじないに使われたと考えられている」', answer = '土偶', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'dogu';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「青森県にある、大規模な集落の跡が見つかった縄文時代の遺跡」', answer = '三内丸山遺跡', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sannai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「縄文土器より薄手でかたく、かざりの少ない赤褐色の土器」', answer = '弥生土器', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'yayoidoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大陸から九州北部に伝わり、弥生時代に各地へ広まった農業」', answer = '稲作', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'inasaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「収穫した米をねずみや湿気から守るため、床を高くしてつくられた倉」', answer = '高床倉庫', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'takayuka';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「静岡県にある、水田の跡が見つかった弥生時代の遺跡」', answer = '登呂遺跡', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'toro';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「佐賀県にある、まわりを濠やさくで囲んだ弥生時代の大規模な集落跡」', answer = '吉野ヶ里遺跡', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'yoshinogari';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「銅鐸や銅剣など、主に祭りの道具として使われた金属器」', answer = '青銅器', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'seidoki';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀後半から各地につくられた、王や豪族の大きな墓」', answer = '古墳', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kofun';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「円形と四角形を組み合わせた、かぎ穴のような形をした古墳」', answer = '前方後円墳', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'zenpokoen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大阪府堺市にある日本最大の前方後円墳。仁徳天皇の墓と伝えられる」', answer = '大仙古墳', category = '原始', extra_json = '{"accept":["大仙陵古墳","仁徳天皇陵古墳","仁徳天皇陵","大山古墳"]}' WHERE quiz_id = 'rekishi' AND item_key = 'daisen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「古墳の上や周りに並べられた素焼きの土製品。人や馬、家などの形がある」', answer = '埴輪', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'haniwa';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「3世紀後半ごろ、奈良盆地を中心とする豪族たちが大王を中心につくった連合政権」', answer = '大和政権', category = '原始', extra_json = '{"accept":["大和朝廷","ヤマト政権","ヤマト王権","大和王権"]}' WHERE quiz_id = 'rekishi' AND item_key = 'yamato';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮半島などから日本に移り住み、須恵器や機織り、漢字・儒教を伝えた人々」', answer = '渡来人', category = '原始', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'toraijin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「672年、天智天皇のあとつぎをめぐって起こった争い。勝った大海人皇子が天武天皇となった」', answer = '壬申の乱', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'jinshin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「694年、奈良盆地南部につくられた、日本で初めての本格的な都」', answer = '藤原京', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'fujiwarakyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1086年、白河上皇が始めた、天皇の位をゆずったあとも上皇として政治を動かす仕組み」', answer = '院政', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'insei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「10世紀に関東で起こった反乱。武士の力が認められるきっかけとなった」', answer = '平将門の乱', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'masakado';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1156年、天皇と上皇の対立に武士が動員された戦い。武士の力が中央に示された」', answer = '保元の乱', category = '古代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'hogen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「同じ田畑で1年に2種類の作物を作ること。鎌倉時代に西日本で広まった」', answer = '二毛作', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nimosaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「寺社の門前や交通の要地で、月に数回開かれた市」', answer = '定期市', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'teikiichi';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「馬を使って物資を運んだ運送業者。土一揆の中心になることもあった」', answer = '馬借', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bashaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「朝鮮半島や中国の沿岸をおそった海賊。勘合貿易ではこれと区別するため合い札を用いた」', answer = '倭寇', category = '中世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'wako';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「徳川綱吉が出した、犬をはじめ生き物を大切にすることを命じた極端な法令」', answer = '生類憐みの令', category = '近世', extra_json = '{"accept":["生類憐れみの令","生類あわれみの令"]}' WHERE quiz_id = 'rekishi' AND item_key = 'shorui';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀後半、株仲間を奨励し商人の力を利用して幕府の財政を立て直そうとした老中」', answer = '田沼意次', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tanuma';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1837年、ききんに苦しむ人々を救おうと、もと幕府の役人が大阪で起こした反乱」', answer = '大塩平八郎の乱', category = '近世', extra_json = '{"accept":["大塩の乱"]}' WHERE quiz_id = 'rekishi' AND item_key = 'oshio';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1825年、日本に近づく外国船を追い払うことを命じた幕府の法令」', answer = '異国船打払令', category = '近世', extra_json = '{"accept":["外国船打払令","無二念打払令"]}' WHERE quiz_id = 'rekishi' AND item_key = 'uchiharai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「年貢を増やすため、湿地や海辺を干拓するなどして新しい田を開いたこと」', answer = '新田開発', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shinden';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「作業場に人を集め、分業によって製品をつくる仕組み。マニュファクチュアともいう」', answer = '工場制手工業', category = '近世', extra_json = '{"accept":["マニュファクチュア"]}' WHERE quiz_id = 'rekishi' AND item_key = 'manufacture';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「江戸の日本橋を起点として整備された、東海道・中山道など5つの主要道路」', answer = '五街道', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gonin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「18世紀後半、冷害や浅間山の噴火によって起こった大ききん。打ちこわしが各地で起きた」', answer = '天明のききん', category = '近世', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'tenmei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1902年、ロシアの南下に対抗するためイギリスと結んだ同盟」', answer = '日英同盟', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nichiei';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1918年、米の値上がりに対して富山県から全国に広がった民衆の運動」', answer = '米騒動', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kome';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1918年、原敬が首相となって成立した、日本で初めての本格的なもの」', answer = '政党内閣', category = '近代', extra_json = '{"accept":["本格的な政党内閣","原敬内閣"]}' WHERE quiz_id = 'rekishi' AND item_key = 'seitonaikaku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「大正時代に高まった、民主主義を求める風潮」', answer = '大正デモクラシー', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'taisho';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1925年に成立し、満25歳以上のすべての男子に選挙権が認められた法律」', answer = '普通選挙法', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'futsusenkyo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1925年、共産主義などの運動を取りしまるために定められた法律」', answer = '治安維持法', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'chian';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1923年、東京や横浜に大きな被害をもたらした地震災害」', answer = '関東大震災', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kanto-daishinsai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1929年、アメリカの株価暴落をきっかけに世界中に広がった不景気」', answer = '世界恐慌', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sekaikyoko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1932年、満州事変のあとに日本が中国東北部につくった国」', answer = '満州国', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'manshukoku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1933年、満州国を認められなかった日本が通告した」', answer = '国際連盟からの脱退', category = '近代', extra_json = '{"accept":["国際連盟脱退","連盟脱退"]}' WHERE quiz_id = 'rekishi' AND item_key = 'renmei-dattai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1932年、海軍の青年将校らが首相を暗殺した事件。政党内閣が終わるきっかけとなった」', answer = '五・一五事件', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'goichigo';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1936年、陸軍の青年将校らが大臣らを殺傷して東京の中心部を占拠した事件」', answer = '二・二六事件', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'ninirooku';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1938年、戦争のために国民や物資を政府が自由に動かせるようにした法律」', answer = '国家総動員法', category = '近代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'sodoin';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1955年から約38年間続いた、自由民主党が与党であり続けた政治体制」', answer = '55年体制', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'gojugonen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「高度経済成長のひずみとして起こった、水俣病・新潟水俣病・イタイイタイ病・四日市ぜんそく」', answer = '四大公害病', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'kogai';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1964年、東京オリンピックに合わせて開通した高速鉄道」', answer = '東海道新幹線', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'shinkansen';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1972年、日中共同声明によって中国との国交が結ばれたこと」', answer = '日中国交正常化', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'nicchu-kokko';
UPDATE items SET label = '次の説明にあてはまる語句を答えなさい。
「1980年代後半、土地や株の価格が実態をこえて上がり続けた好景気」', answer = 'バブル経済', category = '現代', extra_json = NULL WHERE quiz_id = 'rekishi' AND item_key = 'bubble';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「現存する世界最古の木造建築群として知られる仏教寺院」', answer = '法隆寺地域の仏教建造物', category = '文化遺産', extra_json = '{"year":1993}' WHERE quiz_id = 'sekai-isan' AND item_key = '法隆寺地域の仏教建造物';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「白鷺城とも呼ばれる、白い外観が美しい天守を持つ城」', answer = '姫路城', category = '文化遺産', extra_json = '{"year":1993}' WHERE quiz_id = 'sekai-isan' AND item_key = '姫路城';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「清水寺や金閣寺など、古い都に残る社寺・城の総称」', answer = '古都京都の文化財', category = '文化遺産', extra_json = '{"year":1994}' WHERE quiz_id = 'sekai-isan' AND item_key = '古都京都の文化財';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「急な茅葺き屋根が特徴的な、豪雪地帯の伝統的な家屋群」', answer = '白川郷・五箇山の合掌造り集落', category = '文化遺産', extra_json = '{"year":1995}' WHERE quiz_id = 'sekai-isan' AND item_key = '白川郷・五箇山の合掌造り集落';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「原子爆弾の惨禍を伝える、骨組みだけが残された建物」', answer = '原爆ドーム', category = '文化遺産', extra_json = '{"year":1996}' WHERE quiz_id = 'sekai-isan' AND item_key = '原爆ドーム';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「海上に立つ朱色の大鳥居で知られる神社」', answer = '厳島神社', category = '文化遺産', extra_json = '{"year":1996}' WHERE quiz_id = 'sekai-isan' AND item_key = '厳島神社';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「東大寺や興福寺など、かつての都に残る寺社群」', answer = '古都奈良の文化財', category = '文化遺産', extra_json = '{"year":1998}' WHERE quiz_id = 'sekai-isan' AND item_key = '古都奈良の文化財';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「「見ざる言わざる聞かざる」の彫刻で知られる東照宮を含む社寺群」', answer = '日光の社寺', category = '文化遺産', extra_json = '{"year":1999}' WHERE quiz_id = 'sekai-isan' AND item_key = '日光の社寺';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「首里城跡を中心とする、かつての王国の城・聖地群」', answer = '琉球王国のグスク及び関連遺産群', category = '文化遺産', extra_json = '{"year":2000}' WHERE quiz_id = 'sekai-isan' AND item_key = '琉球王国のグスク及び関連遺産群';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「熊野古道など、山岳信仰の霊場と参詣道からなる遺産」', answer = '紀伊山地の霊場と参詣道', category = '文化遺産', extra_json = '{"year":2004}' WHERE quiz_id = 'sekai-isan' AND item_key = '紀伊山地の霊場と参詣道';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「かつて世界有数の産出量を誇った、銀の採掘・精錬の遺跡」', answer = '石見銀山遺跡とその文化的景観', category = '文化遺産', extra_json = '{"year":2007}' WHERE quiz_id = 'sekai-isan' AND item_key = '石見銀山遺跡とその文化的景観';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「中尊寺金色堂など、浄土思想を表す寺院・庭園群」', answer = '平泉', category = '文化遺産', extra_json = '{"year":2011}' WHERE quiz_id = 'sekai-isan' AND item_key = '平泉';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「信仰の対象であり、多くの芸術作品の題材となった日本一の山」', answer = '富士山', category = '文化遺産', extra_json = '{"year":2013}' WHERE quiz_id = 'sekai-isan' AND item_key = '富士山';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「明治時代に建てられた、日本の近代製糸業を支えた工場」', answer = '富岡製糸場と絹産業遺産群', category = '文化遺産', extra_json = '{"year":2014}' WHERE quiz_id = 'sekai-isan' AND item_key = '富岡製糸場と絹産業遺産群';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「製鉄・製鋼、造船、石炭産業に関する、幕末から明治期の産業施設群」', answer = '明治日本の産業革命遺産', category = '文化遺産', extra_json = '{"year":2015}' WHERE quiz_id = 'sekai-isan' AND item_key = '明治日本の産業革命遺産';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「フランス人建築家が設計した、上野にある美術館を含む国際的な建築群」', answer = 'ル・コルビュジエの建築作品', category = '文化遺産', extra_json = '{"year":2016,"accept":["国立西洋美術館"]}' WHERE quiz_id = 'sekai-isan' AND item_key = 'ル・コルビュジエの建築作品';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産」', answer = '「神宿る島」宗像・沖ノ島と関連遺産群', category = '文化遺産', extra_json = '{"year":2017,"accept":["宗像・沖ノ島","神宿る島 宗像・沖ノ島と関連遺産群"]}' WHERE quiz_id = 'sekai-isan' AND item_key = '「神宿る島」宗像・沖ノ島と関連遺産群';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「禁教期にひそかに信仰を続けた人々に関わる教会・集落群」', answer = '長崎と天草地方の潜伏キリシタン関連遺産', category = '文化遺産', extra_json = '{"year":2018}' WHERE quiz_id = 'sekai-isan' AND item_key = '長崎と天草地方の潜伏キリシタン関連遺産';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「仁徳天皇陵古墳を含む、日本最大級の前方後円墳が集まる古墳群」', answer = '百舌鳥・古市古墳群', category = '文化遺産', extra_json = '{"year":2019}' WHERE quiz_id = 'sekai-isan' AND item_key = '百舌鳥・古市古墳群';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「三内丸山遺跡など、狩猟採集による定住生活を示す縄文時代の遺跡群」', answer = '北海道・北東北の縄文遺跡群', category = '文化遺産', extra_json = '{"year":2021}' WHERE quiz_id = 'sekai-isan' AND item_key = '北海道・北東北の縄文遺跡群';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「江戸時代に日本最大の産出量を誇った、手作業による採掘技術が評価された金山」', answer = '佐渡島の金山', category = '文化遺産', extra_json = '{"year":2024}' WHERE quiz_id = 'sekai-isan' AND item_key = '佐渡島の金山';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「樹齢数千年ともいわれる屋久杉で知られる、亜熱帯から亜寒帯までの植生が分布する島」', answer = '屋久島', category = '自然遺産', extra_json = '{"year":1993}' WHERE quiz_id = 'sekai-isan' AND item_key = '屋久島';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「世界最大級のブナの原生林が広がる山地」', answer = '白神山地', category = '自然遺産', extra_json = '{"year":1993}' WHERE quiz_id = 'sekai-isan' AND item_key = '白神山地';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「流氷が育む豊かな生態系と、ヒグマなど野生動物の宝庫として知られる半島」', answer = '知床', category = '自然遺産', extra_json = '{"year":2005}' WHERE quiz_id = 'sekai-isan' AND item_key = '知床';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「独自の進化を遂げた生物が多く、「東洋のガラパゴス」とも呼ばれる諸島」', answer = '小笠原諸島', category = '自然遺産', extra_json = '{"year":2011}' WHERE quiz_id = 'sekai-isan' AND item_key = '小笠原諸島';
UPDATE items SET label = '次の説明にあてはまる世界遺産は？
「アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々」', answer = '奄美大島、徳之島、沖縄島北部及び西表島', category = '自然遺産', extra_json = '{"year":2021,"accept":["奄美・沖縄","奄美大島と沖縄島","奄美大島"]}' WHERE quiz_id = 'sekai-isan' AND item_key = '奄美大島、徳之島、沖縄島北部及び西表島';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '北海道', category = 'hokkaido', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '1';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '青森県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '2';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '岩手県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '3';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '宮城県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '4';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '秋田県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '5';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '山形県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '6';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '福島県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '7';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '茨城県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '8';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '栃木県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '9';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '群馬県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '10';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '埼玉県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '11';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '千葉県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '12';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '東京都', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '13';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '神奈川県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '14';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '新潟県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '15';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '富山県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '16';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '石川県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '17';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '福井県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '18';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '山梨県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '19';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '長野県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '20';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '岐阜県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '21';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '静岡県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '22';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '愛知県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '23';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '三重県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '24';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '滋賀県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '25';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '京都府', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '26';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '大阪府', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '27';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '兵庫県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '28';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '奈良県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '29';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '和歌山県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '30';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '鳥取県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '31';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '島根県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '32';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '岡山県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '33';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '広島県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '34';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '山口県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '35';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '徳島県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '36';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '香川県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '37';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '愛媛県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '38';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '高知県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '39';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '福岡県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '40';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '佐賀県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '41';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '長崎県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '42';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '熊本県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '43';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '大分県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '44';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '宮崎県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '45';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '鹿児島県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '46';
UPDATE items SET label = '次の地図で色がついている都道府県はどこか。', answer = '沖縄県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken-chizu' AND item_key = '47';
UPDATE items SET label = '北海道', answer = '北海道', category = 'hokkaido', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '1';
UPDATE items SET label = '青森県', answer = '青森県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '2';
UPDATE items SET label = '岩手県', answer = '岩手県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '3';
UPDATE items SET label = '宮城県', answer = '宮城県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '4';
UPDATE items SET label = '秋田県', answer = '秋田県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '5';
UPDATE items SET label = '山形県', answer = '山形県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '6';
UPDATE items SET label = '福島県', answer = '福島県', category = 'tohoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '7';
UPDATE items SET label = '茨城県', answer = '茨城県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '8';
UPDATE items SET label = '栃木県', answer = '栃木県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '9';
UPDATE items SET label = '群馬県', answer = '群馬県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '10';
UPDATE items SET label = '埼玉県', answer = '埼玉県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '11';
UPDATE items SET label = '千葉県', answer = '千葉県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '12';
UPDATE items SET label = '東京都', answer = '東京都', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '13';
UPDATE items SET label = '神奈川県', answer = '神奈川県', category = 'kanto', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '14';
UPDATE items SET label = '新潟県', answer = '新潟県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '15';
UPDATE items SET label = '富山県', answer = '富山県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '16';
UPDATE items SET label = '石川県', answer = '石川県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '17';
UPDATE items SET label = '福井県', answer = '福井県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '18';
UPDATE items SET label = '山梨県', answer = '山梨県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '19';
UPDATE items SET label = '長野県', answer = '長野県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '20';
UPDATE items SET label = '岐阜県', answer = '岐阜県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '21';
UPDATE items SET label = '静岡県', answer = '静岡県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '22';
UPDATE items SET label = '愛知県', answer = '愛知県', category = 'chubu', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '23';
UPDATE items SET label = '三重県', answer = '三重県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '24';
UPDATE items SET label = '滋賀県', answer = '滋賀県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '25';
UPDATE items SET label = '京都府', answer = '京都府', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '26';
UPDATE items SET label = '大阪府', answer = '大阪府', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '27';
UPDATE items SET label = '兵庫県', answer = '兵庫県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '28';
UPDATE items SET label = '奈良県', answer = '奈良県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '29';
UPDATE items SET label = '和歌山県', answer = '和歌山県', category = 'kinki', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '30';
UPDATE items SET label = '鳥取県', answer = '鳥取県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '31';
UPDATE items SET label = '島根県', answer = '島根県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '32';
UPDATE items SET label = '岡山県', answer = '岡山県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '33';
UPDATE items SET label = '広島県', answer = '広島県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '34';
UPDATE items SET label = '山口県', answer = '山口県', category = 'chugoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '35';
UPDATE items SET label = '徳島県', answer = '徳島県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '36';
UPDATE items SET label = '香川県', answer = '香川県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '37';
UPDATE items SET label = '愛媛県', answer = '愛媛県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '38';
UPDATE items SET label = '高知県', answer = '高知県', category = 'shikoku', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '39';
UPDATE items SET label = '福岡県', answer = '福岡県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '40';
UPDATE items SET label = '佐賀県', answer = '佐賀県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '41';
UPDATE items SET label = '長崎県', answer = '長崎県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '42';
UPDATE items SET label = '熊本県', answer = '熊本県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '43';
UPDATE items SET label = '大分県', answer = '大分県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '44';
UPDATE items SET label = '宮崎県', answer = '宮崎県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '45';
UPDATE items SET label = '鹿児島県', answer = '鹿児島県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '46';
UPDATE items SET label = '沖縄県', answer = '沖縄県', category = 'kyushu-okinawa', extra_json = NULL WHERE quiz_id = 'todofuken' AND item_key = '47';

-- 分割で増えた 218 件
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'himiko-person', '次の説明にあてはまる人物はだれか。
「魏に使いを送り、「親魏倭王」の称号と金印を授けられた」', '卑弥呼', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jushichijo-year', '「十七条の憲法」は西暦何年のことか。数字で答えなさい。', '604', '古代', '{"accept":["604年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jushichijo-person', '次の説明にあてはまる人物はだれか。
「十七条の憲法や冠位十二階を定め、天皇中心の政治を目指した」', '聖徳太子', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaniijunikai-year', '「冠位十二階」は西暦何年のことか。数字で答えなさい。', '603', '古代', '{"accept":["603年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenzuishi-year', '「遣隋使」は西暦何年のことか。数字で答えなさい。', '607', '古代', '{"accept":["607年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenzuishi-person', '次の説明にあてはまる人物はだれか。
「607年、遣隋使として隋にわたった」', '小野妹子', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taika-year', '「大化の改新」は西暦何年のことか。数字で答えなさい。', '645', '古代', '{"accept":["645年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taika-person', '次の説明にあてはまる人物はだれか。
「中臣鎌足とともに蘇我氏を倒し、大化の改新を進めた」', '中大兄皇子', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taihoritsuryo-year', '「大宝律令」は西暦何年のことか。数字で答えなさい。', '701', '古代', '{"accept":["701年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heijokyo-year', '「平城京」は西暦何年のことか。数字で答えなさい。', '710', '古代', '{"accept":["710年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'konden-year', '「墾田永年私財法」は西暦何年のことか。数字で答えなさい。', '743', '古代', '{"accept":["743年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'todaiji-year', '「東大寺の大仏」は西暦何年のことか。数字で答えなさい。', '752', '古代', '{"accept":["752年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'todaiji-person', '次の説明にあてはまる人物はだれか。
「仏教の力で国を守ろうと、国分寺と東大寺の大仏をつくらせた」', '聖武天皇', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'heiankyo-year', '「平安京」は西暦何年のことか。数字で答えなさい。', '794', '古代', '{"accept":["794年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kentoshi-teishi-year', '「遣唐使の停止」は西暦何年のことか。数字で答えなさい。', '894', '古代', '{"accept":["894年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kentoshi-teishi-person', '次の説明にあてはまる人物はだれか。
「894年、遣唐使の停止を提案した」', '菅原道真', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekkan-person', '次の説明にあてはまる人物はだれか。
「4人の娘を天皇のきさきにし、摂関政治の全盛期を築いた」', '藤原道長', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'byodoin-year', '「平等院鳳凰堂」は西暦何年のことか。数字で答えなさい。', '1053', '古代', '{"accept":["1053年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'byodoin-person', '次の説明にあてはまる人物はだれか。
「宇治に平等院鳳凰堂を建てた」', '藤原頼通', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dajodaijin-kiyomori-person', '次の説明にあてはまる人物はだれか。
「武士として初めて太政大臣となり、兵庫の港を整えて日宋貿易を行った」', '平清盛', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dannoura-year', '「壇ノ浦の戦い」は西暦何年のことか。数字で答えなさい。', '1185', '中世', '{"accept":["1185年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seiitaishogun-person', '次の説明にあてはまる人物はだれか。
「守護・地頭を置き、鎌倉に幕府を開いた」', '源頼朝', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jokyu-year', '「承久の乱」は西暦何年のことか。数字で答えなさい。', '1221', '中世', '{"accept":["1221年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goseibai-year', '「御成敗式目」は西暦何年のことか。数字で答えなさい。', '1232', '中世', '{"accept":["1232年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goseibai-person', '次の説明にあてはまる人物はだれか。
「執権として御成敗式目を定めた」', '北条泰時', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bunei-year', '「文永の役」は西暦何年のことか。数字で答えなさい。', '1274', '中世', '{"accept":["1274年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'koan-year', '「弘安の役」は西暦何年のことか。数字で答えなさい。', '1281', '中世', '{"accept":["1281年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'koan-person', '次の説明にあてはまる人物はだれか。
「執権として二度の元寇を退けた」', '北条時宗', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenmu-year', '「建武の新政」は西暦何年のことか。数字で答えなさい。', '1334', '中世', '{"accept":["1334年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenmu-person', '次の説明にあてはまる人物はだれか。
「鎌倉幕府をたおし、建武の新政を行った」', '後醍醐天皇', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'muromachi-year', '「室町幕府」は西暦何年のことか。数字で答えなさい。', '1338', '中世', '{"accept":["1338年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'muromachi-person', '次の説明にあてはまる人物はだれか。
「征夷大将軍となり、京都に室町幕府を開いた」', '足利尊氏', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kango-year', '「勘合貿易」は西暦何年のことか。数字で答えなさい。', '1404', '中世', '{"accept":["1404年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kango-person', '次の説明にあてはまる人物はだれか。
「南北朝を統一し、明と勘合貿易を始めた。金閣を建てた」', '足利義満', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ginkaku-person', '次の説明にあてはまる人物はだれか。
「東山に銀閣を建てた。その後継ぎ争いが応仁の乱の原因となった」', '足利義政', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'onin-year', '「応仁の乱」は西暦何年のことか。数字で答えなさい。', '1467', '中世', '{"accept":["1467年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teppo-year', '「鉄砲の伝来」は西暦何年のことか。数字で答えなさい。', '1543', '中世', '{"accept":["1543年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kirisutokyo-year', '「キリスト教の伝来」は西暦何年のことか。数字で答えなさい。', '1549', '中世', '{"accept":["1549年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kirisutokyo-person', '次の説明にあてはまる人物はだれか。
「1549年に鹿児島に来て、日本にキリスト教を伝えた」', 'フランシスコ・ザビエル', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okehazama-year', '「桶狭間の戦い」は西暦何年のことか。数字で答えなさい。', '1560', '近世', '{"accept":["1560年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nagashino-year', '「長篠の戦い」は西暦何年のことか。数字で答えなさい。', '1575', '近世', '{"accept":["1575年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nagashino-person', '次の説明にあてはまる人物はだれか。
「楽市・楽座や関所の廃止を行い、長篠の戦いで鉄砲を活用した」', '織田信長', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'honnoji-year', '「本能寺の変」は西暦何年のことか。数字で答えなさい。', '1582', '近世', '{"accept":["1582年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenchi-person', '次の説明にあてはまる人物はだれか。
「太閤検地と刀狩を行い、兵農分離を進めて全国を統一した」', '豊臣秀吉', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'katanagari-year', '「刀狩」は西暦何年のことか。数字で答えなさい。', '1588', '近世', '{"accept":["1588年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekigahara-year', '「関ヶ原の戦い」は西暦何年のことか。数字で答えなさい。', '1600', '近世', '{"accept":["1600年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'edobakufu-year', '「江戸幕府」は西暦何年のことか。数字で答えなさい。', '1603', '近世', '{"accept":["1603年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'edobakufu-person', '次の説明にあてはまる人物はだれか。
「関ヶ原の戦いに勝ち、江戸に幕府を開いた」', '徳川家康', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'bukeshohatto-year', '「武家諸法度」は西暦何年のことか。数字で答えなさい。', '1615', '近世', '{"accept":["1615年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sankinkotai-year', '「参勤交代」は西暦何年のことか。数字で答えなさい。', '1635', '近世', '{"accept":["1635年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sankinkotai-person', '次の説明にあてはまる人物はだれか。
「参勤交代を制度化し、鎖国を完成させた」', '徳川家光', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimabara-year', '「島原・天草一揆」は西暦何年のことか。数字で答えなさい。', '1637', '近世', '{"accept":["1637年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sakoku-year', '「鎖国」は西暦何年のことか。数字で答えなさい。', '1641', '近世', '{"accept":["1641年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kyoho-year', '「享保の改革」は西暦何年のことか。数字で答えなさい。', '1716', '近世', '{"accept":["1716年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kyoho-person', '次の説明にあてはまる人物はだれか。
「享保の改革を行い、目安箱を設置した」', '徳川吉宗', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kansei-year', '「寛政の改革」は西暦何年のことか。数字で答えなさい。', '1787', '近世', '{"accept":["1787年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kansei-person', '次の説明にあてはまる人物はだれか。
「寛政の改革を行った」', '松平定信', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpo-year', '「天保の改革」は西暦何年のことか。数字で答えなさい。', '1841', '近世', '{"accept":["1841年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tenpo-person', '次の説明にあてはまる人物はだれか。
「天保の改革を行い、株仲間を解散させた」', '水野忠邦', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'perry-year', '「ペリーの来航」は西暦何年のことか。数字で答えなさい。', '1853', '近代', '{"accept":["1853年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'perry-person', '次の説明にあてはまる人物はだれか。
「1853年に浦賀に来航し、日本に開国を求めた」', 'ペリー', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'washin-year', '「日米和親条約」は西暦何年のことか。数字で答えなさい。', '1854', '近代', '{"accept":["1854年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukotsusho-year', '「日米修好通商条約」は西暦何年のことか。数字で答えなさい。', '1858', '近代', '{"accept":["1858年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiseihokan-year', '「大政奉還」は西暦何年のことか。数字で答えなさい。', '1867', '近代', '{"accept":["1867年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiseihokan-person', '次の説明にあてはまる人物はだれか。
「1867年に大政奉還を行い、政権を朝廷に返した」', '徳川慶喜', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gokajo-year', '「五箇条の御誓文」は西暦何年のことか。数字で答えなさい。', '1868', '近代', '{"accept":["1868年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haihan-year', '「廃藩置県」は西暦何年のことか。数字で答えなさい。', '1871', '近代', '{"accept":["1871年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chiso-year', '「地租改正」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpo-year', '「大日本帝国憲法」は西暦何年のことか。数字で答えなさい。', '1889', '近代', '{"accept":["1889年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpo-person', '次の説明にあてはまる人物はだれか。
「初代内閣総理大臣となり、大日本帝国憲法の作成を進めた」', '伊藤博文', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisshin-year', '「日清戦争」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiro-year', '「日露戦争」は西暦何年のことか。数字で答えなさい。', '1904', '近代', '{"accept":["1904年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kankoku-year', '「韓国併合」は西暦何年のことか。数字で答えなさい。', '1910', '近代', '{"accept":["1910年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'daiichiji-year', '「第一次世界大戦」は西暦何年のことか。数字で答えなさい。', '1914', '近代', '{"accept":["1914年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshu-year', '「満州事変」は西暦何年のことか。数字で答えなさい。', '1931', '近代', '{"accept":["1931年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-year', '「日中戦争」は西暦何年のことか。数字で答えなさい。', '1937', '近代', '{"accept":["1937年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'taiheiyo-year', '「太平洋戦争」は西暦何年のことか。数字で答えなさい。', '1941', '近代', '{"accept":["1941年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'potsdam-year', '「ポツダム宣言」は西暦何年のことか。数字で答えなさい。', '1945', '現代', '{"accept":["1945年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonkoku-kenpo-year', '「日本国憲法」は西暦何年のことか。数字で答えなさい。', '1946', '現代', '{"accept":["1946年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sanfrancisco-year', '「サンフランシスコ平和条約」は西暦何年のことか。数字で答えなさい。', '1951', '現代', '{"accept":["1951年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokuren-year', '「国際連合への加盟」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tokyo-olympic-year', '「東京オリンピック」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'okinawa-year', '「沖縄の返還」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kojiki-year', '「古事記」は西暦何年のことか。数字で答えなさい。', '712', '古代', '{"accept":["712年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nihonshoki-year', '「日本書紀」は西暦何年のことか。数字で答えなさい。', '720', '古代', '{"accept":["720年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'genji-person', '次の説明にあてはまる人物はだれか。
「かな文字を用いて長編物語『源氏物語』を書いた」', '紫式部', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'makura-person', '次の説明にあてはまる人物はだれか。
「宮中の生活を随筆『枕草子』につづった」', '清少納言', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokinshu-person', '次の説明にあてはまる人物はだれか。
「『古今和歌集』をまとめ、かな文字で『土佐日記』を書いた」', '紀貫之', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'saicho-person', '次の説明にあてはまる人物はだれか。
「唐にわたって天台宗を学び、比叡山に延暦寺を建てた」', '最澄', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kukai-person', '次の説明にあてはまる人物はだれか。
「唐にわたって真言宗を学び、高野山に金剛峯寺を建てた」', '空海', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ganjin-person', '次の説明にあてはまる人物はだれか。
「何度も遭難しながら来日し、正しい仏教の戒律を伝えて唐招提寺を建てた」', '鑑真', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshu-person', '次の説明にあてはまる人物はだれか。
「念仏を唱えれば救われると説き、浄土宗を開いた」', '法然', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jodoshinshu-person', '次の説明にあてはまる人物はだれか。
「法然の弟子で、浄土真宗を開いた」', '親鸞', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichirenshu-person', '次の説明にあてはまる人物はだれか。
「題目を唱えることを説き、日蓮宗を開いた」', '日蓮', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'noh-person', '次の説明にあてはまる人物はだれか。
「父の観阿弥とともに能を大成した」', '世阿弥', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'suibokuga-person', '次の説明にあてはまる人物はだれか。
「明にわたって学び、日本の水墨画を大成した」', '雪舟', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'wabicha-person', '次の説明にあてはまる人物はだれか。
「質素なわび茶を大成し、茶の湯を芸術の域に高めた」', '千利休', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ukiyozoshi-person', '次の説明にあてはまる人物はだれか。
「『日本永代蔵』などの浮世草子で町人の生活をえがいた」', '井原西鶴', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'haikai-person', '次の説明にあてはまる人物はだれか。
「各地を旅して『おくのほそ道』を著し、俳諧を芸術に高めた」', '松尾芭蕉', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'joruri-person', '次の説明にあてはまる人物はだれか。
「『曽根崎心中』などの人形浄瑠璃・歌舞伎の脚本を書いた」', '近松門左衛門', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hokusai-person', '次の説明にあてはまる人物はだれか。
「『富嶽三十六景』をえがき、風景版画で人気を集めた」', '葛飾北斎', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hiroshige-person', '次の説明にあてはまる人物はだれか。
「『東海道五十三次』をえがいた」', '歌川広重', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai-year', '「解体新書」は西暦何年のことか。数字で答えなさい。', '1774', '近世', '{"accept":["1774年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaitai-person', '次の説明にあてはまる人物はだれか。
「前野良沢らとオランダ語の解剖書を訳し、『解体新書』を出版した」', '杉田玄白', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokugaku-person', '次の説明にあてはまる人物はだれか。
「『古事記伝』を著し、国学を大成した」', '本居宣長', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou-year', '「大日本沿海輿地全図」は西暦何年のことか。数字で答えなさい。', '1821', '近世', '{"accept":["1821年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'inou-person', '次の説明にあてはまる人物はだれか。
「全国を歩いて測量し、正確な日本地図のもとをつくった」', '伊能忠敬', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakusei-year', '「学制」は西暦何年のことか。数字で答えなさい。', '1872', '近代', '{"accept":["1872年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'gakumon-person', '次の説明にあてはまる人物はだれか。
「『学問のすゝめ』を著し、欧米の思想を広めた」', '福沢諭吉', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho-year', '「民撰議院設立の建白書」は西暦何年のことか。数字で答えなさい。', '1874', '近代', '{"accept":["1874年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kenpakusho-person', '次の説明にあてはまる人物はだれか。
「民撰議院設立の建白書を提出し、のちに自由党をつくった」', '板垣退助', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto-year', '「立憲改進党」は西暦何年のことか。数字で答えなさい。', '1882', '近代', '{"accept":["1882年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kaishinto-person', '次の説明にあてはまる人物はだれか。
「立憲改進党をつくり、のちに早稲田大学のもととなる学校を開いた」', '大隈重信', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'teikokugikai-year', '「帝国議会」は西暦何年のことか。数字で答えなさい。', '1890', '近代', '{"accept":["1890年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken-year', '「領事裁判権の撤廃」は西暦何年のことか。数字で答えなさい。', '1894', '近代', '{"accept":["1894年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ryojisaibanken-person', '次の説明にあてはまる人物はだれか。
「1894年に領事裁判権の撤廃に成功した」', '陸奥宗光', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei-year', '「関税自主権の回復」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanzei-person', '次の説明にあてはまる人物はだれか。
「1911年に関税自主権の回復を実現し、条約改正を完成させた」', '小村寿太郎', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'yahata-year', '「八幡製鉄所」は西暦何年のことか。数字で答えなさい。', '1901', '近代', '{"accept":["1901年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hanseki-year', '「版籍奉還」は西暦何年のことか。数字で答えなさい。', '1869', '近代', '{"accept":["1869年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chohei-year', '「徴兵令」は西暦何年のことか。数字で答えなさい。', '1873', '近代', '{"accept":["1873年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan-year', '「西南戦争」は西暦何年のことか。数字で答えなさい。', '1877', '近代', '{"accept":["1877年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seinan-person', '次の説明にあてはまる人物はだれか。
「明治維新に活躍したが、のちに西南戦争で士族に押し立てられて敗れた」', '西郷隆盛', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shimonoseki-year', '「下関条約」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sangoku-year', '「三国干渉」は西暦何年のことか。数字で答えなさい。', '1895', '近代', '{"accept":["1895年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'portsmouth-year', '「ポーツマス条約」は西暦何年のことか。数字で答えなさい。', '1905', '近代', '{"accept":["1905年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shukyokaikaku-person', '次の説明にあてはまる人物はだれか。
「免罪符を売る教会を批判し、宗教改革を始めた」', 'ルター', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'columbus-person', '次の説明にあてはまる人物はだれか。
「1492年に大西洋を横断し、アメリカ大陸付近の島に到達した」', 'コロンブス', '中世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'meiyo-year', '「名誉革命」は西暦何年のことか。数字で答えなさい。', '1688', '近世', '{"accept":["1688年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dokuritsu-year', '「アメリカ独立宣言」は西暦何年のことか。数字で答えなさい。', '1776', '近世', '{"accept":["1776年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'furansu-year', '「フランス革命」は西暦何年のことか。数字で答えなさい。', '1789', '近世', '{"accept":["1789年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ahen-year', '「アヘン戦争」は西暦何年のことか。数字で答えなさい。', '1840', '近代', '{"accept":["1840年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku-year', '「南北戦争」は西暦何年のことか。数字で答えなさい。', '1861', '近代', '{"accept":["1861年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nanboku-person', '次の説明にあてはまる人物はだれか。
「南北戦争のさなかに奴隷解放宣言を出し、「人民の、人民による、人民のための政治」を説いた」', 'リンカン', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai-year', '「辛亥革命」は西暦何年のことか。数字で答えなさい。', '1911', '近代', '{"accept":["1911年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shingai-person', '次の説明にあてはまる人物はだれか。
「三民主義を唱えて辛亥革命を指導し、中華民国の成立に力をつくした」', '孫文', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'roshia-year', '「ロシア革命」は西暦何年のことか。数字で答えなさい。', '1917', '近代', '{"accept":["1917年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kokusairenmei-year', '「国際連盟」は西暦何年のことか。数字で答えなさい。', '1920', '近代', '{"accept":["1920年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'dainiji-year', '「第二次世界大戦」は西暦何年のことか。数字で答えなさい。', '1939', '近代', '{"accept":["1939年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chosen-year', '「朝鮮戦争」は西暦何年のことか。数字で答えなさい。', '1950', '現代', '{"accept":["1950年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nisso-year', '「日ソ共同宣言」は西暦何年のことか。数字で答えなさい。', '1956', '現代', '{"accept":["1956年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekiyu-year', '「石油危機」は西暦何年のことか。数字で答えなさい。', '1973', '現代', '{"accept":["1973年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'jinshin-year', '「壬申の乱」は西暦何年のことか。数字で答えなさい。', '672', '古代', '{"accept":["672年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'fujiwarakyo-year', '「藤原京」は西暦何年のことか。数字で答えなさい。', '694', '古代', '{"accept":["694年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei-year', '「院政」は西暦何年のことか。数字で答えなさい。', '1086', '古代', '{"accept":["1086年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'insei-person', '次の説明にあてはまる人物はだれか。
「天皇の位をゆずったあとも上皇として政治を行う院政を始めた」', '白河上皇', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'hogen-year', '「保元の乱」は西暦何年のことか。数字で答えなさい。', '1156', '古代', '{"accept":["1156年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shorui-person', '次の説明にあてはまる人物はだれか。
「生類憐みの令を出し、学問を重んじる政治を行った」', '徳川綱吉', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'tanuma-person', '次の説明にあてはまる人物はだれか。
「株仲間を奨励し、商業の力を利用した政治を行ったが、わいろが横行して失脚した」', '田沼意次', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'oshio-year', '「大塩平八郎の乱」は西暦何年のことか。数字で答えなさい。', '1837', '近世', '{"accept":["1837年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'uchiharai-year', '「異国船打払令」は西暦何年のことか。数字で答えなさい。', '1825', '近世', '{"accept":["1825年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nichiei-year', '「日英同盟」は西暦何年のことか。数字で答えなさい。', '1902', '近代', '{"accept":["1902年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kome-year', '「米騒動」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku-year', '「政党内閣」は西暦何年のことか。数字で答えなさい。', '1918', '近代', '{"accept":["1918年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'seitonaikaku-person', '次の説明にあてはまる人物はだれか。
「1918年に日本初の本格的な政党内閣を組織し、「平民宰相」と呼ばれた」', '原敬', '近代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'futsusenkyo-year', '「普通選挙法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'chian-year', '「治安維持法」は西暦何年のことか。数字で答えなさい。', '1925', '近代', '{"accept":["1925年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'kanto-daishinsai-year', '「関東大震災」は西暦何年のことか。数字で答えなさい。', '1923', '近代', '{"accept":["1923年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sekaikyoko-year', '「世界恐慌」は西暦何年のことか。数字で答えなさい。', '1929', '近代', '{"accept":["1929年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'manshukoku-year', '「満州国」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'renmei-dattai-year', '「国際連盟からの脱退」は西暦何年のことか。数字で答えなさい。', '1933', '近代', '{"accept":["1933年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'goichigo-year', '「五・一五事件」は西暦何年のことか。数字で答えなさい。', '1932', '近代', '{"accept":["1932年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'ninirooku-year', '「二・二六事件」は西暦何年のことか。数字で答えなさい。', '1936', '近代', '{"accept":["1936年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'sodoin-year', '「国家総動員法」は西暦何年のことか。数字で答えなさい。', '1938', '近代', '{"accept":["1938年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'shinkansen-year', '「東海道新幹線」は西暦何年のことか。数字で答えなさい。', '1964', '現代', '{"accept":["1964年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi', 'nicchu-kokko-year', '「日中国交正常化」は西暦何年のことか。数字で答えなさい。', '1972', '現代', '{"accept":["1972年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物-pref', '「法隆寺地域の仏教建造物」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物-type', '「法隆寺地域の仏教建造物」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城-pref', '「姫路城」の所在都道府県を1つ答えなさい。', '兵庫県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城-type', '「姫路城」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財-pref', '「古都京都の文化財」の所在都道府県を1つ答えなさい。', '京都府', '文化遺産', '{"accept":["滋賀県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財-type', '「古都京都の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落-pref', '「白川郷・五箇山の合掌造り集落」の所在都道府県を1つ答えなさい。', '岐阜県', '文化遺産', '{"accept":["富山県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落-type', '「白川郷・五箇山の合掌造り集落」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム-pref', '「原爆ドーム」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム-type', '「原爆ドーム」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社-pref', '「厳島神社」の所在都道府県を1つ答えなさい。', '広島県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社-type', '「厳島神社」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財-pref', '「古都奈良の文化財」の所在都道府県を1つ答えなさい。', '奈良県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財-type', '「古都奈良の文化財」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺-pref', '「日光の社寺」の所在都道府県を1つ答えなさい。', '栃木県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺-type', '「日光の社寺」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群-pref', '「琉球王国のグスク及び関連遺産群」の所在都道府県を1つ答えなさい。', '沖縄県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群-type', '「琉球王国のグスク及び関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道-pref', '「紀伊山地の霊場と参詣道」の所在都道府県を1つ答えなさい。', '三重県', '文化遺産', '{"accept":["奈良県","和歌山県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道-type', '「紀伊山地の霊場と参詣道」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観-pref', '「石見銀山遺跡とその文化的景観」の所在都道府県を1つ答えなさい。', '島根県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観-type', '「石見銀山遺跡とその文化的景観」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉-pref', '「平泉」の所在都道府県を1つ答えなさい。', '岩手県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉-type', '「平泉」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山-pref', '「富士山」の所在都道府県を1つ答えなさい。', '山梨県', '文化遺産', '{"accept":["静岡県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山-type', '「富士山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群-pref', '「富岡製糸場と絹産業遺産群」の所在都道府県を1つ答えなさい。', '群馬県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群-type', '「富岡製糸場と絹産業遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産-pref', '「明治日本の産業革命遺産」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', '{"accept":["佐賀県","長崎県","熊本県","鹿児島県","山口県","岩手県","静岡県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産-type', '「明治日本の産業革命遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品-pref', '「ル・コルビュジエの建築作品」の所在都道府県を1つ答えなさい。', '東京都', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品-type', '「ル・コルビュジエの建築作品」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群-pref', '「「神宿る島」宗像・沖ノ島と関連遺産群」の所在都道府県を1つ答えなさい。', '福岡県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群-type', '「「神宿る島」宗像・沖ノ島と関連遺産群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産-pref', '「長崎と天草地方の潜伏キリシタン関連遺産」の所在都道府県を1つ答えなさい。', '長崎県', '文化遺産', '{"accept":["熊本県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産-type', '「長崎と天草地方の潜伏キリシタン関連遺産」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群-pref', '「百舌鳥・古市古墳群」の所在都道府県を1つ答えなさい。', '大阪府', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群-type', '「百舌鳥・古市古墳群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群-pref', '「北海道・北東北の縄文遺跡群」の所在都道府県を1つ答えなさい。', '北海道', '文化遺産', '{"accept":["青森県","岩手県","秋田県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群-type', '「北海道・北東北の縄文遺跡群」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山-pref', '「佐渡島の金山」の所在都道府県を1つ答えなさい。', '新潟県', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山-type', '「佐渡島の金山」は文化遺産・自然遺産のどちらに分類される？', '文化遺産', '文化遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島-pref', '「屋久島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島-type', '「屋久島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地-pref', '「白神山地」の所在都道府県を1つ答えなさい。', '青森県', '自然遺産', '{"accept":["秋田県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地-type', '「白神山地」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床-pref', '「知床」の所在都道府県を1つ答えなさい。', '北海道', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床-type', '「知床」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島-pref', '「小笠原諸島」の所在都道府県を1つ答えなさい。', '東京都', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島-type', '「小笠原諸島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島-pref', '「奄美大島、徳之島、沖縄島北部及び西表島」の所在都道府県を1つ答えなさい。', '鹿児島県', '自然遺産', '{"accept":["沖縄県"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島-type', '「奄美大島、徳之島、沖縄島北部及び西表島」は文化遺産・自然遺産のどちらに分類される？', '自然遺産', '自然遺産', NULL);
