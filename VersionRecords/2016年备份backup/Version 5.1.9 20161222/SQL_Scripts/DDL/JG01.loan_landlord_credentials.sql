/*添加房东资质表，月付数据聚合表*/

use mogoroomdb;


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
   contractId            int(11) not null comment '房东租金宝申请扩展表id',
   prodTypeCode     VARCHAR(20) not null comment '商品类型编码(参考商品类型表prodTypeCode)',
   loanKey                VARCHAR(30) NOT NULL COMMENT '租金宝申请的编码',
   loanValue            VARCHAR(200) NOT NULL COMMENT '租金宝申请的值',
   createTime          datetime NOT NULL COMMENT '创建时间',
   createBy               INT(11) NOT NULL COMMENT '创建人',
   createByType       INT(1) NOT NULL COMMENT '创建人类型(参照字典表组名:userType)',
   updateTime       DATETIME NULL  COMMENT '修改时间' ,
   updateBy INT NULL  COMMENT '修改人' ,
   updateByType INT NULL  COMMENT '修改人类型' ,
   PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房东租金宝申请扩展表';

alter table loan_landlord_buyback   add column settlementType int(1) comment '清偿类型(1:手续费清偿 2:本息清偿)',
								  add column unpayAmount decimal(12,2) default 0 comment '分期未还租金',
								  add column unpayPoundage decimal(12,2) default 0 comment '分期未还手续费';

ALTER TABLE prod_prodtype ADD COLUMN prodTypeCode varchar(20) not null comment '产品类型编码' after id;


ALTER TABLE prod_prodtype ADD UNIQUE (prodTypeCode);

ALTER TABLE `loan_borrower_info` ADD contractPicGroupId int(11) DEFAULT NULL COMMENT '纸质合同照片组Id' AFTER picGroupId;    /*申请审批通过后才更新至租约合同表*/

ALTER TABLE `loan_contract` ADD autoRepay int(1) DEFAULT '0' COMMENT '还款日到期是否自动扣款(0:否 1:是)',
 add column subsId bigint(11) NULL COMMENT '订购ID' after `prodType`;

