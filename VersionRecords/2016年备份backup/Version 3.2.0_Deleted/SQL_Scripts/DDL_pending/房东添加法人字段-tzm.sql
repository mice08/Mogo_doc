/*  Database name `mogoroomdb` ��Ϊ��������ӷ����������ֶ�*/
use mogoroomdb;

ALTER TABLE user_landlord_info ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '����������';

ALTER TABLE user_landlord  ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '����������';


ALTER TABLE user_landlord_info_his ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '����������';

ALTER TABLE user_landlord_his  ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '����������';
