/*创建金融还款计划表*/

use mogoroomdb;
CREATE TABLE `loan_repayment_plan`(  
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `loanId` BIGINT(20) NOT NULL COMMENT '合同ID',
  `prodType` INT(10) NOT NULL COMMENT '业务类型(11001:蘑菇宝,11002:月付,参考字典表组名=loanProdType)',
  `capitalAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '本金项',
  `feeAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '手续费项',
  `discountAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '优惠金额项',
  `dueAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '应付总额',
  `penaltyAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '滞纳金',
  `payAmount` DECIMAL(12,2) NOT NULL DEFAULT 0 COMMENT '已付金额项',
  `status` INT(4) NOT NULL COMMENT '还款状态(1:未支付 2:已支付 3:部分支付)',
  `deadline` DATE NOT NULL COMMENT '应付款日',
  `lastPayTime` DATETIME COMMENT '最后付款时间',
  `loanChannel` INT(4) NOT NULL COMMENT '渠道(3:聚有财,参考字典表组名=loanChannel)',
  `periodStage` INT(4) NOT NULL COMMENT '期数',
  `periodStageStartTime` DATETIME COMMENT '当前期数开始时间',
  `periodStageEndTime` DATETIME COMMENT '当前期数结束时间',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '创建时间',
  `updateTime` DATETIME COMMENT '更新时间',
  `soDoneCode` BIGINT(20) NOT NULL DEFAULT 0 COMMENT '操作流水号',
  `valid` INT(2) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)',
  `billId` BIGINT(20) COMMENT 'acct_bill.Id',
  PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='还款计划表';

ALTER TABLE `loan_repayment_plan`   
  ADD  INDEX `loanIdIndex` (`loanId`);

ALTER TABLE `oder_businessorder`   
  ADD COLUMN `billId` BIGINT(20) DEFAULT 0  NOT NULL  COMMENT 'acct_bill.Id',
  ADD COLUMN `repayPlanId` BIGINT(20) DEFAULT 0  NOT NULL  COMMENT '还款计划Id';

/*创建视图，以便于今后更换表名*/
CREATE
    VIEW `loan_businessorder` 
    AS
(SELECT * FROM oder_businessorder);