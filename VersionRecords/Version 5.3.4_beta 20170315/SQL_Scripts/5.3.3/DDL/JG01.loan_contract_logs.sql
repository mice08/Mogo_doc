/*  Database name `mogoroomdb`  增加索引 */
USE mogoroomdb;

ALTER TABLE loan_contract_logs 
ADD  INDEX `loanContractId` (`loanContractId`);