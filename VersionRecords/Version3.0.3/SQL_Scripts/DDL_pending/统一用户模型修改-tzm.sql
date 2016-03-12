/*  修改用户统一体系以及历史记录相关表*/
use mogoroomdb;

ALTER TABLE user_renter_info ADD COLUMN  `soDoneCode` INT(11) UNSIGNED NOT NULL COMMENT '对应common_business_record.id';

CREATE UNIQUE INDEX IDX_DONECODE ON user_renter_info(soDoneCode); 

ALTER TABLE user_info  DROP COLUMN soDoneCode;

ALTER TABLE user_info_his  DROP COLUMN soDoneCode;

CREATE INDEX IDX_DONECODE ON user_info(done_Code); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_info_his(done_Code); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_landlord_info(soDoneCode); 

CREATE UNIQUE INDEX IDX_DONECODE ON user_password(soDoneCode); 


DROP INDEX IDX_USERID ON user_password;

CREATE INDEX IDX_USERID ON user_password(userId); 

ALTER TABLE user_usertype ADD COLUMN  `soDoneCode` INT(11) UNSIGNED NOT NULL COMMENT '对应common_business_record.id';

