/*  Database name `mogoroomdb` ��Ϊ���񱨱���������ֶ�*/
use mogoroomdb;


ALTER TABLE acct.acct_busirec  ADD COLUMN verifyPerson Int(11)  DEFAULT NULL COMMENT '������',
															ADD COLUMN verifyDate datetime  DEFAULT NULL COMMENT '����ʱ��',
															ADD COLUMN subsId Int(11)  DEFAULT NULL COMMENT 'ͳһ����id';
															
															
ALTER TABLE acct.acct_bill ADD COLUMN createBy Int(11) DEFAULT NULL COMMENT '������',
												ADD COLUMN updateBy Int(11) DEFAULT NULL COMMENT '������';
