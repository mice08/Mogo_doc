/*  Database name `mogoroomdb` ，添加房东租金宝贷款费率表*/ 
use mogoroomdb; 
 
CREATE TABLE `loan_landlord_fee` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东费率表ID', 
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `month` int(11) DEFAULT NULL COMMENT '租赁合同月数',
  `aLevelFee` int(6) DEFAULT 700 COMMENT '房源等级A的费率（万分比）', 
  `bLevelFee` int(6) DEFAULT 700 COMMENT '房源等级B的费率（万分比）', 
  `cLevelFee` int(6) DEFAULT 700 COMMENT '房源等级C的费率（万分比）',
  `dLevelFee` int(6) DEFAULT 700 COMMENT '房源等级D的费率（万分比）',
  `createBy` int(11) NOT NULL COMMENT '创建人(员工)', 
  `createTime` datetime NOT NULL COMMENT '创建时间', 
  `updateBy` int(11) NULL COMMENT '更新人（员工）', 
  `updateTime` datetime NULL  COMMENT '更新时间', 
  PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='房东租金宝贷款费率表';