/*loan_contract�����Ģ�������������ʷ����ʱ���ֶ�*/
USE mogoroomdb;

ALTER TABLE loan_contract ADD COLUMN lenderApprovalTime datetime DEFAULT NULL  COMMENT 'Ģ�������������ʷ����ʱ��';