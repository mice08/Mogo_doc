/*�������й��������ֶ�credits��isSMSNeeded */
USE mogoroomdb;

ALTER TABLE loan_bank_mapping  ADD COLUMN credits DECIMAL(12,2) COMMENT '�����޶�';

ALTER TABLE loan_bank_mapping  ADD COLUMN isSMSNeeded  TINYINT(1) COMMENT '�Ƿ���Ҫ������֤(1:�� 0:��)';