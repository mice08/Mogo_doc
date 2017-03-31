use mogoroomdb;
ALTER TABLE `comm_business_record_mapping` ADD COLUMN `tableKey` varchar(20) default null COMMENT '业务表主键字段';