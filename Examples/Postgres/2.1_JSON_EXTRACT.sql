SELECT *, jsonb_path_query_array(event_data, '$.data[*]')
FROM  "public"."json_event_fact";
