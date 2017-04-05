USE mogoroomdb;

ALTER TABLE  `bill_checkbill_zhifubao` ADD COLUMN platAccount VARCHAR(30) COMMENT '平台账户' ;

ALTER TABLE `bill_checkbill_base` ADD COLUMN platAccount VARCHAR(30) COMMENT '平台账户' ;

ALTER TABLE `bill_checkbill_result`ADD COLUMN platAccount VARCHAR(30) COMMENT '平台账户' ;