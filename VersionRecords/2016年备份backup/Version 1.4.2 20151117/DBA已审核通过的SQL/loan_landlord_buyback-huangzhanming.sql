ALTER TABLE `loan_landlord_buyback`   
  ADD COLUMN `returnDeposit` DECIMAL(12,2) DEFAULT 0  NOT NULL  COMMENT '��֤�𷵻�' AFTER `backFee`,
  ADD COLUMN `lastCalcTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '���ɽ��������' AFTER `waitRepayPenalty`;
