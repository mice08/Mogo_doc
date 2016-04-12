use acct;

drop table if exists acct_refund_apple;

/*==============================================================*/
/* Table: acct_refund_applepay                                  */
/*==============================================================*/
create table acct_refund_apple
(
   id                   int(11) auto_increment not null comment 'apple pay退款记录id',
   sign_type            varchar(10) not null comment '签名算法(MD5,RSA)',
   sign                 varchar(255) not null comment '签名',
   oid_partner          varchar(32) not null comment '商户编号',
   no_refund            varchar(32) not null comment '商户退款流水号',
   dt_refund            datetime comment '商户退款时间',
   money_refund         decimal(8,2) comment '退款金额',
   oid_refundno         varchar(32) comment 'apple pay退款流水号',
   sta_refund           varchar(1) comment '退款状态(0:退款申请 1:退款处理中 2:退款成功 3:退款失败)',
   settle_date          date comment '清算日期',
   create_time          datetime not null comment '退款记录创建时间',
   update_time          datetime comment '退款记录更新时间',
   primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Apple pay退款记录表';
