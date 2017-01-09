/*贷款合同基础信息快照表*/

use mogoroomdb;


drop table if exists loan_contract_snapshot;

CREATE TABLE `loan_contract_snapshot` (
`id`  int(11) NOT NULL AUTO_INCREMENT COMMENT '主键' ,
`loanContractId`  int(11) NOT NULL COMMENT '贷款合同Id' ,
`renterId`  int(11) NOT NULL COMMENT '租客id' ,
`renterPhone`  varchar(16) NULL COMMENT '租客手机号' ,
`renterName`  varchar(64) NULL COMMENT '租客姓名' ,
`roomId`  int(11) NOT NULL COMMENT '房间id' ,
`roomDesc`  varchar(255) NULL COMMENT '房源描述' ,
`debitbank`  varchar(8) NULL COMMENT '借记卡开户行' ,
`debitcard`  varchar(20) NULL COMMENT '借记卡卡号' ,
`bankMobile`  varchar(16) NULL COMMENT '银行预留手机号码' ,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment '贷款合同基础信息快照表';