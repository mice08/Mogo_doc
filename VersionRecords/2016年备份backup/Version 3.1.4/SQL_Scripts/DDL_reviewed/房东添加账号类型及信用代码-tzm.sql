/*  Database name `mogoroomdb` ，为房东表添加账号类型及信用代码字段*/
use mogoroomdb;

ALTER TABLE user_landlord 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '账号类型(0:个人 1:公司)',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '信用代码';

ALTER TABLE user_landlord_info 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '账号类型(0:个人 1:公司)',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '信用代码';

ALTER TABLE user_landlord_his 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '账号类型(0:个人 1:公司)',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '信用代码';

ALTER TABLE user_landlord_info_his
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '账号类型(0:个人 1:公司)',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '信用代码';
