/*  Database name `mogoroomdb` ��loan_bank_mapping������ֶ�*/
USE mogoroomdb;
ALTER TABLE loan_bank_mapping ADD COLUMN credits DECIMAL(12,2) COMMENT "�����޶�",
ADD COLUMN isSmsVerified TINYINT(1) COMMENT "�����Ƿ�֧�ֶ�����֤(0:�� 1:��)";