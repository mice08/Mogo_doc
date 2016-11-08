/*loan_landlord_credit表添加字段*/
USE mogoroomdb ;

ALTER TABLE `loan_landlord_credit` ADD COLUMN `rangeAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '规模动态额度' AFTER `prodTypeCode`,
 ADD COLUMN `roomCount` INT DEFAULT 0 NOT NULL COMMENT '房东房间数' AFTER `rangeAmount`,
 ADD COLUMN `onlineTradingAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '线上交易动态额度总额' AFTER `roomCount`,
 ADD COLUMN `deductionAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '额度扣减总额' AFTER `onlineTradingAmount`,
 ADD COLUMN `restoreAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '额度恢复总额' AFTER `deductionAmount`,
 ADD COLUMN `stashedAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '贷款申请中的额度占用' AFTER `restoreAmount`,
 ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '月租金总额' AFTER `stashedAmount`;

ALTER TABLE `loan_landlord_credit_his` ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '月租金总额';

ALTER TABLE `loan_landlord_credentials` DROP COLUMN `applyCityId`;