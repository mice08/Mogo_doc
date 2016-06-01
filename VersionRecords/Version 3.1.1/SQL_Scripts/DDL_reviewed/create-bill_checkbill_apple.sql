use mogoroomdb;

drop table if exists bill_checkbill_apple;

/*==============================================================*/
/* Table: bill_checkbill_apple                                  */
/*==============================================================*/
create table bill_checkbill_apple
(
   id                   int(11) not null auto_increment comment 'apple pay���˵���¼id',
   partner_orderno      varchar(64) not null comment '�̻�������',
   partner_no           varchar(32) not null comment '�̻���',
   dt_order             datetime not null comment '�̻���������ʱ��',
   busi_partner         varchar(10) not null comment '�̻�ҵ������ (101001:������Ʒ���� 109001:ʵ����Ʒ����)',
   applepay_no          varchar(32) not null comment 'apple pay֧��������',
   settle_date          date not null comment 'apple pay��������',
   order_money          decimal(8,2) not null comment '�������,��Ϊ�˿��Ϊ�ñ��˿���˿���˿�����Ϊ����',
   type_flag            varchar(1) not null comment 'ԭ���̻��ո����־(0:�̻��տ� 1:�̻�����)',
   trade_status         varchar(1) not null comment '����״̬(0:�ɹ� 5:�˿�)',
   update_time          datetime not null comment '����ʱ���Ǹñʶ�������״̬���µ�ʱ�䣬��Ϊ�����ף����ǽ��׳ɹ�ʱ�䣬���˿�����˿�ɹ�ʱ��',
   service_fee          decimal(8,2) comment '�������Ǹñʶ�������֧��Ӧ�������ѣ��˿�����Ϊ����',
   pay_product          varchar(10) comment '�̻�ʹ�õ�֧����Ʒ(WEB:WEB֧������ SDK:�ֻ�Ӧ��֧������ WAP:WAP֧������ API:API�ӿ�)',
   pay_method           varchar(100) comment '�̻�ʹ�õ�֧����ʽ (Debit Card EBank Payment:�������֧�� Credit Card EBank Payment:���ÿ�����֧�� Debit Card Express Payment:������֧�� Credit Card Express Payment:���ÿ����֧�� Corporate Ebank Payment:��ҵ����֧��)',
   order_info           varchar(255) comment '������Ϣ',
   beneficiary_bank     varchar(50) comment '�տ���������������',
   beneficiary_no       varchar(50) comment '�տ�˺�',
   beneficiary_name     varchar(20) comment '�տ����',
   create_time          datetime not null comment '����ʱ��',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ApplePay���˵���';
