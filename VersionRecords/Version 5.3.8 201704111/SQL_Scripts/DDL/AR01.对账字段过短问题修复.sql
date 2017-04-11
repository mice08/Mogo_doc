/*** 生产环境已经执行过不用再执行，主要是测试环境执行。 早期微信每日自动对账正常运转,后来业务量增加，由于列长度太短，导致对账失败。需要SQL修复***/
USE mogoroomdb;

ALTER TABLE  `bill_checkbill_weixin` MODIFY COLUMN `bizOrderNum`  VARCHAR(64)  NULL   COMMENT '商户订单号';
ALTER TABLE  `bill_checkbill_zhifubao` MODIFY COLUMN `orderNum`  VARCHAR(64)  NULL   COMMENT '商户订单号';
ALTER TABLE  `bill_checkbill_base` MODIFY COLUMN `bizOrderNum`  VARCHAR(64)  NULL   COMMENT '商户订单号';