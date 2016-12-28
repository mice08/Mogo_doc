USE mogoroomdb;
ALTER TABLE `bill_paylog_weixin`  ADD COLUMN `isCredit` TINYINT(4) COMMENT '是否使用信用卡' ;
ALTER TABLE `bill_paylog_zhifubao` ADD COLUMN `isCredit` TINYINT(4) COMMENT '是否使用信用卡' ;
ALTER TABLE `bill_paylog_zhifubao` ADD COLUMN `out_channel_type` VARCHAR(50) COMMENT '交易类型' ;