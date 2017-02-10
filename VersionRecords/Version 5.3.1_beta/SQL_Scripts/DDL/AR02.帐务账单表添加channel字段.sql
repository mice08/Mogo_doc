/*添加帐务账单表渠道字段*/
USE mogoroomdb;

ALTER TABLE acct.`acct_bill` 
ADD COLUMN channel TINYINT(4) DEFAULT 0 COMMENT '操作渠道';
