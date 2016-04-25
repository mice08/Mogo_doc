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
   urlType              varchar(10) not null comment 'url��ʾ��ҳ��',
   urlAddr              varchar(100) not null comment 'url��ַ',
   createBy             int(11) not null comment '������',
   createTime           datetime not null comment '����ʱ��',
   updateBy             int(11) comment '�޸���',
   updateTime           datetime comment '�޸�ʱ��',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��λ��֯Ȩ�ޱ�';
