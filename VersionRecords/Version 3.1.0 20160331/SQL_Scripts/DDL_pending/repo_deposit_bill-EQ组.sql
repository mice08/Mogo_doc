/*  Database name `mogoroomdb` ��Ͷ�߱�����ֶ�*/
use mogoroomdb;

ALTER TABLE supp_complain 
ADD COLUMN complainTarget INT(1) NOT NULL DEFAULT 9 COMMENT 'Ͷ�߶���(1:���� 2:���� 3:�ܼ� 9:����)' AFTER complainPhone;