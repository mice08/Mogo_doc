/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 通话记录第三方信息表-天润表增加字段：坐席名。 该表是线上新表 */
ALTER TABLE `tele_tinet_calllog` ADD COLUMN `seatName` VARCHAR(50) DEFAULT NULL COMMENT '坐席名' AFTER `calleeNo`;
