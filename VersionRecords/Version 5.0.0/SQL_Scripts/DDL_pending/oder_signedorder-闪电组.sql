/*oder_signedorder������Ƿ��ѽ����ֶ�*/
USE mogoroomdb;

ALTER TABLE oder_signedorder add column acctFinished  tinyint(1) default 0 COMMENT '�Ƿ��ѽ���(0:δ���� 1:�ѽ���)';  

ALTER TABLE oder_signedorder_his add column acctFinished  tinyint(1) default 0 COMMENT '�Ƿ��ѽ���(0:δ���� 1:�ѽ���)';  