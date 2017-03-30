use `mogoroomdb`;
ALTER TABLE `oder_bookorder`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `oder_signedorder`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `loan_landlord_mgmt`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `loan_landlord_buyback`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `loan_landlord_payplan`  ADD  INDEX `index_subsId` (`subsId`);
ALTER TABLE `loan_landlord_repayplan`  ADD  INDEX `index_subsId` (`subsId`);

use `acct`;
ALTER TABLE `acct_bill`  ADD  INDEX `index_subsId` (`subsId`);

