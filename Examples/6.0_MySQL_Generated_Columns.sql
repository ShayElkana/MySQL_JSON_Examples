DROP TABLE IF EXISTS  json_Attributes;
CREATE TABLE `json_Attributes` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`record_data_json` json NOT NULL,
`name` VARCHAR(100) GENERATED ALWAYS AS (record_data_json->"$.name") STORED,
`cID` VARCHAR(100) GENERATED ALWAYS AS (record_data_json->"$.cID") VIRTUAL,
`age` int(11) GENERATED ALWAYS AS (record_data_json->"$.age"),
`lastUpdated` DATETIME GENERATED ALWAYS AS (from_unixtime((json_extract(`record_data_json`,_utf8mb4'$.lastUpdated') / 1000))),
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


INSERT INTO `json_Attributes`
(`record_data_json`)
VALUES
('{"name":"Customer Name1","accountsList":[1,2],"cID":"0a123456","age":43,"lastUpdated":1558972092966}'),
('{"name":"Customer Name2","accountsList":[11,32],"cID":"005345f","age":41}');

Select * from json_Attributes
