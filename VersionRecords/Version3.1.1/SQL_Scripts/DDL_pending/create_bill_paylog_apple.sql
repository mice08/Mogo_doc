/*  Database name `mogoroomdb` ，新建支付回调记录表*/
use mogoroomdb;
/*==============================================================*/
/* Table: bill_paylog_apple                                     */
/*==============================================================*/
create table bill_paylog_apple
(
   id                   int(11) auto_increment not null comment '支付记录表id',
   sign                 varchar(255) not null comment '签名',
   sign_type            varchar(10) not null comment '签名算法',
   oid_partner          varchar(32) not null comment '商户编号',
   dt_order             varchar(14) not null comment '商户订单时间',
   no_order             varchar(32) not null comment '商户唯一订单号',
   oid_paybill          varchar(32) not null comment '连连支付单号',
   money_order          varchar(10) not null comment '交易金额',
   result_pay           varchar(10) not null comment '支付结果',
   settle_date          varchar(14) comment '清算日期',
   info_order           varchar(100) comment '订单描述',
   pay_type             varchar(10) not null comment '支付方式',
   create_time          datetime not null comment '记录创建时间',
   primary key (id)
)ENGINE=InnoDB COMMENT='连连支付回调记录表';

/*==============================================================*/
/* Index: idx_oid_paybill                                       */
/*==============================================================*/
create index idx_oid_paybill on bill_paylog_apple(oid_paybill);