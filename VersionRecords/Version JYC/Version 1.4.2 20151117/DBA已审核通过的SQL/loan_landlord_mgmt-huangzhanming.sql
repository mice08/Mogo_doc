ALTER TABLE `loan_landlord_mgmt`   
  ADD COLUMN `feeRate` INT(6) NULL  COMMENT '服务费费率（万分比）' AFTER `bizContractId`;