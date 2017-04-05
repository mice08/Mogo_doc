/*  Database name `mogoroomdb` ，为房东表添加申请城市字段*/
use mogoroomdb;

ALTER TABLE user_landlord_info ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';

ALTER TABLE user_landlord  ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';


ALTER TABLE user_landlord_info_his ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';

ALTER TABLE user_landlord_his  ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';
