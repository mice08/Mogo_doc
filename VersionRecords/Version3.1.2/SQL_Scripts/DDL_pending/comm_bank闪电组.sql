/*  Database name `mogoroomdb` ���޸�comm_bank��sort�ֶ�����Ϊhot��
֮ǰsort�������򣬺�������ʹ��hot��ʾ���������Ƿ���*/
USE mogoroomdb;
ALTER TABLE comm_bank ADD COLUMN isHot TINYINT(1) DEFAULT 0 COMMENT"�Ƿ���(1:�� 0:��)" AFTER isLoanBand;