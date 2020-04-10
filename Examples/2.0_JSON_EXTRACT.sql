select `event_data`, JSON_EXTRACT(`event_data`,'$.*.type')
from `json_event_fact`;
