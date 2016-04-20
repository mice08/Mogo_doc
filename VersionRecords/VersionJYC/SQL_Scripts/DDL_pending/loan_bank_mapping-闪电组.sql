/*  Database name `mogoroomdb` ，loan_bank_mapping表添加字段*/
USE mogoroomdb;
ALTER TABLE loan_bank_mapping ADD COLUMN credits DECIMAL(12,2) COMMENT "单笔限额";