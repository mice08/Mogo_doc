/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN badDebitAmount decimal(10,2) DEFAULT NULL COMMENT 'ԭʼ���˽��';
															




