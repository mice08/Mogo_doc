/*  Database name `mogoroomdb` ��Ϊ������ҳ����������˵���ע�ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN userMemo varchar(200) DEFAULT NULL COMMENT '�û��˵���ע';
															




