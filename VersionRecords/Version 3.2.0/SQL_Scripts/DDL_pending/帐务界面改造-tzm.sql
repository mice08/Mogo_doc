/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busirec 
					ADD COLUMN seq Int(11) DEFAULT NULL COMMENT '属于某统一订单的收款序列号',
					ADD COLUMN feeDate datetime DEFAULT NULL COMMENT '收款日期';
															
															
ALTER TABLE acct.acct_bill 
						ADD COLUMN seq Int(11) DEFAULT NULL COMMENT '属于某统一订单的账单序列号';		




