/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_busifeedtl
ADD COLUMN proofPicId int(11) DEFAULT NULL COMMENT 'ƾ֤ͼƬ',
ADD COLUMN proofNumber varchar(45) DEFAULT NULL COMMENT 'ƾ֤���';
									