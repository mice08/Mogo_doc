/*新增退款审批表*/
use mogoroomdb;


drop table if exists oder_refund_approval;
create table oder_refund_approval
(
   id                   int(11) not null auto_increment comment '退款审核表id',
   orderId              int(11) not null comment '订单id',
   orderType            tinyint(2) not null comment '订单类型(参考字典表组名:orderType)',
   landlordId           int(11) not null comment '房东id',
   renterId             int(11) not null comment '租客id',
   roomId               int(11) not null comment '退款对应的房源id',
   refundSourceType     tinyint(2) not null comment '退款来源类型(参考字典表组名:refundSourceType)  ',
   refundAmount         decimal(10,2) not null comment '退款总金额',
   refundReason         varchar(300) comment '退款原因',
   approvalStatus       int(1) not null default 0 comment '退款审批状态(0:待审批 1:审批通过 2:审批不通过)',
   refundParams         varchar(300) comment '退款页面填充的业务参数，json格式保存',
   approvalOpinion      varchar(100) comment '房东退款审批意见',
   createBy             int(11) not null comment '创建人',
   createTime           dateTime not null comment '退款记录创建时间',
   createByType         tinyint(2) not null comment '创建人类型',
   approvalTime         datetime comment '审批时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='退款审批表';
