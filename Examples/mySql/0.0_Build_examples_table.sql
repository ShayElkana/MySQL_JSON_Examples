DROP TABLE IF EXISTS `json_event_fact`;
CREATE TABLE `json_event_fact`  (

 `id` int(11) NOT NULL AUTO_INCREMENT,

 `event_data` json NOT NULL, -- 65,535 bytes max

 `event_data_text` varchar(750) as (cast(event_data as char)) stored,

 PRIMARY KEY (`id`,`event_data_text`)

) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
