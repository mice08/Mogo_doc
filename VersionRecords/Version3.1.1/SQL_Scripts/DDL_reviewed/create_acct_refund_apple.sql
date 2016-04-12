use acct;

drop table if exists acct_refund_apple;

/*==============================================================*/
/* Table: acct_refund_applepay                                  */
/*==============================================================*/
create table acct_refund_apple
(
   id                   int(11) auto_increment not null comment 'apple pay�˿��¼id',
   sign_type            varchar(10) not null comment 'ǩ���㷨(MD5,RSA)',
   sign                 varchar(255) not null comment 'ǩ��',
   oid_partner          varchar(32) not null comment '�̻����',
   no_refund            varchar(32) not null comment '�̻��˿���ˮ��',
   dt_refund            datetime comment '�̻��˿�ʱ��',
   money_refund         decimal(8,2) comment '�˿���',
   oid_refundno         varchar(32) comment 'apple pay�˿���ˮ��',
   sta_refund           varchar(1) comment '�˿�״̬(0:�˿����� 1:�˿���� 2:�˿�ɹ� 3:�˿�ʧ��)',
   settle_date          date comment '��������',
   create_time          datetime not null comment '�˿��¼����ʱ��',
   update_time          datetime comment '�˿��¼����ʱ��',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Apple pay�˿��¼��';
