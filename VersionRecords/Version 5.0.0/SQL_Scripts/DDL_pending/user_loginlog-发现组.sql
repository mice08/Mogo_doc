/*user_loginlog������Ƿ���ʵ��¼�ֶ�*/
USE mogoroomdb;

ALTER TABLE user_loginlog add column isValidated tinyint(1) COMMENT '�Ƿ���ʵ��¼(0:�� 1:��)';  