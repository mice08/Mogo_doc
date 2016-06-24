/*  Database name `mogoroomdb` ，为帐务需求添加字段*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN minPayAmount BigDecimal(10,2) DEFAULT NULL COMMENT '最小支付金额';

ALTER TABLE bill_salebill  ADD COLUMN minPayAmount BigDecimal(10,2) DEFAULT NULL COMMENT '最小支付金额';

ALTER TABLE bill_salebill  ADD COLUMN unpayAmount BigDecimal(10,2) DEFAULT NULL COMMENT '未支付金额';

ALTER TABLE acct.acct_busirec  ADD COLUMN verified tinyint(3) DEFAULT NULL COMMENT '核销标识';
