/*  Database name `mogoroomdb` ��ҵ���¼���޸��ֶγ��� */
use mogoroomdb;

alter table `comm_business_record`   
  modify column `remark` varchar(2048) CHARSET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '�������� eg:�����˷��ݵ�����';