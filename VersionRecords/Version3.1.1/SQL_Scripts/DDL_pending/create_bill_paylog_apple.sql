/*  Database name `mogoroomdb` ���½�֧���ص���¼��*/
use mogoroomdb;
/*==============================================================*/
/* Table: bill_paylog_apple                                     */
/*==============================================================*/
create table bill_paylog_apple
(
   id                   int(11) auto_increment not null comment '֧����¼��id',
   sign                 varchar(255) not null comment 'ǩ��',
   sign_type            varchar(10) not null comment 'ǩ���㷨',
   oid_partner          varchar(32) not null comment '�̻����',
   dt_order             varchar(14) not null comment '�̻�����ʱ��',
   no_order             varchar(32) not null comment '�̻�Ψһ������',
   oid_paybill          varchar(32) not null comment '����֧������',
   money_order          varchar(10) not null comment '���׽��',
   result_pay           varchar(10) not null comment '֧�����',
   settle_date          varchar(14) comment '��������',
   info_order           varchar(100) comment '��������',
   pay_type             varchar(10) not null comment '֧����ʽ',
   create_time          datetime not null comment '��¼����ʱ��',
   primary key (id)
)ENGINE=InnoDB COMMENT='����֧���ص���¼��';

/*==============================================================*/
/* Index: idx_oid_paybill                                       */
/*==============================================================*/
create index idx_oid_paybill on bill_paylog_apple(oid_paybill);