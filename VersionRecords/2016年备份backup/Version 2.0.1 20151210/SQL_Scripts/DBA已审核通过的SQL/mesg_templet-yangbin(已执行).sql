/*  Database name `mogoroomdb` ������Ϣ��ϵ��ṹ*/
use mogoroomdb;


drop table if exists mesg_subtemplet;
create table mesg_subtemplet
(
   id                   int(11) auto_increment not null comment '��ģ��id',
   templetId              int(11) not null comment '��Ϣģ��id',
   templetType            int(2) not null comment '���ͣ��ο��ֵ��groupName=templetType��1-���ţ�2-�ʼ���3-���ͣ�4-΢�ţ�',
   templetTitle         varchar(100) not null comment 'ģ�����',
   templetContent         varchar(1000) not null comment 'ģ������',
   status               int(1) not null comment 'ģ��״̬��0���ã�1����',
   valid                int(1) not null comment 'ɾ����־��0ɾ����1δɾ��',
   outTempletId         varchar(64) comment '��������Ϣģ��id',
   jumpCode             varchar(20) comment '��ת����',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ϣ��ģ���';

