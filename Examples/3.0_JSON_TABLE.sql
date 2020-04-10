SELECT event_data, rolesId, emails, entitiesID
FROM `json_event_fact`,
    JSON_TABLE(`event_data`, '$.*[*]' COLUMNS (
               rolesId VARCHAR(100)  PATH '$.roleId',
               emails VARCHAR(100) PATH '$.email',
               entitiesID VARCHAR(100) PATH '$.entityId')
    ) permissions;
