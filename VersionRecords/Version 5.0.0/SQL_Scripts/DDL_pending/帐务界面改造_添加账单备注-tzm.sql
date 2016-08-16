/*  Database name `mogoroomdb` ，为新帐务页面需求添加账单备注字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN userMemo varchar(200) DEFAULT NULL COMMENT '用户账单备注';
															




