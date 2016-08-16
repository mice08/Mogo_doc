/*  Database name `mogoroomdb` ，为新帐务页面需求添加收款备注字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busirec ADD COLUMN userMemo varchar(200) DEFAULT NULL COMMENT '用户收款备注';
															




