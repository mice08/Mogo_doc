-- 添加房东类型
USE mogoroomdb;

ALTER TABLE `user_landlord`
ADD COLUMN `landlordType`  tinyint(1) NOT NULL COMMENT '房东类型 0:企业版房东；1个人版房东' AFTER `landlordSource`;

/* 初始化全局脚本 */
update user_landlord set landlordType = 0 ;