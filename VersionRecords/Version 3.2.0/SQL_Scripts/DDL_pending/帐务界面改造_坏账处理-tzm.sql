/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN badDebitAmount decimal(10,2) DEFAULT NULL COMMENT '坏账金额',
					 ADD COLUMN paidBadDebitAmount decimal(10,2) DEFAULT NULL COMMENT '已支付的坏账金额';
															




