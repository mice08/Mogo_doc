use mogoroomdb;
 
drop table if exists mesg_category_role;
 
/*==============================================================*/
/* Table: mesg_category_role                                    */
/*==============================================================*/
create table mesg_category_role
(
    id                   int(11) not null auto_increment comment '关系表id',
    categoryId           int(11) comment '消息类别id',
    roleId               int(11) comment '角色id',
    createBy             int(11) not null comment '创建人',
    createTime           datetime not null comment '创建时间',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息类别角色关系表';
 
 
drop table if exists mesg_category;
 
/*==============================================================*/
/* Table: mesg_category                                         */
/*==============================================================*/
create table mesg_category
(
    id                   int(11) not null auto_increment comment '消息类别表id',
    categoryName         varchar(50) not null comment '消息类别名',
    categoryCode         varchar(50) comment '消息类别编码',
    createBy             int(11) not null comment '创建人',
    createTime           datetime not null comment '创建时间',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息类别表';
 
 
drop table if exists mesg_category_templet;
 
/*==============================================================*/
/* Table: mesg_category_templet                                 */
/*==============================================================*/
create table mesg_category_templet
(
    id                   int(11) not null auto_increment comment '消息类别 模板关系表id',
    categoryId           int(11) not null comment '消息类别id',
    templetId            int(11) not null comment '消息模板id',
    status               int(1) not null comment '状态',
    createBy             int(11) not null comment '创建人',
    createTime           datetime not null comment '创建时间',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息类别与模板关联表';
 
 
drop table if exists mesg_record_org;
 
/*==============================================================*/
/* Table: mesg_record_org                                       */
/*==============================================================*/
create table mesg_record_org
(
    id                   int(11) not null auto_increment comment '消息分店关系id',
    mesgRecordId         int(11) not null comment '消息记录id',
    orgId                int(11) not null comment '组织id',
    receiveBy            int(11) not null comment '接收人id',
    receiveByType        int(1) not null comment '接收人类型',
    createTime           datetime not null comment '创建时间',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '消息记录分店关系表';
 
 
drop table if exists mesg_user_category_filter;
 
/*==============================================================*/
/* Table:
mesg_user_category_filter                                         */
/*==============================================================*/
create table mesg_user_category_filter
(
    id                   int(11) not null auto_increment comment '分店消息设置表id',
    userId               int(11) not null comment '房东id',
    userType             int(1) not null comment '用户类型',
    orgId                int(11) not null comment '分店id',
    categoryId           int(11) not null comment '消息类别id',
    status               int(1) not null comment '状态',
    createBy             int(11) not null comment '创建人',
    createTime           datetime not null comment '创建时间',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户分店消息过滤表';
 
 
drop table if exists perm_user_org_role;
 
/*==============================================================*/
/* Table: perm_user_org_role                                    */
/*==============================================================*/
create table perm_user_org_role
(
    id                   int(11) not null auto_increment comment '关系表id',
    userId               int(11) not null comment '用户Id',
    roleId               int(11) not null comment '角色Id',
    orgId                int(11) not null comment '组织Id',
    createTime           datetime not null comment '创建时间',
    createBy             int(11) not null comment '创建人',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '用户组织角色关系表';
 
drop table if exists perm_landlord_menu;
 
/*==============================================================*/
/* Table: perm_landlord_menu                                    */
/*==============================================================*/
create table perm_landlord_menu
(
    id                   int(11) not null auto_increment comment '关系表id',
    landlordId           int(11) not null comment '房东id',
    roleId               int(11) not null comment '角色id',
    createBy             int(11) not null comment '创建人',
    createTime           datetime not null comment '创建时间',
    createByType         int(1) not null comment '创建人类型(参考字典表groupName=userType)',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '房东个性化角色关系表';
 
 
drop table if exists perm_childacct_identitylog;
 
/*==============================================================*/
/* Table: perm_childacct_identitylog                            */
/*==============================================================*/
create table perm_childacct_identitylog
(
    id                   int(11) not null auto_increment comment '登陆身份日志 id',
    userId               int(11) not null comment '登陆账号id',
    orgId                int(11) not null comment '登陆的分店id',
    loginTime            datetime not null comment '登陆时间',
    remark               varchar(200) comment '备注',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '子账号登陆身份日志';
 
ALTER TABLE perm_role ADD COLUMN roleAttribute INT(2) NOT NULL DEFAULT 1 COMMENT '角色属性(0:直属角色 1:分店角色)';

ALTER TABLE perm_role ADD COLUMN dataAttribute INT(2) NOT NULL DEFAULT 1 COMMENT '角色数据范围(0:全局 1:限当前组织)';
 
ALTER TABLE  perm_menu_group
   ADD COLUMN parentId INT(11) NULL  COMMENT '父节点id',
   ADD COLUMN gcode VARCHAR(7) NULL  COMMENT '编码',
   ADD COLUMN channel INT(2) NOT NULL  COMMENT '频道来源(参考groupName=channel)',
   ADD COLUMN glevel int(2) NULL COMMENT '菜单分组层级';
 
 