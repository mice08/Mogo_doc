/*  Database name `mogoroomdb` ，为新帐务页面需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '最小支付金额';

ALTER TABLE bill_salebill  ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '最小支付金额';

ALTER TABLE bill_salebill  ADD COLUMN unpayAmount decimal(10,2) DEFAULT NULL COMMENT '未支付金额';

ALTER TABLE acct.acct_busirec  ADD COLUMN verified tinyint(3) DEFAULT NULL COMMENT '核销标识(0:未核销 1:已核销)';
