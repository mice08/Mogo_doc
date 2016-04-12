/*  Database name `mogoroomdb` ，组织岗位表结构*/
use mogoroomdb;

drop table if exists user_org;

/*==============================================================*/
/* Table: user_org                                */
/*==============================================================*/
create table user_org
(
   id                   int(11) not null auto_increment comment '组织表id',
   parentId             int(11) comment '上级组织id',
   orgName              varchar(50) not null comment '组织名称',
   shortName            varchar(50) comment '组织简称',
   orgCode              varchar(10) not null comment '组织编码',
   level                tinyint(2) comment '组织层级',
   category             varchar(50) comment '组织分类',
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
) ENGINE=InnoDB COMMENT='组织架构表';



drop table if exists user_org_job;

/*==============================================================*/
/* Table: user_org_job                                    */
/*==============================================================*/
create table user_org_job
(
   id                   int(11) not null auto_increment comment '用户岗位关系表id',
   userId               int(11) not null comment '用户id',
   orgId                int(11) not null comment '组织id',
   jobsId               int(11) not null comment '岗位ID',
   status               tinyint(1) comment '状态(0:无效,1:有效)',
   createBy             int(11) comment '创建人ID',
   createByType         int(1) comment '创建人类型(参照groupName=userType)',
   createTime           datetime comment '创建时间',
   updateBy             int(11) comment '更新人ID',
   updateByType         int(1) comment '更新人类型(参照groupName=userType)',
   updateTime           datetime comment '更新时间',
   primary key (id)
) ENGINE=InnoDB COMMENT='用户组织岗位关系表';


drop table if exists user_job;

/*==============================================================*/
/* Table: user_job                                             */
/*==============================================================*/
create table user_job
(
   id                   int(11) not null auto_increment comment '用户岗位id',
   jobName              varchar(50) not null comment '岗位名称',
   status               tinyint(1) comment '岗位状态（0:无效,1:有效）',
   jobType              tinyint(2) comment '分类(参照groupName=userType)',
   createBy             int(11) not null comment '创建人id',
   createByType         tinyint(2) not null comment '创建人类型(参照groupName=userType)',
   createTime           datetime not null comment '创建时间',
   updateBy             int(11) comment '更新人',
   updateByType         tinyint(2) comment '更新人类型(参照groupName=userType)',
   updateTime           datetime comment '更新时间',
   primary key (id)
) ENGINE=InnoDB  COMMENT='岗位表';