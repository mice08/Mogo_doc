/* Database name `mogoroomdb` ����ͱ������ֶ����ͷ��URL */
use mogoroomdb;

ALTER TABLE `user_renter` ADD COLUMN `avatarUrl` VARCHAR(128) NULL COMMENT '���ͷ��URL'; 
