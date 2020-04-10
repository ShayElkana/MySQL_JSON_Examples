SELECT `event_data`, JSON_SEARCH(`event_data`,'all','action_312c40f4')
FROM `json_event_fact`;
