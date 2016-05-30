/*  Database name `mogoroomdb` ，loan_bank_mapping表添加字段credits,添加是否需要短信验证字段(1:是 0:否)*/
USE mogoroomdb;
ALTER TABLE loan_bank_mapping ADD COLUMN credits DECIMAL(12,2) COMMENT "单笔限额",
ADD COLUMN isSMSNeeded  TINYINT(1) COMMENT"是否需要短信验证(1:是 0:否)";