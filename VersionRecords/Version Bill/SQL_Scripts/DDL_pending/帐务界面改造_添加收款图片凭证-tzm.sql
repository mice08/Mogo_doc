/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_busifeedtl
ADD COLUMN prooofPicId int(11) DEFAULT NULL COMMENT 'ƾ֤ͼƬ',
ADD COLUMN prooofNumber String(45) DEFAULT NULL COMMENT 'ƾ֤���';
									