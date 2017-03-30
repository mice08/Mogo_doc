create table user_special
(
   id               int(11) not null comment 'ID' auto_increment,
   userId               int(11) not null comment '用户ID',
   userType             int(1) not null comment '用户类型(参考字典表groupName=userType)',
   specialType        int(1) not null comment '特别类型(参考字典表groupName=specialType)',
   createBy             int(11) not null comment '创建人',
   createTime           datetime not null DEFAULT current_timestamp comment '创建时间',
   createByType     int(1) not null comment '创建人类型(参考字典表groupName=userType)',
   updateBy             int(11) not null comment '修改人',
   updateTime           datetime not null DEFAULT current_timestamp comment '修改时间',
   updateByType     int(1) not null comment '修改人类型(参考字典表groupName=userType)',
   status  int(1) not null  comment '状态',
   primary key (id)
);

alter table user_special comment '特别用户表';

CREATE  INDEX idx_user_special ON user_special(userId,userType,specialType);