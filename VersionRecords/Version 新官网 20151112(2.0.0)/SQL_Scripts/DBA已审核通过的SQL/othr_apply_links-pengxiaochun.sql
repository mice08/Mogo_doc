use mogoroomdb;
create table othr_apply_links
(
   id                   INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
   channel              int(2) NOT NULL COMMENT '��Դ���ο��ֵ��groupName=channel',
   websiteName          varchar(64) not null comment '��վ����',
   websiteUrl           varchar(128) not null comment '��վ��ַ',
   email                varchar(64) not null comment '�����ʼ�',
   remark               varchar(200) null comment '��ע',
   createTime           datetime not null default CURRENT_TIMESTAMP comment '����ʱ��(����ʱ��)',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����������Ϣ��';