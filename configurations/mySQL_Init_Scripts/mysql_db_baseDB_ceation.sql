CREATE SCHEMA IF NOT EXISTS `json_mysql_example`;
USE `json_mysql_example`;

DROP TABLE IF EXISTS `json_event_fact`;
CREATE TABLE `json_event_fact`  (

  `id` int(11) NOT NULL AUTO_INCREMENT,

  `event_data` json NOT NULL, -- 65,535 bytes max

  `event_data_text` varchar(750) as (cast(event_data as char)) stored,

  PRIMARY KEY (`id`,`event_data_text`)

) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

Insert Into `json_event_fact`
(event_data)
values
('{"age": "Over 30", "gender": "female"}'),
('{"roles": [{"roleId": 1}, {"roleId": 2}, {"roleId": 5}], "emails": [{"email": "a@gmail.com"}, {"email": "b@gmail.com"}], "entities": [{"entityId": 4}, {"entityId": 8}, {"entityId": 5}]}'),
('{"a56a81eb": {"type": "AD", "uuid": "d9e9d8ae-8a33-11e6-97e0-22000b93579c", "subConfig": {}, "dataSupport": true}, "a6529578": {"type": "VIDEO", "uuid": "e09b40af-8a33-11e6-97e0-22000b93579c", "subConfig": {"hd": true, "video_url": "https://www.youtube.com/watch?v=dQw4w9WgXcQ"}}, "a6caab6e": {"type": "AD", "uuid": "e89a3877-8a33-11e6-97e0-22000b93579c", "subConfig": {}}}'),
('{"paths": {"path_3007ea93": ["action_312c40f4"], "path_30972a80": ["action_3158f2a7", "action_3185a6da", "action_312c40f4", "action_31aedd9b"]}, "actions": {"action_312c40f4": {}}}');


