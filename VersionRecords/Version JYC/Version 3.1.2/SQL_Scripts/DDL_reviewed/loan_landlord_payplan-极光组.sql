/*  Database name `mogoroomdb` ����������ſ�������Ƿ��Ѿ��˻���֤���ֶ�*/
use mogoroomdb;

ALTER TABLE loan_landlord_payplan ADD depositStatus tinyint(1) NOT NULL DEFAULT 0 COMMENT '��֤��״̬(0:δ�� 1:�ѽ���δ�� 2:����ǰ�˻� 3:�������˻�)';