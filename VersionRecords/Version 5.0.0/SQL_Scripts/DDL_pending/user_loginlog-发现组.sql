/*user_loginlog表添加是否真实登录字段*/
USE mogoroomdb;

ALTER TABLE user_loginlog add column isValidated tinyint(1) COMMENT '是否真实登录(0:否 1:是)';  