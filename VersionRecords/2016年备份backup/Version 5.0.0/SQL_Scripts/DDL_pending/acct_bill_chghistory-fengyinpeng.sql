ALTER TABLE `acct`.`acct_bill_chghistory`   
  ADD COLUMN `oldMinAmount` DECIMAL(10,2) NULL   COMMENT '���ǰ��С֧�����' AFTER `oldDeadline`,
  ADD COLUMN `newMinAmount` DECIMAL(10,2) NULL   COMMENT '�������С֧�����' AFTER `newDeadline`