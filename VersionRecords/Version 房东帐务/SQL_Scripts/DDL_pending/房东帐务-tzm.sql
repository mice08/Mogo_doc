/*  Database name `mogoroomdb` ��Ϊ������������ֶ�*/
use mogoroomdb;

ALTER TABLE acct.acct_bill ADD COLUMN minPayAmount Decimal(10,2) DEFAULT NULL COMMENT '��С֧�����';

ALTER TABLE bill_salebill  ADD COLUMN minPayAmount Decimal(10,2) DEFAULT NULL COMMENT '��С֧�����';

ALTER TABLE bill_salebill  ADD COLUMN unpayAmount Decimal(10,2) DEFAULT NULL COMMENT 'δ֧�����';

ALTER TABLE acct.acct_busirec  ADD COLUMN verified tinyint(3) DEFAULT NULL COMMENT '������ʶ';
