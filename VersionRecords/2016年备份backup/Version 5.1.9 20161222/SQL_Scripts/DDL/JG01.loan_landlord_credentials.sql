/*��ӷ������ʱ��¸����ݾۺϱ�*/

use mogoroomdb;


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
   contractId            int(11) not null comment '�������������չ��id',
   prodTypeCode     VARCHAR(20) not null comment '��Ʒ���ͱ���(�ο���Ʒ���ͱ�prodTypeCode)',
   loanKey                VARCHAR(30) NOT NULL COMMENT '�������ı���',
   loanValue            VARCHAR(200) NOT NULL COMMENT '��������ֵ',
   createTime          datetime NOT NULL COMMENT '����ʱ��',
   createBy               INT(11) NOT NULL COMMENT '������',
   createByType       INT(1) NOT NULL COMMENT '����������(�����ֵ������:userType)',
   updateTime       DATETIME NULL  COMMENT '�޸�ʱ��' ,
   updateBy INT NULL  COMMENT '�޸���' ,
   updateByType INT NULL  COMMENT '�޸�������' ,
   PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�������������չ��';

alter table loan_landlord_buyback   add column settlementType int(1) comment '�峥����(1:�������峥 2:��Ϣ�峥)',
								  add column unpayAmount decimal(12,2) default 0 comment '����δ�����',
								  add column unpayPoundage decimal(12,2) default 0 comment '����δ��������';

ALTER TABLE prod_prodtype ADD COLUMN prodTypeCode varchar(20) not null comment '��Ʒ���ͱ���' after id;


ALTER TABLE prod_prodtype ADD UNIQUE (prodTypeCode);

ALTER TABLE `loan_borrower_info` ADD contractPicGroupId int(11) DEFAULT NULL COMMENT 'ֽ�ʺ�ͬ��Ƭ��Id' AFTER picGroupId;    /*��������ͨ����Ÿ�������Լ��ͬ��*/

ALTER TABLE `loan_contract` ADD autoRepay int(1) DEFAULT '0' COMMENT '�����յ����Ƿ��Զ��ۿ�(0:�� 1:��)',
 add column subsId bigint(11) NULL COMMENT '����ID' after `prodType`;

