/*  Database name `mogoroomdb` ���û�֥�����÷���ʷ�����2���µ��ֶ�*/
use mogoroomdb;

ALTER TABLE `user_zhima_score_his` ADD COLUMN errorCode varchar(10) comment '����״̬����¼֥�����÷��ص��쳣����', add column errorMesg varchar(50) comment '���ؽ������¼֥�����÷��ص��쳣��Ϣ���ͱ���һһ��Ӧ';
