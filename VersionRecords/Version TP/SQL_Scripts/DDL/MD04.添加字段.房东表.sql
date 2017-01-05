use mogoroomdb;
/*添加法人身份证*/

ALTER TABLE user_landlord ADD legalIdentityId varchar(20) DEFAULT NULL, COMMENT '法人身份证';