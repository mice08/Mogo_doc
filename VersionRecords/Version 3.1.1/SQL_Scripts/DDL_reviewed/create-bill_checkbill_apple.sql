use mogoroomdb;

drop table if exists bill_checkbill_apple;

/*==============================================================*/
/* Table: bill_checkbill_apple                                  */
/*==============================================================*/
create table bill_checkbill_apple
(
   id                   int(11) not null auto_increment comment 'apple pay对账单记录id',
   partner_orderno      varchar(64) not null comment '商户订单号',
   partner_no           varchar(32) not null comment '商户号',
   dt_order             datetime not null comment '商户订单创建时间',
   busi_partner         varchar(10) not null comment '商户业务类型 (101001:虚拟商品销售 109001:实物商品销售)',
   applepay_no          varchar(32) not null comment 'apple pay支付订单号',
   settle_date          date not null comment 'apple pay清算日期',
   order_money          decimal(8,2) not null comment '订单金额,如为退款，则为该笔退款单的退款金额（退款则金额为负）',
   type_flag            varchar(1) not null comment '原单商户收付款标志(0:商户收款 1:商户付款)',
   trade_status         varchar(1) not null comment '交易状态(0:成功 5:退款)',
   update_time          datetime not null comment '更新时间是该笔订单最终状态更新的时间，如为正交易，则是交易成功时间，如退款，则是退款成功时间',
   service_fee          decimal(8,2) comment '手续费是该笔订单连连支付应收手续费（退款则金额为负）',
   pay_product          varchar(10) comment '商户使用的支付产品(WEB:WEB支付网关 SDK:手机应用支付网关 WAP:WAP支付网关 API:API接口)',
   pay_method           varchar(100) comment '商户使用的支付方式 (Debit Card EBank Payment:储蓄卡网银支付 Credit Card EBank Payment:信用卡网银支付 Debit Card Express Payment:储蓄卡快捷支付 Credit Card Express Payment:信用卡快捷支付 Corporate Ebank Payment:企业网银支付)',
   order_info           varchar(255) comment '订单信息',
   beneficiary_bank     varchar(50) comment '收款人银行中文名称',
   beneficiary_no       varchar(50) comment '收款方账号',
   beneficiary_name     varchar(20) comment '收款方姓名',
   create_time          datetime not null comment '创建时间',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ApplePay对账单表';
