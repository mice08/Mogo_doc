/*  Database name `mogoroomdb` ��Ϊ�����������������ֶ�*/
use mogoroomdb;

ALTER TABLE user_landlord_info ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '�����������id';

ALTER TABLE user_landlord  ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '�����������id';