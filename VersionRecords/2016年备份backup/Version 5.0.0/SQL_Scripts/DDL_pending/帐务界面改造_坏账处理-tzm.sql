/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN badDebitAmount decimal(10,2) DEFAULT NULL COMMENT '原始坏账金额';
															




