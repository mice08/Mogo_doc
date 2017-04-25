/*  Database name `mogoroomdb`  增加租客申请贷款的渠道字段*/
USE mogoroomdb;

ALTER TABLE loan_contract 
ADD COLUMN applyChannel INT(3) NULL  COMMENT '租客申请贷款的渠道(参照字典表组名:channel)';