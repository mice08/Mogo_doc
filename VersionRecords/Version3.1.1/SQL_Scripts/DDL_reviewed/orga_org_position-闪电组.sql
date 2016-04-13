/*  Database name `mogoroomdb` ����֯��λ��ṹ*/
use mogoroomdb;
 
drop table if exists orga_org;
 
/*==============================================================*/
/* Table: orga_org                                */
/*==============================================================*/
create table orga_org
(
    id                   int(11) not null auto_increment comment '��֯��id',
    parentId             int(11) comment '�ϼ���֯id',
    orgName              varchar(50) not null comment '��֯����',
    shortName            varchar(50) comment '��֯���',
    orgCode              varchar(10) not null comment '��֯����',
    level                tinyint(2) comment '��֯�㼶',
    fullPath             varchar(50) comment '��֯·��',
    status               tinyint(1) not null comment '״̬(0:��Ч 1:��Ч)',
    sort                 tinyint(2) comment '��֯����',
    orgType              tinyint(2) comment '����(�ο�groupName=UserType)',
    createBy             int(11) not null comment '������',
    createByType         tinyint(2) not null comment '����������(����groupName=userType)',
    createTime           datetime not null comment '����ʱ��',
    updateBy             int(11) comment '������',
    updateByType         tinyint(2) comment '����������(����groupName=userType)',
    updateTime           datetime comment '����ʱ��',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��֯�ܹ���';
 
 
drop table if exists orga_org_position;
 
/*==============================================================*/
/* Table: orga_org_position                                    */
/*==============================================================*/
create table orga_org_position
(
    id                   int(11) not null auto_increment comment '�û���λ��ϵ��id',
    userId               int(11) not null comment '�û�id',
    orgId                int(11) not null comment '��֯id',
    positionId               int(11) not null comment '��λID',
    status               tinyint(1) comment '״̬(0:��Ч,1:��Ч)',
    createBy             int(11) comment '������ID',
    createByType         int(1) comment '����������(����groupName=userType)',
    createTime           datetime comment '����ʱ��',
    updateBy             int(11) comment '������ID',
    updateByType         int(1) comment '����������(����groupName=userType)',
    updateTime           datetime comment '����ʱ��',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�û���֯��λ��ϵ��';
 
 
drop table if exists orga_position;
 
/*==============================================================*/
/* Table: orga_position                                             */
/*==============================================================*/
create table orga_position
(
    id                   int(11) not null auto_increment comment '�û���λid',
    positionName              varchar(50) not null comment '��λ����',
    status               tinyint(1) comment '��λ״̬��0:��Ч,1:��Ч��',
    positionType              tinyint(2) comment '����(����groupName=userType)',
    createBy             int(11) not null comment '������id',
    createByType         tinyint(2) not null comment '����������(����groupName=userType)',
    createTime           datetime not null comment '����ʱ��',
    updateBy             int(11) comment '������',
    updateByType         tinyint(2) comment '����������(����groupName=userType)',
    updateTime           datetime comment '����ʱ��',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='��λ��';