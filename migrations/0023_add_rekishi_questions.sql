-- 0023: 歴史の問題を5つの薄い時代に各10問追加する。
-- CSVを正本とし、このファイルは既存本番DBへの差分適用用。
-- 冪等性のため INSERT OR IGNORE を使用する。
-- 適用: npx wrangler d1 execute chishiki-quiz-db --remote --file=./migrations/0023_add_rekishi_questions.sql

INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-25', '百済を助けるために日本が唐・新羅の連合軍と戦い、大敗した戦いを何というか。', '白村江の戦い', '古代', '{"accept":["白村江の戦"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-26', '「白村江の戦い」は西暦何年のことか。数字で答えなさい。', '663', '古代', '{"accept":["663年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-27', '天智天皇が都を移した、近江国（現在の滋賀県）にあった宮は何か。', '近江大津宮', '古代', '{"accept":["大津宮"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-28', '近江大津宮が置かれた現在の都道府県はどこか。', '滋賀県', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-29', '飛鳥時代に仏教の影響を強く受けて栄えた、推古天皇のころの文化を何というか。', '飛鳥文化', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-30', '飛鳥文化を代表する、聖徳太子が建立したと伝えられる寺は何か。', '法隆寺', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-31', '中臣鎌足は、死の直前に天智天皇から何という姓を与えられたか。', '藤原氏', '古代', '{"accept":["藤原","藤原朝臣"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-32', '天武天皇の命令で編さんが始まり、持統天皇の時代に施行されたとされる法令は何か。', '飛鳥浄御原令', '古代', '{"accept":["浄御原令"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-33', '白村江の戦いの後、日本が唐・新羅の侵攻に備えて九州北部に築いた防御施設の一つは何か。', '水城', '古代', '{"accept":["みずき"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-asuka', 'q-34', '中大兄皇子とともに蘇我氏を倒し、大化の改新を進めた人物はだれか。', '中臣鎌足', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-17', '豊臣秀吉が朝鮮に大軍を送って始めた戦いを何というか。', '文禄の役', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-18', '「文禄の役」が始まったのは西暦何年か。数字で答えなさい。', '1592', '近世', '{"accept":["1592年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-19', '豊臣秀吉が朝鮮に再び大軍を送った戦いを何というか。', '慶長の役', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-20', '「慶長の役」が始まったのは西暦何年か。数字で答えなさい。', '1597', '近世', '{"accept":["1597年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-21', '豊臣秀吉が宣教師の国外退去を命じた政策を何というか。', 'バテレン追放令', '近世', '{"accept":["伴天連追放令"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-22', '「バテレン追放令」は西暦何年に出されたか。数字で答えなさい。', '1587', '近世', '{"accept":["1587年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-23', 'ヨーロッパ人との交流を通じて日本に伝わった、南蛮人の影響を受けた文化を何というか。', '南蛮文化', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-24', '豊臣秀吉が大規模な城を築き、のちに徳川家康が再建した大阪の城は何か。', '大阪城', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-25', '織田信長が琵琶湖の東岸に築き、天下統一の拠点とした城は何か。', '安土城', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-azuchi', 'q-26', '織田信長に京都から追放され、室町幕府最後の将軍となった人物はだれか。', '足利義昭', '近世', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-20', '縄文時代より前で、人々が打製石器を使い狩りや採集をしていた時代を何というか。', '旧石器時代', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-21', '石を打ち欠いて刃をつくった石器を何というか。', '打製石器', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-22', '群馬県で日本の旧石器時代の存在を示す石器が発見された遺跡は何か。', '岩宿遺跡', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-23', '火山ガラスからできており、縄文時代などに石器の材料として使われた石を何というか。', '黒曜石', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-24', '弥生時代に、集落の周囲に濠をめぐらせたものを何というか。', '環濠集落', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-25', '弥生時代に農具や武器などに使われるようになった、鉄でできた道具を何というか。', '鉄器', '原始', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-26', '3世紀ごろの中国の歴史書で、邪馬台国や卑弥呼について記しているものは何か。', '魏志倭人伝', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-27', '古墳時代、大和政権の王は何と呼ばれたか。', '大王', '原始', '{"accept":["おおきみ"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-28', '弥生時代に稲の穂先を摘み取るために使われた石器を何というか。', '石包丁', '原始', '{"accept":["石ぼうちょう"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-genshi', 'q-29', '弥生時代に稲作が広がると、米や土地をめぐる争いなどを背景に大きくなった、人々の間の差を何というか。', '身分差', '原始', '{"accept":["身分の差","貧富の差"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-30', '平安京に都を移した天皇はだれか。', '桓武天皇', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-31', '桓武天皇が平安京の前に都を移した、現在の京都府向日市・長岡京市などにまたがる都は何か。', '長岡京', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-32', '坂上田村麻呂は、蝦夷を討つために任じられた何という役職についたか。', '征夷大将軍', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-33', '坂上田村麻呂が征討に向かった、東北地方を中心に暮らしていた人々を当時何と呼んだか。', '蝦夷', '古代', '{"accept":["えみし"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-34', '平安時代、京都の治安維持や犯罪の取り締まりを担った役所・役職を何というか。', '検非違使', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-35', '平将門の乱とほぼ同じころ、瀬戸内海で藤原純友が起こした反乱を何というか。', '藤原純友の乱', '古代', '{"accept":["純友の乱"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-36', '平安時代、国司として任地に赴き、地方の政治や税の徴収を担った有力な役人を何というか。', '受領', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-37', '平安時代、地方で武力を持つようになった武士たちの集団を何というか。', '武士団', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-38', '保元の乱の後、源氏と平氏が後白河天皇側の争いに加わった戦いを何というか。', '平治の乱', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-heian', 'q-39', '「平治の乱」は西暦何年のことか。数字で答えなさい。', '1159', '古代', '{"accept":["1159年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-17', '新しく開墾した土地を三代に限って私有できるとした、723年の法は何か。', '三世一身法', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-18', '「三世一身法」は西暦何年に出されたか。数字で答えなさい。', '723', '古代', '{"accept":["723年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-19', '聖武天皇が国ごとに国分寺と国分尼寺を建てるよう命じた詔を何というか。', '国分寺建立の詔', '古代', '{"accept":["国分寺建立の詔書","国分寺建立の命令"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-20', '「国分寺建立の詔」が出されたのは西暦何年か。数字で答えなさい。', '741', '古代', '{"accept":["741年"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-21', '民衆に仏教を広め、東大寺の大仏づくりにも協力した僧はだれか。', '行基', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-22', '遣唐使として唐に渡り、帰国できずに唐の役人として活躍した人物はだれか。', '阿倍仲麻呂', '古代', '{"accept":["安倍仲麻呂","阿部仲麻呂"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-23', '奈良時代に、地方の地理や産物、伝承などを記録するため国ごとにまとめられた書物を何というか。', '風土記', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-24', '718年に完成し、のちの757年に施行された律令は何か。', '養老律令', '古代', NULL);
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-25', '729年、藤原氏との政争に敗れて自害した皇族を中心とする事件を何というか。', '長屋王の変', '古代', '{"accept":["長屋王事件"]}');
INSERT OR IGNORE INTO items (quiz_id, item_key, label, answer, category, extra_json) VALUES ('rekishi-nara', 'q-26', '藤原仲麻呂が政権を握った後、孝謙上皇側と対立して起こした反乱を何というか。', '藤原仲麻呂の乱', '古代', '{"accept":["恵美押勝の乱","恵美押勝の反乱"]}');
