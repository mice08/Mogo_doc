/*贷款银行管理表，添加字段credits，isSMSNeeded */
USE mogoroomdb;

ALTER TABLE loan_bank_mapping  ADD COLUMN credits DECIMAL(12,2) COMMENT '单笔限额';

ALTER TABLE loan_bank_mapping  ADD COLUMN isSMSNeeded  TINYINT(1) COMMENT '是否需要短信验证(1:是 0:否)';