/*  Database name `mogoroomdb` ，新消息体系表结构*/
use mogoroomdb;


drop table if exists mesg_subtemplet;
create table mesg_subtemplet
(
   id                   int(11) auto_increment not null comment '子模板id',
   templetId              int(11) not null comment '消息模板id',
   templetType            int(2) not null comment '类型（参考字典表groupName=templetType，1-短信，2-邮件，3-推送，4-微信）',
   templetTitle         varchar(100) not null comment '模板标题',
   templetContent         varchar(1000) not null comment '模板内容',
   status               int(1) not null comment '模板状态，0禁用，1启用',
   valid                int(1) not null comment '删除标志，0删除，1未删除',
   outTempletId         varchar(64) comment '第三方消息模板id',
   jumpCode             varchar(20) comment '跳转编码',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息子模板表';

