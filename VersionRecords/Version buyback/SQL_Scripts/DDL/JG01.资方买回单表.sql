/*蘑菇向资方买回数据表*/

use mogoroomdb;

drop table if exists loan_mogo_buyback;

/*==============================================================*/
/* Table: loan_mogo_buyback                                     */
/*==============================================================*/
create table loan_mogo_buyback
(
   id                   int(11) auto_increment not null comment '蘑菇向资方买回单id',
   landlordBuyBackId    int(11) not null comment '房东买回单id',
   status               int(2) comment '蘑菇买回状态(1:资方待确认 2:信审待确认 3:财务待退款 4:买回成功)',
   loanAmount           decimal(8,2) default 0.00 comment '资方总放款额（减去手续费之后）',
   poundage             decimal(8,2) default 0.00 comment '资方放款手续费',
   poundageRate         int(4) default 0 comment '资方放款手续费率，万分之',
   paidAmount           decimal(8,2) default 0.00 comment '正常已还款合计',
   totalDays            int(11) default 0 comment '对应租期总天数',
   occupyDays           int(11) default 0 comment '实际租用天数',
   remainDays           int(11) default 0 comment '剩余天数（ totalDays - remainDays ）',
   principle            decimal(8,2) default 0.00 comment '蘑菇买回本金（未还款本金减去退还手续费）',
   returnPoundage       decimal(8,2) default 0.00 comment '资方退还手续费',
   checkOutFee          decimal(8,2) default 0.00 comment '退房服务费',
   returnTotal          decimal(8,2) default 0.00 comment '退还总额（ principle + checkOutFee ）',
   creditAuditorId      int(11) comment '信审操作人',
   creditAuditResult    int(1) comment '信审操作结果',
   creditAuditTime      datetime comment '信审时间',
   refundPersonId       int(11) comment '退款操作人',
   refundTime           datetime comment '退款操作时间',
   refundResult         int(2) comment '退款操作结果',
   createTime           datetime not null  comment '创建时间',
   updateTime           datetime comment '修改时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '蘑菇向资方买回数据表，存储资方计算结果';