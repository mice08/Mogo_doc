/*  Database name `mogoroomdb` 注册来源添加手机归属地冗余字段*/
use mogoroomdb;
  
ALTER TABLE `user_renter` ADD COLUMN `regMobileCityValue` VARCHAR(30)  DEFAULT '未知' COMMENT '手机归属地' AFTER `regMobileCity`;
