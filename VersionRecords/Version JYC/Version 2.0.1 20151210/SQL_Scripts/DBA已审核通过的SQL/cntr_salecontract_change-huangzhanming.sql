/*  Database name `mogoroomdb` ，添加合同变更表*/ 
use mogoroomdb; 
 
CREATE TABLE `cntr_salecontract_change` ( 
   id   int(11) NOT NULL AUTO_INCREMENT COMMENT '合同变更表ID', 
   contractId  int(11) NOT NULL COMMENT '合同ID',
   leaseTerm  int(11) NOT NULL COMMENT '租期',  
   rentPrice  decimal(12,2) NOT NULL COMMENT '租金',  
   payType  int(11) NOT NULL COMMENT '租金付款方式，参考comm_paytype表',
   valid  tinyint(1) NOT NULL DEFAULT 1 COMMENT '有效状态，1有效，0无效', 
   status tinyint(1) NOT NULL COMMENT '变更单状态，1初始，2房东确认，3租客确认并结束流程', 
   invalidTime datetime NULL COMMENT '失效时间', 
   createBy             int(11) not null comment '创建人',
   createTime           datetime not null comment '创建时间',
   createByType         int(2) not null comment '创建人类型（参考字典表groupName=userType）',
   updateBy             int(11) comment '修改人',
   updateTime           datetime comment '修改时间',
   updateByType         int(2) comment '模修改人类型（参考字典表groupName=userType）',
   PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同变更表';







