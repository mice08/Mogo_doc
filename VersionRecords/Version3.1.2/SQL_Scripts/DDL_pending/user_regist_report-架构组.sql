/* 数据库mogoroomdb，增加手机归属地库表 */
use mogoroomdb;

--添加新的渠道、渠道明细，归属地 字段
ALTER TABLE `user_renter`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '渠道类型,关联字典表comm_dictionary值groupName=channel' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2'  COMMENT '渠道明细,关联字典表comm_dictionary值groupName=regChannelDtl' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '手机归属地编码' AFTER `regChannelDtl`;

--添加新的渠道、渠道明细，归属地 字段
ALTER TABLE `user_info`
	ADD COLUMN `regChannel` INT(1) NOT NULL DEFAULT '3' COMMENT '渠道类型(1:租客APP 2:BS后台 3:官网 4:房东APP 5:房东PC 6:定时任务 7:后台操作 8:搜索引擎 9:租客WAP)' ,
	ADD COLUMN `regChannelDtl` INT(1) NOT NULL DEFAULT '2' COMMENT '渠道明细' AFTER `regChannel`,
	ADD COLUMN `regMobileCity` VARCHAR(10) NOT NULL DEFAULT '' COMMENT '手机归属地编码 关联表comm_mobile_city.areaCode ，需要手机前7位与归属地 保证唯一' AFTER `regChannelDtl`;


--添加手机归属地离线库表
CREATE TABLE `comm_mobile_city` (
	`id` INT(11) NOT NULL COMMENT '主键ID',
	`mobileNumber` VARCHAR(20) NULL DEFAULT NULL COMMENT '手机号',
	`mobileArea` VARCHAR(50) NULL DEFAULT NULL COMMENT '归属地',
	`mobileType` VARCHAR(50) NULL DEFAULT NULL COMMENT '手机类型',
	`areaCode` VARCHAR(10) NULL DEFAULT NULL COMMENT '地区码',
	`postCode` VARCHAR(50) NULL DEFAULT NULL COMMENT '邮编',
	PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='租户手机归属地表';
