use mogoroomdb;
create table othr_apply_cooperation
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   channel              int(2) NOT NULL COMMENT '��Դ���ο��ֵ��groupName=channel',
   companyName          varchar(64) not null comment '��˾����',
   business             varchar(128) not null comment '��Ӫҵ��',
   contacter            varchar(20) not null comment '��ϵ��',
   contactsPhone        Varchar(64) not null comment '��ϵ�˵绰',
   remark               varchar(200) null comment '��ע',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��(����ʱ��)',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���������Ϣ��';