/*  Database name `mogoroomdb` ����������ſ�������Ƿ��˻���֤���ֶ�*/
use mogoroomdb;

ALTER TABLE loan_landlord_payplan ADD refundStatus INT(1) NOT NULL DEFAULT 0 COMMENT '�Ƿ��˻���֤�� 0:�� 1:�� 2:����Ҫ��';