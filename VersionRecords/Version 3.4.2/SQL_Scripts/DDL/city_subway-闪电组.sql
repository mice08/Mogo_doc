/* Database name `mogoroomdb`�� �����߱���ӰٶȻ�ȡ����·�����ֶ� */
use mogoroomdb;

ALTER TABLE city_subway ADD COLUMN baiduName varchar(20) DEFAULT NULL  COMMENT '�ٶȵ���������';

update  city_subway set baiduName=name;