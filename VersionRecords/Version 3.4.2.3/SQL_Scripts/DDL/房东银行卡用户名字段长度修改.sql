/*  Database name `mogoroomdb`  BS修改用户名字段长度 */
use mogoroomdb;

ALTER TABLE `user_bankcard` CHANGE COLUMN `realName` `realName`
VARCHAR(50) NULL DEFAULT NULL COMMENT '真实姓名' ;
ALTER TABLE `user_bankcard_his` CHANGE COLUMN `realName` `realName`
VARCHAR(50) NULL DEFAULT NULL COMMENT '真实姓名' ;