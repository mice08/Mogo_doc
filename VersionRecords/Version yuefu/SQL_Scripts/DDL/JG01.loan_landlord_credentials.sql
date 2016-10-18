use mogoroomdb;

drop table if exists loan_landlord_credentials;

/*==============================================================*/
/* Table: �������ʱ�                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials
(
   id                   int(11) not null auto_increment comment '��������id',
   landlordId           int(11) not null comment '���ʶ�Ӧ�ķ���id',
   status                   int(1) not null comment '����������״̬(0:������ 1:��Ч�� 2:����ֹ)',
   applyCityId          int(11) not null comment '��������ĳ���',
   createTime           datetime not null comment '���ʴ���ʱ��',
   createBy             int(11) not null comment '���ʴ�����',
   createByType         int(1) not null comment '���ʴ���������(�����ֵ������:userType)',
   effectTime           datetime comment '������Чʱ��',
   effectBy             int(11) comment '������Ч������',
   effectByType         int(1) comment '������Ч����������(�����ֵ������:userType)',
   endTime             datetime comment '������ֹʱ��',
   endBy               int(11) comment '������ֹ������',
   endByType           int(1) comment '������ֹ����������(�����ֵ������:userType)',
   soDoneCode       int(11) null comment 'ҵ�����id(comm_business_record)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�������ʱ�';

drop table if exists loan_landlord_credentials_his;

/*==============================================================*/
/* Table: ����������ʷ��                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials_his
(
   id                   int(11) not null auto_increment comment '��������id',
   landlordId           int(11) not null comment '���ʶ�Ӧ�ķ���id',
   status                   int(1) not null comment '����������״̬(0:������ 1:��Ч�� 2:����ֹ)',
   applyCityId          int(11) not null comment '��������ĳ���',
   createTime           datetime not null comment '���ʴ���ʱ��',
   createBy             int(11) not null comment '���ʴ�����',
   createByType         int(1) not null comment '���ʴ���������(�����ֵ������:userType)',
   effectTime           datetime comment '������Чʱ��',
   effectBy             int(11) comment '������Ч������',
   effectByType         int(1) comment '������Ч����������(�����ֵ������:userType)',
   endTime             datetime comment '������ֹʱ��',
   endBy               int(11) comment '������ֹ������',
   endByType           int(1) comment '������ֹ����������(�����ֵ������:userType)',
   soDoneCode       int(11) null comment 'ҵ�����id(comm_business_record)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='����������ʷ��';

drop table if exists loan_loan_repay;


/*==============================================================*/
/* Table: loan_loan_repay                                       */
/*==============================================================*/
create table loan_loan_repay
(
   id                   int(11) not null comment '�˵���ϵ��id',
   loanContractId       int(11) not null comment '�����ͬid',
   loanBillId           int(11) not null comment '�����˵�id',
   repayBillId          int(11) not null comment '�����˵�id',
   feeRate              decimal(12,2) not null comment 'Ӷ�����',
   valid                int(1) not null default 1 comment '��ϵ״̬(0:��Ч 1:��Ч)',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         int(2) not null comment '����������(���� groupName=userType)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '�����˵��뻹���˵���ϵ��';

drop table if exists loan_monthPay_condition;

/*==============================================================*/
/* Table: loan_condition                               */
/*==============================================================*/
create table loan_condition
(
   id                   int(11) not null comment '��ѯ������id',
   mainId               int(11) not null comment '����¼Id',
   mainType             int(11) not null comment '����¼����(1:Ģ���¸������б� 2:Ģ���¸��ſ��б� 3:Ģ���¸��峥�б� 4:Ģ���¸������б�)',
   loanContractId       int(11) comment '��������Id',
   signedOrderId        int(11) comment 'ǩԼ��Id',
   saleContractId       int(11) comment '���ۺ�ͬid',
   landlordContractId   int(11) comment '���Id',
   roomId               int(11) comment '��ԴId',
   saleBillId           int(11) comment '�˵�Id',
   renterId             int(11) comment '���Id',
   landlordId           int(11) comment '����Id',
   cityId               int(11) comment '����',
   createTime           datetime comment '��������',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '��ѯ������';



ALTER TABLE loan_landlord_credit  ADD COLUMN credentialsId int(11) not null comment '��������id',
								 ADD COLUMN valid int(1) default 0 comment '�������״̬(0:�ر� 1:����)',
                                 ADD COLUMN loanType int(2) comment '�����������(1:Ģ���� 2:Ģ���¸�)';
                                  
                                 
                                  
alter table loan_landlord_payplan add column confirmRecTime datetime comment 'ȷ���տ�ʱ��',
								  add column confirmRecBy int(11) comment 'ȷ���տ���',
                                  add column confirmRcvByType int(1) comment 'ȷ���տ�������';
                                  



alter table loan_landlord_buyback add column loanBillId int(11) comment 'ҵ���˵�Id',
								  add column settlementType int(1) comment '�峥����(1:�������峥 2:��Ϣ�峥)',
								  add column unPayAmount decimal(12,2) default 0 comment '����δ�����',
								  add column unPayFee decimal(12,2) default 0 comment '����δ��������';


