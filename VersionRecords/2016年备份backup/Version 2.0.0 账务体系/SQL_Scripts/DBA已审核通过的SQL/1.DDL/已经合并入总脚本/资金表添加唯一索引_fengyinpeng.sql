USE acct;
ALTER TABLE `acct`.`acct_fund`   
  ADD  UNIQUE INDEX `accountId_fundType_unique` (`acctId`, `fundType`);