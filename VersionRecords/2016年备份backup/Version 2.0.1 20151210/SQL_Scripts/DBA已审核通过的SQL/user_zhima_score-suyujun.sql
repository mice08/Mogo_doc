/*  Database name `mogoroomdb` ，添加用户芝麻信用分表和历史表*/
use mogoroomdb;

create table user_zhima_score
(
   id                   int(11) not null auto_increment comment '芝麻信用分表id',
   userId               int(11) not null comment '用户id',
   userType             int(2) not null comment '用户类型，参考字典表groupName=userType',
   openid               varchar(32) not null comment '用户在芝麻信用中的openid',
   score                int(4) not null comment '芝麻信用分数',
   createBy             int(11) comment '创建人',
   createByType         int(2) comment '创建人类型，参考字典表groupName=userType',
   createTime           datetime comment '记录创建时间',
   updateBy             int(11) comment '修改人',
   updateByType         int(2) comment '修改人类型，参考字典表groupName=userType',
   updateTime           datetime comment '记录更新时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户芝麻信用分表';



create table user_zhima_score_his
(
   id                   int(11) not null auto_increment comment '芝麻信用分历史表id',
   userId               int(11) not null comment '用户id',
   userType             int(2) not null comment '用户类型，参考字典表groupName=userType',
   openid               varchar(32) not null comment '用户在芝麻信用中的openid',
   score                int(4) not null comment '芝麻信用分数',
   createBy             int(11) comment '创建人id',
   createByType         int(2) comment '创建人类型，参考字典表groupName=userType',
   createTime           datetime not null comment '记录创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户芝麻信用分历史表';