/* 
Database name `acct`
帐务系统帐号表添加网商字段
*/
use acct;

ALTER TABLE acct_account ADD COLUMN `mybankID` VARCHAR(32) DEFAULT NULL COMMENT '网商标识';