
ALTER TABLE `mogoroomdb`.`oder_bookorder`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `mogoroomdb`.`oder_signedorder`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `acct`.`acct_bill`  ADD  INDEX `index_subsId` (`subsId`);

ALTER TABLE `mogoroomdb`.`loan_landlord_mgmt`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `mogoroomdb`.`loan_landlord_buyback`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `mogoroomdb`.`loan_landlord_payplan`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `mogoroomdb`.`loan_landlord_repayplan`  ADD  INDEX `index_subsId` (`subsId`);

