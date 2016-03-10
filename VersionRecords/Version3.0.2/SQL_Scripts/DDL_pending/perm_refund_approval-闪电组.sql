/*新增退款审批表*/
use mogoroomdb;


drop table if exists perm_refund_approval;
create table perm_refund_approval
(
   id                   int(11) not null auto_increment comment '退款审核表id',
   billId               int(11) not null comment '订单id',
   billType             tinyint(2) not null comment '订单类型(参考字典表组名：billType)',
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
   approvalTime         datetime comment '退款审批时间',
   primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款审批表';

/*初始化billType数据字典*/
INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('billType-1','billType','1','1','预订单','1','reserveBill');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('billType-2','billType','2','2','签约单','2','signedBill');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('billType-3','billType','3','3','退房申请单','3','surrenderBill');

/*初始化退款业务来源数据字典*/

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-1','refundSourceType','1','1','撤销预定','1','cancelReserve');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-2','refundSourceType','2','2','撤销签约-蘑菇宝审核失败','1','cancelSignedMogoBaoCheckFailure');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-3','refundSourceType','3','3','撤销签约-预定成功','1','cancelSignedReserveSucc');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-4','refundSourceType','4','4','退房','1','checkOut');

INSERT INTO comm_dictionary(code,groupName,sort,keyPro,value,status,enValue)
VALUES ('refundSourceType-5','refundSourceType','5','5','签约不通过-预定成功','1','signedFailureReserveSucc');