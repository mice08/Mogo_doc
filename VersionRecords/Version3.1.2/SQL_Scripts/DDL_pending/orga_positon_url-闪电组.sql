/*  Database name `mogoroomdb` ���½���֯��λȨ�ޱ�*/

use mogoroomdb;

drop table if exists orga_positon_url;

/*==============================================================*/
/* Table: orga_positon_url                                      */
/*==============================================================*/
create table orga_positon_url
(
   id                   int(11) not null auto_increment comment 'ID',
   orgId                int(11) not null comment '����ID������orga_org��id',
   positionId           int(11) not null comment '��λID������orga_position��id',
   urlType              tinyint(2) not null comment '����',
   url                  varchar(100) not null comment 'url��ַ',
   createBy             int(11) not null comment '������',
   createTime           datetime not null comment '����ʱ��',
   createByType         tinyint(2) not null comment '���������ͣ��ο��ֵ������:userType��',
   updateBy             int(11) comment '�޸���',
   updateTime           datetime comment '�޸�ʱ��',
   updateByType         tinyint(2) comment '�޸������ͣ��ο��ֵ������:userType��',
   status               tinyint(1) not null comment '�Ƿ���Ч(0:��Ч 1:��Ч)',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��֯��λȨ�ޱ�';
