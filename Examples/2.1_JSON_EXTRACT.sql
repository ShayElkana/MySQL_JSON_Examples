select `event_data`, (json_extract(`event_data`,'$.*[*]'))
from `json_event_fact`;