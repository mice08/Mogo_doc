/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_busirec 
					ADD COLUMN seq Int(11) DEFAULT NULL COMMENT '����ĳͳһ�������տ����к�',
					ADD COLUMN feeDate datetime DEFAULT NULL COMMENT '�տ�����';
															
															
ALTER TABLE acct.acct_bill 
						ADD COLUMN seq Int(11) DEFAULT NULL COMMENT '����ĳͳһ�������˵����к�';		




