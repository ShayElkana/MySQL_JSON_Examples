SELECT *, jsonb_path_query_array(event_data, '$.*.type')
FROM  "public"."json_event_fact";
