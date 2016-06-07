/*  Database name `mogoroomdb` ，loan_contract表添加字段贷款申请时间*/
USE mogoroomdb;

ALTER TABLE loan_contract ADD loanApplyTime DATETIME DEFAULT NULL COMMENT '贷款申请时间';