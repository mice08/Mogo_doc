/*  Database name `mogoroomdb` ��loan_bank_mapping������ֶ�credits,����Ƿ���Ҫ������֤�ֶ�(1:�� 0:��)*/
USE mogoroomdb;
ALTER TABLE loan_bank_mapping ADD COLUMN credits DECIMAL(12,2) COMMENT "�����޶�",
ADD COLUMN isSMSNeeded  TINYINT(1) COMMENT"�Ƿ���Ҫ������֤(1:�� 0:��)";