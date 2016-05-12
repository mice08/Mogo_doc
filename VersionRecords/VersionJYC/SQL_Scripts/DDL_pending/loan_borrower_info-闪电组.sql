/*  Database name `mogoroomdb` ，添加是否绑定银行卡成功(1:是 0:否)字段*/
USE mogoroomdb;
ALTER TABLE loan_borrower_info ADD COLUMN isBankcardBinded  TINYINT(1) COMMENT"是否绑定银行卡成功(1:是 0:否)";