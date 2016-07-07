/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_busifeedtl
ADD COLUMN prooofPicId int(11) DEFAULT NULL COMMENT '凭证图片',
ADD COLUMN prooofNumber String(45) DEFAULT NULL COMMENT '凭证编号';
									