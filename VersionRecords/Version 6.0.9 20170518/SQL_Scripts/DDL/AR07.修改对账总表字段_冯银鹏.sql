
use mogoroomdb;

ALTER TABLE `bill_checkbill_base` ADD COLUMN `outTradeNum` VARCHAR(64) NULL COMMENT '原始外部订单号';
ALTER TABLE  `bill_checkbill_base`  ADD  INDEX `billDate` (`billDate`);


use acct;
ALTER TABLE `acct_withdrawschedule` ADD COLUMN `acctId` int(11) NULL COMMENT '提现账户ID';