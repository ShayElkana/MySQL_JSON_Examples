SELECT `event_data`, JSON_REPLACE(`event_data`,'$.paths.path_30972a80', json_array('aa', 'bb'))
FROM `json_event_fact`;