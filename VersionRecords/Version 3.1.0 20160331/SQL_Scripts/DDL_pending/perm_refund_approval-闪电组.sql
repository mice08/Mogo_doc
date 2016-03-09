/*新增退款审批表*/
use mogoroomdb;


drop table if exists perm_refund_approval;
create table perm_refund_approval
(
   id                   int(11) not null auto_increment comment '退款审核表id',
   landlordId           int(11) not null comment '房东id',
   renterId             int(11) not null comment '租客id',
   roomId               int(11) not null comment '退款对应的房源id',
   refundType           int(2) not null comment '退款记录产生来源',
   refundAmount         decimal(10,2) not null comment '退款总金额',
   refundReason         varchar(300) comment '退款原因',
   approvalStatus       int(1) not null default 0 comment '退款审批状态(0:待审批 1:审批通过 2:审批不通过)',
   refundParams         varchar(300) comment '退款页面填充的业务参数，json格式保存',
   approvalOpinion      varchar(100) comment '房东退款审批意见',
   createBy             int(11) not null comment '创建人',
   createTime           dateTime not null comment '退款记录创建时间',
   createByType         tinyint(2) not null comment '创建人类型',
   approvalTime         datetime comment '退款审批时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款审批表';


drop table if exists perm_refund_detail;
create table perm_refund_detail
(
   id                   int(11) not null auto_increment comment '退款明细id',
   approvalId           int(11) not null comment '退款审批表id',
   refundType           int(11) not null comment '退款类型，(参考acct_billdtltype)  ',
   refundAmount         decimal(10,2) not null comment '退款金额',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款审批明细表';