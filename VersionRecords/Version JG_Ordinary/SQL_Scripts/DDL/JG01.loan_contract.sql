/*新增资方放款信息字段*/
USE mogoroomdb;

ALTER TABLE `loan_contract`
ADD COLUMN `fundfeeRate` int(11) NULL  COMMENT '资方放款手续费费率' AFTER `autoRepay`,
ADD COLUMN `fundfeeAmount`  decimal(12,2) NULL   COMMENT '资方放款手续费金额' AFTER `fundfeeRate`,
ADD COLUMN `fundActualAmount`  decimal(12,2) NULL COMMENT '资方实际放款金额' AFTER `fundfeeAmount`;


