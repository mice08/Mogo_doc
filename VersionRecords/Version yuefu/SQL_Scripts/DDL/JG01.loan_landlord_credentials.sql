use mogoroomdb;

drop table if exists loan_landlord_credentials;

/*==============================================================*/
/* Table: 房东资质表                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials
(
   id                   int(11) not null auto_increment comment '房东资质id',
   landlordId           int(11) not null comment '资质对应的房东id',
   status                   int(1) not null comment '房东的资质状态(0:申请中 1:生效中 2:已终止)',
   applyCityId          int(11) not null comment '房东申请的城市',
   createTime           datetime not null comment '资质创建时间',
   createBy             int(11) not null comment '资质创建人',
   createByType         int(1) not null comment '资质创建人类型(参照字典表组名:userType)',
   effectTime           datetime comment '资质生效时间',
   effectBy             int(11) comment '资质生效操作人',
   effectByType         int(1) comment '资质生效操作人类型(参照字典表组名:userType)',
   endTime             datetime comment '资质终止时间',
   endBy               int(11) comment '资质终止操作人',
   endByType           int(1) comment '资质终止操作人类型(参照字典表组名:userType)',
   soDoneCode       int(11) null comment '业务操作id(comm_business_record)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东资质表';

drop table if exists loan_landlord_credentials_his;

/*==============================================================*/
/* Table: 房东资质历史表                                                                                                                                                               */
/*==============================================================*/
create table loan_landlord_credentials_his
(
   id                   int(11) not null auto_increment comment '房东资质id',
   landlordId           int(11) not null comment '资质对应的房东id',
   status                   int(1) not null comment '房东的资质状态(0:申请中 1:生效中 2:已终止)',
   applyCityId          int(11) not null comment '房东申请的城市',
   createTime           datetime not null comment '资质创建时间',
   createBy             int(11) not null comment '资质创建人',
   createByType         int(1) not null comment '资质创建人类型(参照字典表组名:userType)',
   effectTime           datetime comment '资质生效时间',
   effectBy             int(11) comment '资质生效操作人',
   effectByType         int(1) comment '资质生效操作人类型(参照字典表组名:userType)',
   endTime             datetime comment '资质终止时间',
   endBy               int(11) comment '资质终止操作人',
   endByType           int(1) comment '资质终止操作人类型(参照字典表组名:userType)',
   soDoneCode       int(11) null comment '业务操作id(comm_business_record)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东资质历史表';

drop table if exists loan_loan_repay;


/*==============================================================*/
/* Table: loan_loan_repay                                       */
/*==============================================================*/
create table loan_loan_repay
(
   id                   int(11) not null comment '账单关系表id',
   loanContractId       int(11) not null comment '贷款合同id',
   loanBillId           int(11) not null comment '贷款账单id',
   repayBillId          int(11) not null comment '还款账单id',
   feeRate              decimal(12,2) not null comment '佣金费率',
   valid                int(1) not null default 1 comment '关系状态(0:无效 1:有效)',
   createTime           datetime not null comment '创建时间',
   createBy             int(11) not null comment '创建人',
   createByType         int(2) not null comment '创建人类型(参照 groupName=userType)',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '贷款账单与还款账单关系表';

drop table if exists loan_monthPay_condition;

/*==============================================================*/
/* Table: loan_condition                               */
/*==============================================================*/
create table loan_condition
(
   id                   int(11) not null comment '查询条件表id',
   mainId               int(11) not null comment '主记录Id',
   mainType             int(11) not null comment '主记录类型(1:蘑菇月付申请列表 2:蘑菇月付放款列表 3:蘑菇月付清偿列表 4:蘑菇月付还款列表)',
   loanContractId       int(11) comment '贷款申请Id',
   signedOrderId        int(11) comment '签约单Id',
   saleContractId       int(11) comment '销售合同id',
   landlordContractId   int(11) comment '租金宝Id',
   roomId               int(11) comment '房源Id',
   saleBillId           int(11) comment '账单Id',
   renterId             int(11) comment '租客Id',
   landlordId           int(11) comment '房东Id',
   cityId               int(11) comment '城市',
   createTime           datetime comment '创建日期',
   primary key (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT = '查询条件表';



ALTER TABLE loan_landlord_credit  ADD COLUMN credentialsId int(11) not null comment '房东资质id',
								 ADD COLUMN valid int(1) default 0 comment '贷款服务状态(0:关闭 1:开启)',
                                 ADD COLUMN loanType int(2) comment '贷款服务类型(1:蘑菇宝 2:蘑菇月付)';
                                  
                                 
                                  
alter table loan_landlord_payplan add column confirmRecTime datetime comment '确认收款时间',
								  add column confirmRecBy int(11) comment '确认收款人',
                                  add column confirmRcvByType int(1) comment '确认收款人类型';
                                  



alter table loan_landlord_buyback add column loanBillId int(11) comment '业务账单Id',
								  add column settlementType int(1) comment '清偿类型(1:手续费清偿 2:本息清偿)',
								  add column unPayAmount decimal(12,2) default 0 comment '分期未还租金',
								  add column unPayFee decimal(12,2) default 0 comment '分期未还手续费';


