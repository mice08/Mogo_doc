/*  Database name `mogoroomdb` ，为房东表添加账号类型,信用代码字段*/
use mogoroomdb;

ALTER TABLE user_landlord  ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';

ALTER TABLE user_landlord  ADD COLUMN applyCityId INT(11) DEFAULT NULL COMMENT '房东申请城市id';

