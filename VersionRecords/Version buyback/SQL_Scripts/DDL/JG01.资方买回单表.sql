
use mogoroomdb;

drop table if exists loan_lender_buyback;

/*==============================================================*/
/* Table: loan_lender_buyback                                   */
/*==============================================================*/
create table loan_lender_buyback
(
   id                   int(11) not null auto_increment comment '资方买回单id',,
   landlordBuyBackId    int(11) not null comment '房东买回单id',
   status               int(2) comment '资方买回状态(1:资方待确认 2:信审待确认 3:财务待退款 4:买回成功)',
   loanAmount           decimal(8,2) default 0.00 comment '资方放款额',
   poundage             decimal(8,2) default 0.00 comment '从资方拿到的手续费',
   poundageRate         int(4) default 0 comment '从资方拿到的手续费率，万分之',
   totalDays            int(11) default 0 comment '分期总天数',
   paidAmount           decimal(8,2) default 0.00 comment '资方拿到的还款合计',
   takeDays             int(11) default 0 comment '占用天数',
   restDays             int(11) default 0 comment '剩余天数',
   checkOutFee          decimal(8,2) default 0.00 comment '退房服务费',
   capital              decimal(8,2) default 0.00 comment '资方买回本金',
   returnPoundage       decimal(8,2) default 0.00 comment '资方退还手续费',
   returnAmount         decimal(8,2) default 0.00 comment '退还总额',
   creditAuditorId      int(11) comment '信审操作人',
   creditAuditResult    int(1) comment '信审操作结果',
   creditAuditTime      datetime comment '信审时间',
   refundPersonId       int(11) comment '退款操作人',
   refundTime           datetime comment '退款操作时间',
   refundResult         int(2) comment '退款操作结果',
   createTime           datetime comment '创建时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '资方买回数据表，存储与资方买回的相关数据';