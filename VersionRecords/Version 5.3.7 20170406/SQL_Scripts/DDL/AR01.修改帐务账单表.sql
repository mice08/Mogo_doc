/*添加帐务账单表状态字段*/
USE mogoroomdb;

ALTER TABLE acct.`acct_bill` MODIFY COLUMN `offlinePaid`  DECIMAL(10,2) NOT NULL DEFAULT 0 COMMENT '线下支付金额';