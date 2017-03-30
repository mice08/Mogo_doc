/*  Database name `mogoroomdb` ，添加蘑菇宝贷款终审表*/ 
use mogoroomdb; 
 
CREATE TABLE `loan_renter_check` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '蘑菇宝贷款终审表ID', 
  `loanContractId` int(11) NOT NULL COMMENT '贷款合同ID',
  `checker` int(11)  NULL COMMENT '终审人',
  `loanChannel` tinyint(3) NULL COMMENT '贷款来源：1拉卡拉，2自营',
  `checkDesc` varchar(500)  NULL COMMENT '终审描述',
  `checkStatus` tinyint(1) NULL COMMENT '终审状态：0拒绝，1同意',
  `checkTime` datetime NOT NULL COMMENT '终审时间', 
  PRIMARY KEY (`id`) 
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蘑菇宝贷款终审表';
