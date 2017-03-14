/*  Database name `mogoroomdb` 磐石组查询需要 增加索引 */
USE mogoroomdb;

ALTER TABLE flat_community ADD INDEX `IDX_NAME` (`name`);