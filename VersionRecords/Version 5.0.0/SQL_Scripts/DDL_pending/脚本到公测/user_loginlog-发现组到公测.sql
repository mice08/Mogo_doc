/*user_loginlog������Ƿ���ʵ��¼�ֶ�*/
USE mogoroomdb;

ALTER TABLE user_loginlog add column credential varchar(16) COMMENT '�û�ƾ�ݣ���password/token';  
