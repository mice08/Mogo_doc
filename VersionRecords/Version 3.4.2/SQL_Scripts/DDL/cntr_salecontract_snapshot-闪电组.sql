use mogoroomdb;

drop table if exists cntr_salecontract_snapshot;

/*==============================================================*/
/* Table: cntr_salecontract_snapshot                            */
/*==============================================================*/
create table cntr_salecontract_snapshot
(
   id                   int(11) not null auto_increment comment '��ͬ����ID',
   contractId           int(11) not null comment '��ͬID',
   templetId            int(11) not null comment '��ͬģ��Id',
   params               varchar(1024) comment 'ǩ����ͬʱ�ĺ�ͬ����json',
   status               int(1) not null default 1 comment '��ͬ����״̬(0:��Ч 1:��Ч)',
   createBy             int(11) not null comment '������Id',
   createByType         int(1) not null comment '�û�����(����groupName=userType)',
   createTime           datetime not null comment '����ʱ��',
   updateBy             int(11) comment '������Id',
   updateByType         int(1) comment '�û�����(����groupName=userType)',
   updateTime           datetime comment '����ʱ��',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��ͬ���ձ�';


ALTER TABLE cntr_salecontract ADD COLUMN effectTime DATETIME NOT NULL DEFAULT '2010-01-01 00:00:00' COMMENT '��ͬģ����Чʱ��';

ALTER TABLE cntr_salecontract ADD COLUMN invalidTime DATETIME NOT NULL DEFAULT '2020-12-31 23:59:59' COMMENT '��ͬģ��ʧЧʱ��';