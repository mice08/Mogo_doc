use mogoroomdb; 

drop table if exists perm_grant_role; 
 
drop table if exists perm_menu_group; 
 
drop table if exists perm_menu_group_rel; 
 
drop table if exists perm_menugroup_role_rel; 
 
drop table if exists perm_room_group; 
 
drop table if exists perm_room_group_rel; 
 
drop table if exists perm_roomgroup_role_rel; 
 
drop table if exists user_childacc_role_rel; 
 
drop table if exists user_landlord_childacc_rel; 
 
/*==============================================================*/ 
/* Table: perm_childacct_role                                   */ 
/*==============================================================*/ 
create table perm_grant_role 
( 
   id                   int(11) not null auto_increment comment '子母账号角色ID', 
   roleName             varchar(50) not null comment '角色名称，用于在页面显示', 
   grantorId            int(11) not null comment '菜单分组对应的授权人ID',
   grantorType          tinyint(1) not null comment '菜单分组对应的授权人类型,参照字典表groupName=userType',
   status               int(1) not null comment '角色状态(0：无效 1：有效)', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段', 
   createTime           datetime not null comment '角色创建时间', 
   updateTime           datetime comment '角色修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '子账号角色表'; 
 
 
/*==============================================================*/ 
/* Table: perm_menu_group                                       */ 
/*==============================================================*/ 
create table perm_menu_group 
( 
   id                   int(11) not null auto_increment comment '菜单分组表id', 
   menuGroupName        varchar(50) not null  comment '菜单分组名称', 
   grantorId            int(11) not null  comment '菜单分组对应的授权人ID',
   grantorType          tinyint(1) not null comment '菜单分组对应的授权人类型,参照groupName=userType',
   status               int(1) not null comment '菜单分组状态(0：无效 1：有效)', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段',-- index 
   createTime           datetime not null comment '分组创建时间', 
   updateTime           datetime comment '分组更新时间', 
   primary key (id) 
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '菜单分组表'; 
 

 
/*==============================================================*/ 
/* Table: perm_menu_group_rel                                   */ 
/*==============================================================*/ 
create table perm_menu_group_rel 
( 
   id                   int(11) not null auto_increment comment '菜单分组表ID', 
   menuId               int(11) not null comment '功能菜单id',
   menuGroupId          int(11) not null comment '菜单分组ID',
   status               tinyint(1) not null comment '功能菜单分组状态', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段。', 
   createTime           datetime not null comment '菜单分组创建时间', 
   updateTime           datetime comment '菜单分组更新时间', 
   primary key (id) 
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '菜单分组关系表'; 
 

 
 
/*==============================================================*/ 
/* Table: perm_menugroup_role_rel                               */ 
/*==============================================================*/ 
create table perm_menugroup_role_rel 
( 
   id                   int(11) not null auto_increment comment '菜单分组角色关系表id', 
   roleId               int(11) not null comment '对应的角色表id', 
   menuGroupId          int(11) not null comment '对应的菜单id',
   status               tinyint(1)  not null comment '菜单分组角色关系状态(0：无效 1：有效）', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段。',
   createTime           datetime not null comment '创建时间', 
   updateTime           datetime comment '修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '菜单分组与角色关系表'; 
 

 
/*==============================================================*/ 
/* Table: perm_room_group                                       */ 
/*==============================================================*/ 
create table perm_room_group 
( 
   id                   int(11) not null auto_increment comment '房源分组表id', 
   landlordId           int(11) not null comment '对应的房东id', 
   roomGroupName        varchar(50) not null comment '房源分组名称', 
   status               tinyint(1) not null comment '房源分组状态(0：无效 1：有效)', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段',
   createTime           datetime not null comment '房源分组创建时间', 
   updateTime           datetime comment '房源分组更新时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房源分组表' ; 
 

 
/*==============================================================*/ 
/* Table: perm_room_group_rel                                   */ 
/*==============================================================*/ 
create table perm_room_group_rel 
( 
   id                   int(11) not null auto_increment comment '房源分组表id', 
   roomId               int(11) not null comment '对应的房间的id',
   roomGroupId          int(11) not null comment '房源分组id',
   status               tinyint(1) not null comment '房源分组状态（0：无效 1：有效）', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段',
   createTime           datetime not null comment '房源分组创建时间', 
   updateTime           datetime comment '房源分组修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房源分组关系表'; 
 

 
/*==============================================================*/ 
/* Table: perm_roomgroup_role_rel                               */ 
/*==============================================================*/ 
create table perm_roomgroup_role_rel 
( 
   id                   int(11) not null auto_increment comment '房源分组角色关系id', 
   roomGroupId          int(11) not null comment '房源分组表id',
   roleId               int(11) not null comment '对应角色表的id',
   status               tinyint(1) not null comment '房源分组角色关系状态(0：无效 1：有效）', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段',
   createTime           dateTime not null comment '角色房源记录创建时间', 
   updateTime           datetime comment '角色房源记录修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '房源分组与角色关系表' ; 
 

 
/*==============================================================*/ 
/* Table: user_childacc_role_rel                                */ 
/*==============================================================*/ 
create table user_childacc_role_rel 
( 
   id                   int(11) not null auto_increment comment '子账户角色表ID', 
   roleId               int(11) not null comment '角色Id', 
   userId               int(11) not null comment '关联的用户信息表的id',
   status               tinyint(1) not null comment '子账号与角色的关系状态(0：无效 1：有效）', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段。',-- index 
   createTime           datetime not null comment '角色子账号关系创建时间', 
   updateTime           datetime comment '角色子账号关系修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '子账号与角色的关系表'; 
 

 
 
/*==============================================================*/ 
/* Table: user_landlord_childacc_rel                            */ 
/*==============================================================*/ 
create table user_landlord_childacc_rel 
( 
   id                   int(11) not null auto_increment comment '子母账号关系表id', 
   landlordId           int(11) not null comment '房东ID',
   userId               int(11) not null comment '子母账号的id，来源 user_info表的id', 
   status               tinyint(1) not null comment '子母账号关系状态(0：无效  1：有效)', 
   soDoneCode           int(11) not null comment '业务记录id。参考comm_business_record表的id字段。',-- index 
   createTime           datetime not null comment '子母账号关系创建时间', 
   updateTime           datetime comment '子母账号关系修改时间', 
   primary key (id) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '子母账号关系表'; 
 

 
 
/*==============================================================*/ 
/* 创建索引                                                     */ 
/*==============================================================*/ 
ALTER TABLE perm_functioninfo ADD COLUMN channel int(2) DEFAULT 0 COMMENT '菜单所属系统，参照groupName=channel';

CREATE INDEX idx_perm_grant_role_grantorId ON perm_grant_role(grantorId);

CREATE INDEX idx_perm_grant_role_soDoneCode ON perm_grant_role(soDoneCode);

CREATE INDEX idx_perm_menu_group_grantorId ON perm_menu_group(grantorId);

CREATE INDEX idx_perm_menu_group_soDoneCode ON perm_menu_group(soDoneCode);

CREATE INDEX idx_perm_menu_group_rel_menuId ON perm_menu_group_rel(menuId);

CREATE INDEX idx_perm_menu_group_rel_menuGroupId ON perm_menu_group_rel(menuGroupId);

CREATE INDEX idx_perm_menu_group_rel_soDoneCode ON perm_menu_group_rel(soDoneCode);

CREATE INDEX idx_perm_menugroup_role_rel_roleId ON perm_menugroup_role_rel(roleId);

CREATE INDEX idx_perm_menugroup_role_rel_menuGroupId ON perm_menugroup_role_rel(menuGroupId);

CREATE INDEX idx_perm_menugroup_role_rel_soDoneCode ON perm_menugroup_role_rel(soDoneCode);

CREATE INDEX idx_perm_room_group_landlordId ON perm_room_group(landlordId);

CREATE INDEX idx_perm_room_group_soDoneCode ON perm_room_group(soDoneCode);

CREATE INDEX idx_perm_room_group_rel_roomId ON perm_room_group_rel(roomId);

CREATE INDEX idx_perm_room_group_rel_roomGroupId ON perm_room_group_rel(roomGroupId);

CREATE INDEX idx_perm_room_group_rel_soDoneCode ON perm_room_group_rel(soDoneCode);

CREATE INDEX idx_perm_roomgroup_role_rel_roomGroupId ON perm_roomgroup_role_rel(roomGroupId);

CREATE INDEX idx_perm_roomgroup_role_rel_roleId ON perm_roomgroup_role_rel(roleId);

CREATE INDEX idx_perm_roomgroup_role_rel_soDoneCode ON perm_roomgroup_role_rel(soDoneCode);

CREATE INDEX idx_user_childacc_role_rel_roleId ON user_childacc_role_rel(roleId);

CREATE INDEX idx_user_childacc_role_rel_userId ON user_childacc_role_rel(userId);

CREATE INDEX idx_user_childacc_role_rel_soDoneCode ON user_childacc_role_rel(soDoneCode);

CREATE INDEX idx_user_landlord_childacc_rel_landlordId ON user_landlord_childacc_rel(landlordId);

CREATE INDEX idx_user_landlord_childacc_rel_soDoneCode ON user_landlord_childacc_rel(soDoneCode);



