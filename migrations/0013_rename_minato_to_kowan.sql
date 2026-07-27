-- 地図記号「重要港」を、国土地理院の現行表記「港湾」に統一する。
-- 旧表記「重要港」と「港」は解答の別名として維持する。
UPDATE items
SET answer = '港湾',
    extra_json = '{"accept":["港","重要港"]}'
WHERE quiz_id = 'chizu-kigou'
  AND item_key = 'minato';
