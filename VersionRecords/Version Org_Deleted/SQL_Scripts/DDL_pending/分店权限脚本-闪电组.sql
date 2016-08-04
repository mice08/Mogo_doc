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
 
ALTER TABLE perm_role ADD COLUMN intendOrg INT(2) NOT NULL DEFAULT 2 COMMENT '角色属性(0:总部角色 1:旗舰店角色 2:分店角色 )';
 
ALTER TABLE  perm_menu_group
   ADD COLUMN parentId INT(11) NULL  COMMENT '父节点id',
   ADD COLUMN gcode VARCHAR(7) NULL  COMMENT '编码',
   ADD COLUMN channel INT(2) NOT NULL  COMMENT '频道来源(参考groupName=channel)',
   ADD COLUMN glevel int(2) NULL COMMENT '菜单分组层级';
   
   
drop table if exists perm_group_rel;
 
/*==============================================================*/
/* Table: perm_group_rel                                      */
/*==============================================================*/
create table perm_group_rel
(
    id                   int(11) not null auto_increment comment '权限组关系ID',
    srcGroupId           int(11) not null comment '源权限组id',
    dstGroupId           int(11) not null comment '目标权限组id',
    relType              int(2) comment '关系类型(1:互斥 2:依赖)',
    createBy             int(11) comment '创建人',
    createByType         int(2) comment '创建人类型',
    createTime           datetime comment '创建时间',
    primary key (id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '权限组关系表';


ALTER TABLE perm_role ADD COLUMN `roleCode` varchar(10) DEFAULT NULL COMMENT '角色编码';

ALTER TABLE perm_role ADD COLUMN `roleScope` int(2) DEFAULT 1 COMMENT '角色应用范围(0:为部分用户特供的角色 1:全局共享角色)';

ALTER TABLE mesg_category ADD COLUMN cateDesc VARCHAR(128) COMMENT '消息类别描述'; 
/*2016-07-19 新增*/
ALTER TABLE perm_role ADD COLUMN `quantity` int(11) DEFAULT null COMMENT '当前角色在同一组织中可以分配给多少用户';
ALTER TABLE perm_role ADD COLUMN `isTop` int(1) DEFAULT 0 COMMENT '角色是否置顶(0:否  1：是)';
ALTER TABLE perm_role modify column status int(1) NOT NULL comment '角色状态(1:有效  0:删除 2:禁用)';

/**2016-07-21 新增*/
ALTER TABLE perm_menu_group ADD COLUMN `remark` varchar(256) DEFAULT NULL COMMENT '描述';
ALTER TABLE comm_business_record ADD COLUMN `operatorRoleId` int(11) DEFAULT NULL COMMENT '操作人角色';

/*角色历史表*/
CREATE TABLE `perm_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `roleId`  int(11) NOT NULL COMMENT '角色id',
  `roleName` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `status` int(1) DEFAULT NULL COMMENT '角色状态(1:有效  0:删除 2:禁用)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createEmp` int(11) DEFAULT NULL COMMENT '创建人',
  `channel` tinyint(2) NULL COMMENT '角色所属的系统，参考字典表groupName=channel',
  `intendOrg` int(2) NULL DEFAULT '2' COMMENT '角色属性(0:总部角色 1:旗舰店角色 2:分店角色 )',
  `roleCode` varchar(10) DEFAULT NULL COMMENT '角色编码',
  `roleScope` int(2) DEFAULT '1' COMMENT '角色应用范围(0:为部分用户特供的角色 1:全局共享角色)',
  `quantity` int(11) DEFAULT NULL COMMENT '当前角色在同一组织中可以分配给多少用户',
  `isTop` int(1) DEFAULT '0' COMMENT '角色是否置顶(0:否  1：是)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='角色历史表';

/*菜单分组表历史表*/
CREATE TABLE `perm_menu_group_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `groupId` int(11) NOT NULL COMMENT '菜单分组表id',
  `menuGroupName` varchar(50) NOT NULL COMMENT '菜单分组名称',
  `grantorId` int(11) NULL COMMENT '菜单分组对应的授权人ID',
  `grantorType` tinyint(1) NULL COMMENT '菜单分组对应的授权人类型,参照groupName=userType',
  `status` int(1) NULL COMMENT '菜单分组状态(0：无效 1：有效)',
  `createTime` datetime NULL COMMENT '分组创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '分组更新时间',
  `parentId` int(11) DEFAULT NULL COMMENT '父节点id',
  `gcode` varchar(7) DEFAULT NULL COMMENT '编码',
  `channel` int(2) NULL COMMENT '频道来源(参考groupName=channel)',
  `glevel` int(2) DEFAULT NULL COMMENT '菜单分组层级',
  `remark` varchar(256) DEFAULT NULL COMMENT '描述',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单分组表历史表';

/*菜单历史表*/
CREATE TABLE `perm_functioninfo_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `functionId` int(11) NOT NULL COMMENT '节点ID',
  `fcode` char(7) NULL COMMENT '标识号生成规则   functionLevel + functionPid(不足4位前面补0) + seq （不足两位前面补0）',
  `fname` varchar(600) DEFAULT NULL COMMENT '名称',
  `furl` varchar(765) DEFAULT NULL COMMENT '请求url',
  `seq` int(11) NULL COMMENT '顺序号 同一个Pid 下面的排序',
  `functionLevel` int(11) NULL COMMENT '树结构的级别 0为菜单编码（无跳转链接） 1为二级菜单编码（无跳转链接） 2为三级菜单编码（有跳转链接）3为功能权限编码',
  `functionpId` int(11) NULL COMMENT '父节点的主键ID',
  `functionisMenu` int(11) DEFAULT NULL COMMENT '是否要在树结构中节点显示',
  `functionVcode` varchar(60) DEFAULT NULL,
  `functionParam` varchar(765) DEFAULT NULL,
  `functionFaclass` varchar(60) DEFAULT NULL COMMENT '节点显示对应的css的class',
  `isAjax` tinyint(1) DEFAULT '1' COMMENT '是否是ajax请求',
  `functionType` int(11) DEFAULT NULL COMMENT '类型：0：后台权限 1:os权限',
  `createdBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updatedTime` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态是否可用',
  `channel` int(2) DEFAULT '0' COMMENT '菜单所属系统，参照groupName=channel',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='临时功能节点历史表';

/*菜单分组关系历史表 */
CREATE TABLE `perm_menu_group_rel_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `menuId` int(11) NULL COMMENT '功能菜单id',
  `menuGroupId` int(11) NULL COMMENT '菜单分组ID',
  `status` tinyint(1) NULL COMMENT '功能菜单分组状态',
  `createTime` datetime DEFAULT NULL COMMENT '菜单分组创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '菜单分组更新时间',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='菜单分组关系历史表';

/*菜单分组与角色关系历史表*/
CREATE TABLE `perm_menugroup_role_rel_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `roleId` int(11) NULL COMMENT '对应的角色表id',
  `menuGroupId` int(11) NULL COMMENT '对应的菜单id',
  `status` tinyint(1) NULL COMMENT '菜单分组角色关系状态(0：无效 1：有效）',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='菜单分组与角色关系历史表';

/*角色菜单关系历史表 */
CREATE TABLE `perm_role_function_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` int(11) NULL,
  `function_id` int(11) NULL,
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色菜单关系历史表';

/*用户组织角色关系历史表*/
CREATE TABLE `perm_user_org_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userId` int(11) NULL COMMENT '用户Id',
  `roleId` int(11) NULL COMMENT '角色Id',
  `orgId` int(11) NULL COMMENT '组织Id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) NULL COMMENT '创建人',
  `createByType` int(1) NULL COMMENT '创建人类型(参考字典表groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户组织角色关系历史表';

/*房东个性化角色关系历史表*/
CREATE TABLE `perm_landlord_menu_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `landlordId` int(11) NULL COMMENT '房东id',
  `roleId` int(11) NULL COMMENT '角色id',
  `createBy` int(11) NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createByType` int(1) NULL COMMENT '创建人类型(参考字典表groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东个性化角色关系历史表';

/*消息类别历史表*/
CREATE TABLE `mesg_category_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `categoryId` int(11) NOT NULL COMMENT '消息类别表id',
  `categoryName` varchar(50) NULL COMMENT '消息类别名',
  `categoryCode` varchar(50) DEFAULT NULL COMMENT '消息类别编码',
  `createBy` int(11) NULL COMMENT '创建人',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createByType` int(1) NULL COMMENT '创建人类型(参考字典表groupName=userType)',
  `cateDesc` varchar(128) DEFAULT NULL COMMENT '消息类别描述',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息类别历史表';

/*消息类别角色关系历史表*/
CREATE TABLE `mesg_category_role_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `categoryId` int(11) DEFAULT NULL COMMENT '消息类别id',
  `roleId` int(11) DEFAULT NULL COMMENT '角色id',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createByType` int(1) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息类别角色关系历史表';

/* 消息模板历史表  */
CREATE TABLE `mesg_templet_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `templetId` int(11) NULL COMMENT '消息模板id',
  `templetCode` varchar(50) NULL COMMENT '消息code，根据code查询模板内容',
  `templetName` varchar(100) NULL COMMENT '模板名称',
  `templetDesc` varchar(300) DEFAULT NULL COMMENT '模板描述',
  `status` int(1) NULL COMMENT '模板状态，0禁用，1启用',
  `createBy` int(11) NULL COMMENT '模板创建人',
  `createTime` datetime DEFAULT NULL COMMENT '模板创建时间',
  `createByType` int(2) NULL COMMENT '模板创建人类型（参考字典表groupName=userType）',
  `updateBy` int(11) DEFAULT NULL COMMENT '模板修改人',
  `updateTime` datetime DEFAULT NULL COMMENT '模板修改时间',
  `updateByType` int(2) DEFAULT NULL COMMENT '模板修改人类型（参考字典表groupName=userType）',
  `valid` int(1) NULL COMMENT '删除标志，0删除，1未删除',
  `businessType` int(2) DEFAULT NULL COMMENT '模板的业务类型 1:预约,2:预订,3签约,4:售后,5:资金,10:其他',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息模板历史表';

/*消息子模板历史表*/
CREATE TABLE `mesg_subtemplet_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `templetId` int(11) NULL COMMENT '消息模板id',
  `templetType` int(2) NULL COMMENT '类型（参考字典表groupName=templetType，1-短信，2-邮件，3-推送，4-微信）',
  `templetTitle` varchar(100) NULL COMMENT '模板标题',
  `templetContent` varchar(3000) NULL COMMENT '模板内容',
  `status` int(1) NULL COMMENT '模板状态，0禁用，1启用',
  `valid` int(1) NULL COMMENT '删除标志，0删除，1未删除',
  `outTempletId` varchar(64) DEFAULT NULL COMMENT '第三方消息模板id',
  `jumpCode` varchar(30) DEFAULT NULL COMMENT '跳转编码',
  `soDoneCode` int(11) DEFAULT NULL COMMENT '对应common_business_record.id',
  `operType` char(1) DEFAULT null COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息子模板历史表';

/*2016_07-25*/
ALTER TABLE PERM_FUNCTIONINFO DROP INDEX fcode; 
ALTER TABLE PERM_FUNCTIONINFO ADD UNIQUE INDEX(fcode,channel);

/**增加分店备注字段长度**/
ALTER TABLE orga_org MODIFY column remark varchar(512) DEFAULT NULL COMMENT '关闭分店时记录历史状态';


