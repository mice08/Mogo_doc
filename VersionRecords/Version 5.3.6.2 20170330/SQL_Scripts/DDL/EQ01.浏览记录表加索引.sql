/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 浏览记录表加索引*/
ALTER TABLE `user_behavior_record` DROP INDEX IDX_TYPE_CREATE;
ALTER TABLE `user_behavior_record` ADD INDEX `IDX_TYPE_CREATE` (createTime,behaviorType);
