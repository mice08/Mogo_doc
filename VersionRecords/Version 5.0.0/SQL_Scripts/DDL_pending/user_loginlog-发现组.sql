/*user_loginlog表添加是否真实登录字段*/
USE mogoroomdb;

ALTER TABLE user_loginlog add column credential varchar(16) COMMENT '用户凭据，如password/token';  
