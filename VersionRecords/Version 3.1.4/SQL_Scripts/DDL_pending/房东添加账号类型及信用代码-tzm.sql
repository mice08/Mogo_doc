/*  Database name `mogoroomdb` ��Ϊ����������˺����ͼ����ô����ֶ�*/
use mogoroomdb;

ALTER TABLE user_landlord 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '0:���� 1:��˾',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '���ô���';

ALTER TABLE user_landlord_info 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '0:���� 1:��˾',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '���ô���';

ALTER TABLE user_landlord_his 
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '0:���� 1:��˾',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '���ô���';

ALTER TABLE user_landlord_info_his
	ADD COLUMN acctType tinyint(3) DEFAULT NULL COMMENT '0:���� 1:��˾',
	ADD COLUMN creditCode varchar(45) DEFAULT NULL COMMENT '���ô���';
