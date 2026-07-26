-- data/ 配下のCSVから自動生成。直接編集せず scripts/generate-seed.js を使うこと。
-- quizzes 6件 / items 299件 (chikei=25, kencho=47, nihon-chiri=107, sekai-isan=26, todofuken=47, todofuken-chizu=47)

INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('chikei', '日本の地形', 'syakai', 'syakai/chikei/', 10, 0);
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('nihon-chiri', '日本地理', 'syakai', 'syakai/nihon-chiri/', 10, 0);
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('sekai-isan', '日本の世界遺産', 'syakai', 'syakai/sekai-isan/', 10, 0);
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('todofuken-chizu', '都道府県(地図)', 'syakai', 'syakai/todofuken-chizu/', 10, 0);
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('kencho', '県庁所在地', 'syakai', 'archive/kencho/', 10, 1);
INSERT INTO quizzes (id, name, genre, url, max_score, is_archived) VALUES ('todofuken', '都道府県', 'syakai', 'archive/todofuken/', 10, 1);

INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '奥羽山脈', '奥羽山脈', '奥羽山脈', '山地・山脈', '{"hint":"東北地方を南北に走る、日本で最も長い山脈"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '飛騨山脈(北アルプス)', '飛騨山脈(北アルプス)', '飛騨山脈(北アルプス)', '山地・山脈', '{"hint":"「日本の屋根」とも呼ばれる日本アルプスの一つ。富山県・長野県・岐阜県にまたがる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '木曽山脈(中央アルプス)', '木曽山脈(中央アルプス)', '木曽山脈(中央アルプス)', '山地・山脈', '{"hint":"日本アルプスの一つで、長野県に位置する"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '赤石山脈(南アルプス)', '赤石山脈(南アルプス)', '赤石山脈(南アルプス)', '山地・山脈', '{"hint":"日本アルプスの一つで、山梨県・長野県・静岡県にまたがる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '富士山', '富士山', '富士山', '山地・山脈', '{"hint":"日本最高峰(標高3776m)。静岡県と山梨県にまたがる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '関東平野', '関東平野', '関東平野', '平野', '{"hint":"日本最大の平野"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '越後平野', '越後平野', '越後平野', '平野', '{"hint":"新潟県に広がる、日本有数の稲作地帯"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '濃尾平野', '濃尾平野', '濃尾平野', '平野', '{"hint":"愛知県・岐阜県に広がり、「輪中」と呼ばれる堤防で知られる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '石狩平野', '石狩平野', '石狩平野', '平野', '{"hint":"北海道に広がる、稲作がさかんな平野"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '筑紫平野', '筑紫平野', '筑紫平野', '平野', '{"hint":"九州最大の平野で、佐賀県・福岡県に広がる"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '信濃川', '信濃川', '信濃川', '川', '{"hint":"日本で最も長い川(約367km)"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '利根川', '利根川', '利根川', '川', '{"hint":"流域面積が日本一で、「坂東太郎」とも呼ばれる川"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '石狩川', '石狩川', '石狩川', '川', '{"hint":"北海道を流れる、日本三大河川の一つ"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '木曽川', '木曽川', '木曽川', '川', '{"hint":"濃尾平野を流れる、木曽三川の一つ"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '淀川', '淀川', '淀川', '川', '{"hint":"琵琶湖から大阪湾へ流れる川"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '琵琶湖', '琵琶湖', '琵琶湖', '湖', '{"hint":"日本最大の湖。滋賀県にある"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '黒潮(日本海流)', '黒潮(日本海流)', '黒潮(日本海流)', '海流', '{"hint":"日本の太平洋側を流れる暖流"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '親潮(千島海流)', '親潮(千島海流)', '親潮(千島海流)', '海流', '{"hint":"三陸沖などを流れる寒流"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '対馬海流', '対馬海流', '対馬海流', '海流', '{"hint":"日本海側を流れる暖流"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', 'リマン海流', 'リマン海流', 'リマン海流', '海流', '{"hint":"日本海側を北から南へ流れる寒流"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '房総半島', '房総半島', '房総半島', '半島', '{"hint":"千葉県にある半島"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '紀伊半島', '紀伊半島', '紀伊半島', '半島', '{"hint":"近畿地方最大の半島"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '能登半島', '能登半島', '能登半島', '半島', '{"hint":"石川県にある、日本海に突き出た半島"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '津軽海峡', '津軽海峡', '津軽海峡', '海峡', '{"hint":"本州と北海道を隔てる海峡"}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('chikei', '関門海峡', '関門海峡', '関門海峡', '海峡', '{"hint":"本州と九州を隔てる海峡"}');
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nan-tan', '日本の一番南にある島（極南端）の名前は何ですか？', '沖ノ鳥島', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'nihon-alps', '飛騨山脈、木曽山脈、赤石山脈の3つの山脈を合わせた総称を何といいますか？', '日本アルプス', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'tone-gawa', '日本で一番流域面積が広い川の名前は何ですか？', '利根川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'rias-kaigan', '三陸海岸や志摩半島に見られる、複雑に入り組んだ鋸刃状の海岸地形を何といいますか？', 'リアス海岸', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'yamase', '東北地方の太平洋側で、夏に吹き冷害の原因となる冷たく湿った北東の風を何といいますか？', 'やませ', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kanto-loam', '関東平野のほぼ中央を流れる利根川などの流域に広がる、火山灰が降り積もってできた赤土の台地を何といいますか？', '関東ローム層', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'korechi', '中部地方の八ヶ岳山麓や菅平高原などで盛んな、夏の涼しい気候を利用してレタスやキャベツなどを栽培する農業を何といいますか？', '高冷地農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kinko', '大阪市やその周辺など、大消費地に近い立地を生かして野菜などを栽培する農業を何といいますか？', '近郊農業', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'setouchi', '瀬戸内海沿岸の地域に見られる、年中温暖で雨が少ない気候を何といいますか？', '瀬戸内の気候', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shirasu', '九州南部に広がる、シラスと呼ばれる火山灰が堆積した台地を何といいますか？', 'シラス台地', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shimokita-hanto', '青森県にある、むつ湾を囲むまさかりの形をした半島は何ですか？', '下北半島', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'kuroshio', '日本の太平洋側を南から北へ流れる、日本海流とも呼ばれる暖流の名前は何ですか？', '黒潮', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'shinano-gawa', '日本で最も長い川の名前は何ですか？', '信濃川', 'basic', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('nihon-chiri', 'karst', '山口県の秋吉台などに代表される、石灰岩が雨水などで侵食されてできた地形を何といいますか？', 'カルスト地形', 'basic', NULL);
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
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '法隆寺地域の仏教建造物', '法隆寺地域の仏教建造物', '法隆寺地域の仏教建造物', '文化遺産', '{"hint":"現存する世界最古の木造建築群として知られる仏教寺院","prefectures":["奈良県"],"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '姫路城', '姫路城', '姫路城', '文化遺産', '{"hint":"白鷺城とも呼ばれる、白い外観が美しい天守を持つ城","prefectures":["兵庫県"],"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都京都の文化財', '古都京都の文化財', '古都京都の文化財', '文化遺産', '{"hint":"清水寺や金閣寺など、古い都に残る社寺・城の総称","prefectures":["京都府","滋賀県"],"year":1994}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白川郷・五箇山の合掌造り集落', '白川郷・五箇山の合掌造り集落', '白川郷・五箇山の合掌造り集落', '文化遺産', '{"hint":"急な茅葺き屋根が特徴的な、豪雪地帯の伝統的な家屋群","prefectures":["岐阜県","富山県"],"year":1995}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '原爆ドーム', '原爆ドーム', '原爆ドーム', '文化遺産', '{"hint":"原子爆弾の惨禍を伝える、骨組みだけが残された建物","prefectures":["広島県"],"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '厳島神社', '厳島神社', '厳島神社', '文化遺産', '{"hint":"海上に立つ朱色の大鳥居で知られる神社","prefectures":["広島県"],"year":1996}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '古都奈良の文化財', '古都奈良の文化財', '古都奈良の文化財', '文化遺産', '{"hint":"東大寺や興福寺など、かつての都に残る寺社群","prefectures":["奈良県"],"year":1998}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '日光の社寺', '日光の社寺', '日光の社寺', '文化遺産', '{"hint":"「見ざる言わざる聞かざる」の彫刻で知られる東照宮を含む社寺群","prefectures":["栃木県"],"year":1999}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '琉球王国のグスク及び関連遺産群', '琉球王国のグスク及び関連遺産群', '琉球王国のグスク及び関連遺産群', '文化遺産', '{"hint":"首里城跡を中心とする、かつての王国の城・聖地群","prefectures":["沖縄県"],"year":2000}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '紀伊山地の霊場と参詣道', '紀伊山地の霊場と参詣道', '紀伊山地の霊場と参詣道', '文化遺産', '{"hint":"熊野古道など、山岳信仰の霊場と参詣道からなる遺産","prefectures":["三重県","奈良県","和歌山県"],"year":2004}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '石見銀山遺跡とその文化的景観', '石見銀山遺跡とその文化的景観', '石見銀山遺跡とその文化的景観', '文化遺産', '{"hint":"かつて世界有数の産出量を誇った、銀の採掘・精錬の遺跡","prefectures":["島根県"],"year":2007}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '平泉', '平泉', '平泉', '文化遺産', '{"hint":"中尊寺金色堂など、浄土思想を表す寺院・庭園群","prefectures":["岩手県"],"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富士山', '富士山', '富士山', '文化遺産', '{"hint":"信仰の対象であり、多くの芸術作品の題材となった日本一の山","prefectures":["山梨県","静岡県"],"year":2013}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '富岡製糸場と絹産業遺産群', '富岡製糸場と絹産業遺産群', '富岡製糸場と絹産業遺産群', '文化遺産', '{"hint":"明治時代に建てられた、日本の近代製糸業を支えた工場","prefectures":["群馬県"],"year":2014}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '明治日本の産業革命遺産', '明治日本の産業革命遺産', '明治日本の産業革命遺産', '文化遺産', '{"hint":"製鉄・製鋼、造船、石炭産業に関する、幕末から明治期の産業施設群","prefectures":["福岡県","佐賀県","長崎県","熊本県","鹿児島県","山口県","岩手県","静岡県"],"year":2015}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', 'ル・コルビュジエの建築作品(国立西洋美術館)', 'ル・コルビュジエの建築作品(国立西洋美術館)', 'ル・コルビュジエの建築作品(国立西洋美術館)', '文化遺産', '{"hint":"フランス人建築家が設計した、上野にある美術館を含む国際的な建築群","prefectures":["東京都"],"year":2016}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '「神宿る島」宗像・沖ノ島と関連遺産群', '「神宿る島」宗像・沖ノ島と関連遺産群', '「神宿る島」宗像・沖ノ島と関連遺産群', '文化遺産', '{"hint":"女人禁制で知られる、海の正倉院とも呼ばれる島を含む遺産","prefectures":["福岡県"],"year":2017}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '長崎と天草地方の潜伏キリシタン関連遺産', '長崎と天草地方の潜伏キリシタン関連遺産', '長崎と天草地方の潜伏キリシタン関連遺産', '文化遺産', '{"hint":"禁教期にひそかに信仰を続けた人々に関わる教会・集落群","prefectures":["長崎県","熊本県"],"year":2018}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '百舌鳥・古市古墳群', '百舌鳥・古市古墳群', '百舌鳥・古市古墳群', '文化遺産', '{"hint":"仁徳天皇陵古墳を含む、日本最大級の前方後円墳が集まる古墳群","prefectures":["大阪府"],"year":2019}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '北海道・北東北の縄文遺跡群', '北海道・北東北の縄文遺跡群', '北海道・北東北の縄文遺跡群', '文化遺産', '{"hint":"三内丸山遺跡など、狩猟採集による定住生活を示す縄文時代の遺跡群","prefectures":["北海道","青森県","岩手県","秋田県"],"year":2021}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '佐渡島の金山', '佐渡島の金山', '佐渡島の金山', '文化遺産', '{"hint":"江戸時代に日本最大の産出量を誇った、手作業による採掘技術が評価された金山","prefectures":["新潟県"],"year":2024}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '屋久島', '屋久島', '屋久島', '自然遺産', '{"hint":"樹齢数千年ともいわれる屋久杉で知られる、亜熱帯から亜寒帯までの植生が分布する島","prefectures":["鹿児島県"],"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '白神山地', '白神山地', '白神山地', '自然遺産', '{"hint":"世界最大級のブナの原生林が広がる山地","prefectures":["青森県","秋田県"],"year":1993}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '知床', '知床', '知床', '自然遺産', '{"hint":"流氷が育む豊かな生態系と、ヒグマなど野生動物の宝庫として知られる半島","prefectures":["北海道"],"year":2005}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '小笠原諸島', '小笠原諸島', '小笠原諸島', '自然遺産', '{"hint":"独自の進化を遂げた生物が多く、「東洋のガラパゴス」とも呼ばれる諸島","prefectures":["東京都"],"year":2011}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('sekai-isan', '奄美大島、徳之島、沖縄島北部及び西表島', '奄美大島、徳之島、沖縄島北部及び西表島', '奄美大島、徳之島、沖縄島北部及び西表島', '自然遺産', '{"hint":"アマミノクロウサギやヤンバルクイナなど、固有種の宝庫となっている島々","prefectures":["鹿児島県","沖縄県"],"year":2021}');
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '1', '北海道', '北海道', 'hokkaido', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '2', '青森県', '青森県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '3', '岩手県', '岩手県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '4', '宮城県', '宮城県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '5', '秋田県', '秋田県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '6', '山形県', '山形県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '7', '福島県', '福島県', 'tohoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '8', '茨城県', '茨城県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '9', '栃木県', '栃木県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '10', '群馬県', '群馬県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '11', '埼玉県', '埼玉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '12', '千葉県', '千葉県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '13', '東京都', '東京都', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '14', '神奈川県', '神奈川県', 'kanto', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '15', '新潟県', '新潟県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '16', '富山県', '富山県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '17', '石川県', '石川県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '18', '福井県', '福井県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '19', '山梨県', '山梨県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '20', '長野県', '長野県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '21', '岐阜県', '岐阜県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '22', '静岡県', '静岡県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '23', '愛知県', '愛知県', 'chubu', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '24', '三重県', '三重県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '25', '滋賀県', '滋賀県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '26', '京都府', '京都府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '27', '大阪府', '大阪府', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '28', '兵庫県', '兵庫県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '29', '奈良県', '奈良県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '30', '和歌山県', '和歌山県', 'kinki', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '31', '鳥取県', '鳥取県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '32', '島根県', '島根県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '33', '岡山県', '岡山県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '34', '広島県', '広島県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '35', '山口県', '山口県', 'chugoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '36', '徳島県', '徳島県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '37', '香川県', '香川県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '38', '愛媛県', '愛媛県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '39', '高知県', '高知県', 'shikoku', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '40', '福岡県', '福岡県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '41', '佐賀県', '佐賀県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '42', '長崎県', '長崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '43', '熊本県', '熊本県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '44', '大分県', '大分県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '45', '宮崎県', '宮崎県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '46', '鹿児島県', '鹿児島県', 'kyushu-okinawa', NULL);
INSERT INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('todofuken-chizu', '47', '沖縄県', '沖縄県', 'kyushu-okinawa', NULL);
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
