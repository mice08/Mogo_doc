/*  Database name `mogoroomdb` ��comm_app_version�޸�channel�ֶε����ͼ�����*/
use mogoroomdb;

ALTER TABLE comm_app_version MODIFY COLUMN channel int(2) not null comment '����';