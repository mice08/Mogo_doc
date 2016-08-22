ALTER TABLE `acct`.`acct_bill_chghistory`   
  ADD COLUMN `oldMinAmount` DECIMAL(10,2) NULL   COMMENT '变更前最小支付金额' AFTER `oldDeadline`,
  ADD COLUMN `newMinAmount` DECIMAL(10,2) NULL   COMMENT '变更后最小支付金额' AFTER `newDeadline`