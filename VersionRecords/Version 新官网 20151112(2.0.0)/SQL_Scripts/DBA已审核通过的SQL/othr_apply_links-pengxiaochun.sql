use mogoroomdb;
create table othr_apply_links
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   channel              int(2) NOT NULL COMMENT '来源，参考字典表groupName=channel',
   websiteName          varchar(64) not null comment '网站名称',
   websiteUrl           varchar(128) not null comment '网站地址',
   email                varchar(64) not null comment '电子邮件',
   remark               varchar(200) null comment '备注',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '申请时间(创建时间)',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申请友链信息表';