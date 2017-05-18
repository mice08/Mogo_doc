/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 400请求跟综器表增加字段：同步标记，更新时间 该表生产环境记录数：8万条 */
ALTER TABLE `tele_request_tracker` ADD COLUMN `syncStatus` TINYINT(1) NOT NULL DEFAULT '0' COMMENT '同步标记(0:无需同步 1:单步重试 2:分机整体同步 3:同步完成 4:异常数据)' AFTER `result`;
ALTER TABLE `tele_request_tracker` ADD COLUMN `updateTime` DATETIME ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间' AFTER `createTime`;
