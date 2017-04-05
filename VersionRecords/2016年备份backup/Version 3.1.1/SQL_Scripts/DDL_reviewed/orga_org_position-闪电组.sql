/*  Database name `mogoroomdb` ，组织岗位表结构*/
use mogoroomdb;
 
drop table if exists orga_org;
 
/*==============================================================*/
/* Table: orga_org                                */
/*==============================================================*/
create table orga_org
(
    id                   int(11) not null auto_increment comment '组织表id',
    parentId             int(11) comment '上级组织id',
    thirdId              int(20) comment '第三方系统的关联组织id',
    orgName              varchar(50) not null comment '组织名称',
    shortName            varchar(50) comment '组织简称',
    orgCode              varchar(10) not null comment '组织编码',
    level                tinyint(2) comment '组织层级',
    fullPath             varchar(50) comment '组织路径',
    status               tinyint(1) not null comment '状态(0:无效 1:有效)',
    sort                 tinyint(2) comment '组织排序',
    orgType              tinyint(2) comment '类型(参考groupName=UserType)',
    createBy             int(11) not null comment '创建人',
    createByType         tinyint(2) not null comment '创建人类型(参照groupName=userType)',
    createTime           datetime not null comment '创建时间',
    updateBy             int(11) comment '更新人',
    updateByType         tinyint(2) comment '更新人类型(参照groupName=userType)',
    updateTime           datetime comment '更新时间',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='组织架构表';
 
 
drop table if exists orga_org_position;
 
/*==============================================================*/
/* Table: orga_org_position                                    */
/*==============================================================*/
create table orga_org_position
(
    id                   int(11) not null auto_increment comment '用户岗位关系表id',
    userId               int(11) not null comment '用户id',
    orgId                int(11) not null comment '组织id',
    positionId           int(11) not null comment '岗位ID',
    label                varchar(20) null comment '标签',
    status               tinyint(1) comment '状态(0:无效 1:有效)',
    createBy             int(11) comment '创建人ID',
    createByType         int(1) comment '创建人类型(参照groupName=userType)',
    createTime           datetime comment '创建时间',
    updateBy             int(11) comment '更新人ID',
    updateByType         int(1) comment '更新人类型(参照groupName=userType)',
    updateTime           datetime comment '更新时间',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户组织岗位关系表';
 
 
drop table if exists orga_position;
 
/*==============================================================*/
/* Table: orga_position                                         */
/*==============================================================*/
create table orga_position
(
    id                   int(11) not null auto_increment comment '用户岗位id',
    positionName         varchar(50) not null comment '岗位名称',
    positionCode         varchar(10) comment '岗位编码(manager:部门管理者 employee:普通员工 sales:拓展员)',
    status               tinyint(1) comment '岗位状态（0:无效 1:有效）',
    positionType         tinyint(2) comment '分类(参照groupName=userType)',
    createBy             int(11) not null comment '创建人id',
    createByType         tinyint(2) not null comment '创建人类型(参照groupName=userType)',
    createTime           datetime not null comment '创建时间',
    updateBy             int(11) comment '更新人',
    updateByType         tinyint(2) comment '更新人类型(参照groupName=userType)',
    updateTime           datetime comment '更新时间',
    primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4  COMMENT='岗位表';