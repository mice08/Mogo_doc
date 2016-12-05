/*  Database name `mogoroomdb` ，为房东表添加账号类型及信用代码字段*/
use mogoroomdb;

ALTER TABLE `user_landlord_info_his`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '签约单数，不管是否已经导入系统',
  ADD COLUMN `landlordType` VARCHAR(10) DEFAULT NULL   COMMENT '房东类型';
