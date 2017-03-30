/*  Database name `mogoroomdb` ，房东签约的房间数量*/
use mogoroomdb;

ALTER TABLE `user_landlord`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '不管是否已经导入系统';

ALTER TABLE `user_landlord_info`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '不管是否已经导入系统';