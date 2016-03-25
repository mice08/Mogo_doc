/*  Database name `mogoroomdb` ，图片表添加修改人、修改人类型、修改时间字段*/
use mogoroomdb;
 
alter table `comm_picture` add column `updateBy` int(11) NULL COMMENT '修改人',
	add column `updateByType` tinyint(2) NULL COMMENT '修改人类型(参考字典表组名:userType)',
	add column `updateTime` datetime NULL COMMENT '修改时间';