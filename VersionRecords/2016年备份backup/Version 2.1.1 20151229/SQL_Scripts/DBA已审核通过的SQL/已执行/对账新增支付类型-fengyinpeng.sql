USE mogoroomdb;

ALTER TABLE `bill_checkbill_base` ADD COLUMN payType INT(11) COMMENT '0:表示付款。1：表示退款' ;