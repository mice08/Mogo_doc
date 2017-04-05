/*  Database name `mogoroomdb` ，为用户历史资料表添加字段*/
use mogoroomdb;

ALTER TABLE `user_landlord_his`   
  ADD COLUMN `signCount` INT(8) DEFAULT 0  NOT NULL COMMENT '不管是否已经导入系统',
  ADD COLUMN `landlordType` VARCHAR(10) DEFAULT NULL   COMMENT '房东类型';
  
  
ALTER TABLE `user_info_his`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '渠道类型(关联字典表comm_dictionary值groupName=channel)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT '渠道明细(关联字典表comm_dictionary值groupName=regChannelDtl)' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '手机归属地编码 关联表city.id ，需要手机前7位与归属地 保证唯一' AFTER `regChannelDtl`;
	
	
ALTER TABLE user_info ADD COLUMN incomeLevel tinyint(1) DEFAULT NULL COMMENT '收入水平,groupName=income';
ALTER TABLE user_info_his ADD COLUMN incomeLevel tinyint(1) DEFAULT NULL COMMENT '收入水平,groupName=income';