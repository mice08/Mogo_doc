/*==============================================================*/
/* Table: user_account_mapping                                  */
/*==============================================================*/
create table user_account_mapping
(
   id                   int(11) not null AUTO_INCREMENT comment '�˺��û���ӦId',
   acctId               int(11) not null comment '����ϵͳ�˺�',
   wjIdentity           varchar(32) not null comment 'ά���ʺ�',
   createTime           datetime not null comment '����ʱ��',
   updateTime           datetime comment '����ʱ��',
   userId               int(11) not null comment 'ҵ��ϵͳ�ʺ�Ψһ��ʶ',
   userType             tinyint comment 'ҵ���û�����  4:��� 0:����  ���� groupName=userType',
   primary key (id)
);

alter table user_account_mapping comment='�˺�/�û���Ӧ��';