/*  Database name `mogoroomdb` ����������ſ�������Ƿ��Ѿ��˻���֤���ֶ�*/
use mogoroomdb;

ALTER TABLE loan_landlord_payplan ADD refundStatus tinyint(1) NOT NULL DEFAULT 0 COMMENT '�Ƿ��Ѿ��˻���֤��(0:�� 1:�� 2:����Ҫ��)';