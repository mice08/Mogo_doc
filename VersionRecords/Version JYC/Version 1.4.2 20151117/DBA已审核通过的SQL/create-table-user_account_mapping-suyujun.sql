/*==============================================================*/
/* Table: user_account_mapping                                  */
/*==============================================================*/
create table user_account_mapping
(
   id                   int(11) not null AUTO_INCREMENT comment '账号用户对应Id',
   acctId               int(11) not null comment '帐务系统账号',
   wjIdentity           varchar(32) not null comment '维金帐号',
   createTime           datetime not null comment '创建时间',
   updateTime           datetime comment '更新时间',
   userId               int(11) not null comment '业务系统帐号唯一标识',
   userType             tinyint comment '业务用户类型  4:租客 0:房东  参照 groupName=userType',
   primary key (id)
);

alter table user_account_mapping comment='账号/用户对应表';