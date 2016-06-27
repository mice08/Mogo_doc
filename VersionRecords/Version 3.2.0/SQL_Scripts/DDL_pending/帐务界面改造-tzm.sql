/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busirec 
					ADD COLUMN origDate datetime DEFAULT NULL COMMENT '原始单据日期';
															




