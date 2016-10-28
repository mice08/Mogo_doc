/*添加房东资质表，月付数据聚合表*/

use mogoroomdb;

drop table if exists loan_landlord_credentials;

/*==============================================================*/
/* Table: 房东资质表                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials
(
   id                   int(11) not null auto_increment comment '房东资质id',
   contractId            int(11) not null comment '房东贷款合同id',
   landlordId           int(11) not null comment '资质对应的房东id',
   applyCityId          int(11) not null comment '房东申请的城市',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         int(1) not null comment '创建人类型(参照字典表组名:userType)',
   effectTime           datetime comment '生效时间',
   effectBy             int(11) comment '生效操作人',
   effectByType         int(1) comment '生效操作人类型(参照字典表组名:userType)',
   endTime             datetime comment '终止时间',
   endBy               int(11) comment '终止操作人',
   endByType           int(1) comment '终止操作人类型(参照字典表组名:userType)',
   soDoneCode       int(11) null comment '业务操作id(comm_business_record)',
   status                   int(1) not null comment '资质状态(0:申请中 1:生效中 2:已终止)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东资质表';

drop table if exists loan_landlord_credentials_his;

/*==============================================================*/
/* Table: 房东资质历史表                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials_his
(
   id                   int(11) not null auto_increment comment '房东资质历史id',
   contractId            int(11) not null comment '房东贷款合同id',
   credentialsId   int(11) not null comment '房东资质id',
   landlordId           int(11) not null comment '资质对应的房东id',
   applyCityId          int(11) not null comment '房东申请的城市',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         int(1) not null comment '创建人类型(参照字典表组名:userType)',
   effectTime           datetime comment '生效时间',
   effectBy             int(11) comment '生效操作人',
   effectByType         int(1) comment '生效操作人类型(参照字典表组名:userType)',
   endTime             datetime comment '终止时间',
   endBy               int(11) comment '终止操作人',
   endByType           int(1) comment '终止操作人类型(参照字典表组名:userType)',
   soDoneCode       int(11) null comment '业务操作id(comm_business_record)',
   status                   int(1) not null comment '房东的资质状态(0:申请中 1:生效中 2:已终止)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东资质历史表';



drop table if exists loan_deposition_monthlypay;

/*==============================================================*/
/* Table: loan_deposition_monthlypay                               */
/*==============================================================*/
create table loan_deposition_monthlypay
(
   id                   int(11) not null auto_increment comment '月付数据聚合表id',
   mainId               int(11) not null comment '主记录Id',
   mainType             int(11) not null comment '主记录类型(1:蘑菇月付申请列表 2:蘑菇月付放款列表 3:蘑菇月付清偿列表 4:蘑菇月付还款列表)',
   loanContractId       int(11) comment '贷款申请Id',
   signedOrderId        int(11) comment '签约单Id',
   saleContractId       int(11) comment '销售合同id',
   landlordContractId   int(11) comment '租金宝Id',
   roomId               int(11) comment '房源Id',
   acctBillId           int(11) comment '账单Id',
   renterId             int(11) comment '租客Id',
   landlordId           int(11) comment '房东Id',
   cityId               int(11) comment '城市Id',
   createTime           datetime comment '创建日期',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '月付数据聚合表';


drop table if exists loan_apply_extend;

/*==============================================================*/
/* Table: 房东租金宝申请扩展表                                                                                                                                                               */
/*==============================================================*/
create table loan_apply_extend
(
   id                           int(11) not null auto_increment comment '房东租金宝申请扩展表id',
   contractId            int(11) not null auto_increment comment '房东租金宝申请扩展表id',
   prodTypeId          int(11) not null comment '商品类型id(参考商品类型表主键id)';
   loanKey                VARCHAR(20) NOT NULL COMMENT '租金宝申请的编码',
   loanValue            VARCHAR(20) NOT NULL COMMENT '租金宝申请的值',
   createTime          datetime NOT NULL COMMENT '创建时间',
   createBy               INT(11) NOT NULL COMMENT '创建人',
   createByType       INT(1) NOT NULL COMMENT '创建人类型(参照字典表组名:userType)',
   PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东租金宝申请扩展表';


ALTER TABLE loan_landlord_credit     ADD COLUMN credentialsId int(11) not null comment '房东资质id',
								 ADD COLUMN valid int(1) default 0 comment '贷款服务状态(0:关闭 1:开启)',
								 ADD COLUMN prodTypeId  int(11)  comment '商品类型id(参考商品类型表主键id)';

ALTER TABLE loan_landlord_credit_his  ADD COLUMN credentialsId int(11) not null comment '房东资质id',
								      ADD COLUMN valid int(1) default 0 comment '贷款服务状态(0:关闭 1:开启)',
                                                                      ADD COLUMN prodTypeId  int(11)  comment '商品类型id(参考商品类型表主键id)';

alter table loan_landlord_buyback   add column settlementType int(1) comment '清偿类型(1:手续费清偿 2:本息清偿)',
								  add column unpayAmount decimal(12,2) default 0 comment '分期未还租金',
								  add column unpayPoundage decimal(12,2) default 0 comment '分期未还手续费';