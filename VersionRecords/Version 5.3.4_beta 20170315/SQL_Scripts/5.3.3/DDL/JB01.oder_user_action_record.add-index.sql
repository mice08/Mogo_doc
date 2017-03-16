/*  Database name `mogoroomdb`  增加索引 */
USE mogoroomdb;

ALTER TABLE oder_user_action_record ADD INDEX idx_landlordId (landlordId);