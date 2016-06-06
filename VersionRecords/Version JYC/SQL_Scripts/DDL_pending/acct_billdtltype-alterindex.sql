use acct;

ALTER TABLE `acct_billdtltype`
DROP INDEX `idx_billDtlName` ,
ADD UNIQUE INDEX `idx_billDtlName` (`billDtlName`, `usageType`);
