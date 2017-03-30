ALTER TABLE `loan_landlord_buyback`   
  ADD COLUMN `returnDeposit` DECIMAL(12,2) DEFAULT 0  NOT NULL  COMMENT '保证金返还' AFTER `backFee`,
  ADD COLUMN `lastCalcTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '滞纳金计算日期' AFTER `waitRepayPenalty`;
