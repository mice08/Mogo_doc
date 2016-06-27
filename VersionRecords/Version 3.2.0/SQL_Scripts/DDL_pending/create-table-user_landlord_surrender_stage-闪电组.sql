drop table if exists user_landlord_surrender_stage;

/*==============================================================*/
/* Table: user_landlord_surrender_stage                         */
/*==============================================================*/
create table user_landlord_surrender_stage
(
   id                   int(11) not null auto_increment comment '房东解约步骤表',
   landlordId           int(11) not null comment '解约房东id',
   stage                int(1) not null comment '对应该房东解约的步骤(1:确认解约日期 2:下架官网房源 3:处理在住签约单 4:禁用房东账号)',
   stageValue           varchar(100) comment '对应步骤中产生的值，json格式保存',
   createBy             int(11) not null comment '对应步骤的操作人',
   createByType         int(1) not null comment '操作人类型(参照groupName=userType)',
   createTime           datetime not null comment '对应步骤的创建时间',
   updateBy             int(11) comment '对应步骤的修改人',
   updateByType         char(10) comment '修改人类型(参照groupName=userType)',
   updateTime           datetime not null comment '对应步骤的修改时间',
   primary key (id)
);

alter table user_landlord_surrender_stage comment '房东解约步骤表';