use mogoroomdb;
create table othr_apply_cooperation
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   channel              int(2) NOT NULL COMMENT '来源，参考字典表groupName=channel',
   companyName          varchar(64) not null comment '公司名称',
   business             varchar(128) not null comment '经营业务',
   contacter            varchar(20) not null comment '联系人',
   contactsPhone        Varchar(64) not null comment '联系人电话',
   remark               varchar(200) null comment '备注',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '申请时间(创建时间)',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请合作信息表';