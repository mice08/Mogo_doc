/*  Database name `mogoroomdb` ，为房东表添加法定代表人字段*/
use mogoroomdb;

ALTER TABLE user_landlord_info ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '法定代表人';

ALTER TABLE user_landlord  ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '法定代表人';


ALTER TABLE user_landlord_info_his ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '法定代表人';

ALTER TABLE user_landlord_his  ADD COLUMN legalRepresentative varchar(45) DEFAULT NULL COMMENT '法定代表人';
