/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_busirec 
					ADD COLUMN origDate datetime DEFAULT NULL COMMENT 'ԭʼ��������';
															




