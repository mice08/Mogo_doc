/*  Database name `mogoroomdb` ��Ϊ������ҳ����������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '��С֧�����';

ALTER TABLE bill_salebill  
			ADD COLUMN minPayAmount decimal(10,2) DEFAULT NULL COMMENT '��С֧�����',
			ADD COLUMN unpayAmount decimal(10,2) DEFAULT NULL COMMENT 'δ֧�����';



ALTER TABLE acct.acct_busirec  
					ADD COLUMN verifyPerson Int(11)  DEFAULT NULL COMMENT '������',
					ADD COLUMN verifyDate datetime  DEFAULT NULL COMMENT '����ʱ��',
					ADD COLUMN subsId Int(11)  DEFAULT NULL COMMENT 'ͳһ����id',
					ADD COLUMN verified tinyint(3) DEFAULT NULL COMMENT '������ʶ(0:δ���� 1:�Ѻ���)';
															
															
ALTER TABLE acct.acct_bill 
						ADD COLUMN createBy Int(11) DEFAULT NULL COMMENT '������',
						ADD COLUMN periodYear Int(11) DEFAULT NULL COMMENT '������(1-2���е�1)',
						ADD COLUMN periodStage Int(11) DEFAULT NULL COMMENT '������(1-2���е�2)',
						ADD COLUMN startDate datetime DEFAULT NULL COMMENT '��ʼ����',
						ADD COLUMN endDate datetime DEFAULT NULL COMMENT '��������';
						




