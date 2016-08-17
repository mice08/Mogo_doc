/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busifeedtl
ADD COLUMN proofPicGroupId int(11) DEFAULT NULL COMMENT '凭证图片',
ADD COLUMN proofNumber varchar(45) DEFAULT NULL COMMENT '凭证编号';
									