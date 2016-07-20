use mogoroomdb;
 
drop table if exists mesg_category_role;
 
/*==============================================================*/
/* Table: mesg_category_role                                    */
/*==============================================================*/
create table mesg_category_role
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    categoryId           int(11) comment '��Ϣ���id',
    roleId               int(11) comment '��ɫid',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ����ɫ��ϵ��';
 
 
drop table if exists mesg_category;
 
/*==============================================================*/
/* Table: mesg_category                                         */
/*==============================================================*/
create table mesg_category
(
    id                   int(11) not null auto_increment comment '��Ϣ����id',
    categoryName         varchar(50) not null comment '��Ϣ�����',
    categoryCode         varchar(50) comment '��Ϣ������',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ����';
 
 
drop table if exists mesg_category_templet;
 
/*==============================================================*/
/* Table: mesg_category_templet                                 */
/*==============================================================*/
create table mesg_category_templet
(
    id                   int(11) not null auto_increment comment '��Ϣ��� ģ���ϵ��id',
    categoryId           int(11) not null comment '��Ϣ���id',
    templetId            int(11) not null comment '��Ϣģ��id',
    status               int(1) not null comment '״̬',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ�����ģ�������';
 
 
drop table if exists mesg_record_org;
 
/*==============================================================*/
/* Table: mesg_record_org                                       */
/*==============================================================*/
create table mesg_record_org
(
    id                   int(11) not null auto_increment comment '��Ϣ�ֵ��ϵid',
    mesgRecordId         int(11) not null comment '��Ϣ��¼id',
    orgId                int(11) not null comment '��֯id',
    receiveBy            int(11) not null comment '������id',
    receiveByType        int(1) not null comment '����������',
    createTime           datetime not null comment '����ʱ��',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '��Ϣ��¼�ֵ��ϵ��';
 
 
drop table if exists mesg_user_category_filter;
 
/*==============================================================*/
/* Table:
mesg_user_category_filter                                         */
/*==============================================================*/
create table mesg_user_category_filter
(
    id                   int(11) not null auto_increment comment '�ֵ���Ϣ���ñ�id',
    userId               int(11) not null comment '����id',
    userType             int(1) not null comment '�û�����',
    orgId                int(11) not null comment '�ֵ�id',
    categoryId           int(11) not null comment '��Ϣ���id',
    status               int(1) not null comment '״̬',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û��ֵ���Ϣ���˱�';
 
 
drop table if exists perm_user_org_role;
 
/*==============================================================*/
/* Table: perm_user_org_role                                    */
/*==============================================================*/
create table perm_user_org_role
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    userId               int(11) not null comment '�û�Id',
    roleId               int(11) not null comment '��ɫId',
    orgId                int(11) not null comment '��֯Id',
    createTime           datetime not null comment '����ʱ��',
    createBy             int(11) not null comment '������',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�û���֯��ɫ��ϵ��';
 
drop table if exists perm_landlord_menu;
 
/*==============================================================*/
/* Table: perm_landlord_menu                                    */
/*==============================================================*/
create table perm_landlord_menu
(
    id                   int(11) not null auto_increment comment '��ϵ��id',
    landlordId           int(11) not null comment '����id',
    roleId               int(11) not null comment '��ɫid',
    createBy             int(11) not null comment '������',
    createTime           datetime not null comment '����ʱ��',
    createByType         int(1) not null comment '����������(�ο��ֵ��groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '�������Ի���ɫ��ϵ��';
 
 
drop table if exists perm_childacct_identitylog;
 
/*==============================================================*/
/* Table: perm_childacct_identitylog                            */
/*==============================================================*/
create table perm_childacct_identitylog
(
    id                   int(11) not null auto_increment comment '��½�����־ id',
    userId               int(11) not null comment '��½�˺�id',
    orgId                int(11) not null comment '��½�ķֵ�id',
    loginTime            datetime not null comment '��½ʱ��',
    remark               varchar(200) comment '��ע',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '���˺ŵ�½�����־';
 
ALTER TABLE perm_role ADD COLUMN intendOrg INT(2) NOT NULL DEFAULT 2 COMMENT '��ɫ����(0:�ܲ���ɫ 1:�콢���ɫ 2:�ֵ��ɫ )';
 
ALTER TABLE  perm_menu_group
   ADD COLUMN parentId INT(11) NULL  COMMENT '���ڵ�id',
   ADD COLUMN gcode VARCHAR(7) NULL  COMMENT '����',
   ADD COLUMN channel INT(2) NOT NULL  COMMENT 'Ƶ����Դ(�ο�groupName=channel)',
   ADD COLUMN glevel int(2) NULL COMMENT '�˵�����㼶';
   
   
drop table if exists perm_group_rel;
 
/*==============================================================*/
/* Table: perm_group_rel                                      */
/*==============================================================*/
create table perm_group_rel
(
    id                   int(11) not null auto_increment comment 'Ȩ�����ϵID',
    srcGroupId           int(11) not null comment 'ԴȨ����id',
    dstGroupId           int(11) not null comment 'Ŀ��Ȩ����id',
    relType              int(2) comment '��ϵ����(1:���� 2:����)',
    createBy             int(11) comment '������',
    createByType         int(2) comment '����������',
    createTime           datetime comment '����ʱ��',
    primary key (id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment 'Ȩ�����ϵ��';


ALTER TABLE perm_role ADD COLUMN `roleCode` varchar(10) DEFAULT NULL COMMENT '��ɫ����';

ALTER TABLE perm_role ADD COLUMN `roleScope` int(2) DEFAULT 1 COMMENT '��ɫӦ�÷�Χ(0:Ϊ�����û��ع��Ľ�ɫ 1:ȫ�ֹ����ɫ)';

ALTER TABLE mesg_category ADD COLUMN cateDesc VARCHAR(128) COMMENT '��Ϣ�������'; 
/*2016-07-19 ����*/
ALTER TABLE perm_role ADD COLUMN `quantity` int(11) DEFAULT null COMMENT '��ǰ��ɫ��ͬһ��֯�п��Է���������û�';
ALTER TABLE perm_role ADD COLUMN `isTop` int(1) DEFAULT 0 COMMENT '��ɫ�Ƿ��ö�(0:��  1����)';
ALTER TABLE perm_role modify column status int(1) NOT NULL comment '1����Ч    0��ɾ��    2������';

