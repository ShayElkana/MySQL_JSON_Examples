SELECT *, jsonb_pretty(event_data)
FROM  "public"."json_event_fact";
