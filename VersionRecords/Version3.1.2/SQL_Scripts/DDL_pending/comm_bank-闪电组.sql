/*  Database name `mogoroomdb` ����loan_landlord_buyback��������1���ֶΣ�������ʶ���ֻ���ʱ��ͻ��˶��ٱ���*/
USE mogoroomdb;

ALTER TABLE loan_landlord_buyback ADD COLUMN RenterRepayedAmount decimal(12,2) not null DEFAULT 0 COMMENT "��ͻ�����";