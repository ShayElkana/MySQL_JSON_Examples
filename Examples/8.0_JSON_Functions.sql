SET @strJSON =  '{"zname":"Customer Name1","accountsList":[1,2],"cID":"0a123456","age":43,"lastUpdated":1558972092966, "id": 123}';

#-------- CAST  -----------------
SELECT CAST(@strJSON AS JSON);  -- Attributes Order

#-------- JSON_OBJECT  -----------------
#JSON_OBJECT([key, val[, key, val] ...])
SELECT JSON_OBJECT('id', 87, 'name', 'carrot', 'listOfValues', JSON_OBJECT('key', 'a', 'name', 'myName'));

#-------- JSON_MERGE_PATCH  -----------------
SELECT JSON_MERGE_PATCH('{"name": "x"}', '{"id": 47}'); -- JSON_MERGE() function is now deprecated


#-------- JSON_LENGTH  -----------------
SELECT JSON_LENGTH('{"a": 1}'), JSON_LENGTH('{"a": 1, "b": {"c": 30, "d": "fsdf"}}'), JSON_LENGTH('{"a": 1, "b": 2, "C" : 3}');


#-------- JSON_QUOTE  and JSON_UNQUOTE-----------------
SELECT JSON_QUOTE('null'), JSON_QUOTE('"null"'),  json_extract('{"foo":"bar"}','$.foo'),  json_unquote(json_extract('{"foo":"bar"}','$.foo')) ;


#-------- JSON_ARRAY  -----------------
SELECT JSON_ARRAY(1, "abc", NULL, TRUE, CURTIME());

