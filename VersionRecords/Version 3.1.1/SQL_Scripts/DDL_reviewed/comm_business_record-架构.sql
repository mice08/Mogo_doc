/*  Database name `mogoroomdb` ��ҵ���¼���޸��ֶγ��� */
use mogoroomdb;

alter table `comm_business_record`   
  modify column `remark` varchar(2048) NOT NULL COMMENT '�������� eg:�����˷��ݵ�����';