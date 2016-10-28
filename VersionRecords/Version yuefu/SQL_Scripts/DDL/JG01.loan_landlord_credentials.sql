/*��ӷ������ʱ��¸����ݾۺϱ�*/

use mogoroomdb;

drop table if exists loan_landlord_credentials;

/*==============================================================*/
/* Table: �������ʱ�                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials
(
   id                   int(11) not null auto_increment comment '��������id',
   contractId            int(11) not null comment '���������ͬid',
   landlordId           int(11) not null comment '���ʶ�Ӧ�ķ���id',
   applyCityId          int(11) not null comment '��������ĳ���',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         int(1) not null comment '����������(�����ֵ������:userType)',
   effectTime           datetime comment '��Чʱ��',
   effectBy             int(11) comment '��Ч������',
   effectByType         int(1) comment '��Ч����������(�����ֵ������:userType)',
   endTime             datetime comment '��ֹʱ��',
   endBy               int(11) comment '��ֹ������',
   endByType           int(1) comment '��ֹ����������(�����ֵ������:userType)',
   soDoneCode       int(11) null comment 'ҵ�����id(comm_business_record)',
   status                   int(1) not null comment '����״̬(0:������ 1:��Ч�� 2:����ֹ)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�������ʱ�';

drop table if exists loan_landlord_credentials_his;

/*==============================================================*/
/* Table: ����������ʷ��                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials_his
(
   id                   int(11) not null auto_increment comment '����������ʷid',
   contractId            int(11) not null comment '���������ͬid',
   credentialsId   int(11) not null comment '��������id',
   landlordId           int(11) not null comment '���ʶ�Ӧ�ķ���id',
   applyCityId          int(11) not null comment '��������ĳ���',
   createTime           datetime not null comment '����ʱ��',
   createBy             int(11) not null comment '������',
   createByType         int(1) not null comment '����������(�����ֵ������:userType)',
   effectTime           datetime comment '��Чʱ��',
   effectBy             int(11) comment '��Ч������',
   effectByType         int(1) comment '��Ч����������(�����ֵ������:userType)',
   endTime             datetime comment '��ֹʱ��',
   endBy               int(11) comment '��ֹ������',
   endByType           int(1) comment '��ֹ����������(�����ֵ������:userType)',
   soDoneCode       int(11) null comment 'ҵ�����id(comm_business_record)',
   status                   int(1) not null comment '����������״̬(0:������ 1:��Ч�� 2:����ֹ)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='����������ʷ��';



drop table if exists loan_deposition_monthlypay;

/*==============================================================*/
/* Table: loan_deposition_monthlypay                               */
/*==============================================================*/
create table loan_deposition_monthlypay
(
   id                   int(11) not null auto_increment comment '�¸����ݾۺϱ�id',
   mainId               int(11) not null comment '����¼Id',
   mainType             int(11) not null comment '����¼����(1:Ģ���¸������б� 2:Ģ���¸��ſ��б� 3:Ģ���¸��峥�б� 4:Ģ���¸������б�)',
   loanContractId       int(11) comment '��������Id',
   signedOrderId        int(11) comment 'ǩԼ��Id',
   saleContractId       int(11) comment '���ۺ�ͬid',
   landlordContractId   int(11) comment '���Id',
   roomId               int(11) comment '��ԴId',
   acctBillId           int(11) comment '�˵�Id',
   renterId             int(11) comment '���Id',
   landlordId           int(11) comment '����Id',
   cityId               int(11) comment '����Id',
   createTime           datetime comment '��������',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '�¸����ݾۺϱ�';


drop table if exists loan_apply_extend;

/*==============================================================*/
/* Table: �������������չ��                                                                                                                                                               */
/*==============================================================*/
create table loan_apply_extend
(
   id                           int(11) not null auto_increment comment '�������������չ��id',
   contractId            int(11) not null auto_increment comment '�������������չ��id',
   prodTypeId          int(11) not null comment '��Ʒ����id(�ο���Ʒ���ͱ�����id)';
   loanKey                VARCHAR(20) NOT NULL COMMENT '�������ı���',
   loanValue            VARCHAR(20) NOT NULL COMMENT '��������ֵ',
   createTime          datetime NOT NULL COMMENT '����ʱ��',
   createBy               INT(11) NOT NULL COMMENT '������',
   createByType       INT(1) NOT NULL COMMENT '����������(�����ֵ������:userType)',
   PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�������������չ��';


ALTER TABLE loan_landlord_credit     ADD COLUMN credentialsId int(11) not null comment '��������id',
								 ADD COLUMN valid int(1) default 0 comment '�������״̬(0:�ر� 1:����)',
								 ADD COLUMN prodTypeId  int(11)  comment '��Ʒ����id(�ο���Ʒ���ͱ�����id)';

ALTER TABLE loan_landlord_credit_his  ADD COLUMN credentialsId int(11) not null comment '��������id',
								      ADD COLUMN valid int(1) default 0 comment '�������״̬(0:�ر� 1:����)',
                                                                      ADD COLUMN prodTypeId  int(11)  comment '��Ʒ����id(�ο���Ʒ���ͱ�����id)';

alter table loan_landlord_buyback   add column settlementType int(1) comment '�峥����(1:�������峥 2:��Ϣ�峥)',
								  add column unpayAmount decimal(12,2) default 0 comment '����δ�����',
								  add column unpayPoundage decimal(12,2) default 0 comment '����δ��������';