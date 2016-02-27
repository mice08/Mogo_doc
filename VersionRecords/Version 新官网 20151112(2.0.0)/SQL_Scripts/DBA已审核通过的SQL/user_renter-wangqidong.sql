/* Database name `mogoroomdb` ，租客表新增字段租客头像URL */
use mogoroomdb;

ALTER TABLE `user_renter` ADD COLUMN `avatarUrl` VARCHAR(128) NULL COMMENT '租客头像URL'; 
