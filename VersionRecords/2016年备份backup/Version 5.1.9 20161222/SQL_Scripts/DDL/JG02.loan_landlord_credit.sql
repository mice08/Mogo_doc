/*loan_landlord_credit表添加字段*/
USE mogoroomdb ;

ALTER TABLE `loan_landlord_credit` 
  ADD COLUMN `rangeAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '规模动态额度' ,
  ADD COLUMN `roomCount` INT DEFAULT 0 NOT NULL COMMENT '房东房间数' ,
  ADD COLUMN `onlineTradingAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '线上交易动态额度总额' ,
  ADD COLUMN `deductionAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '额度扣减总额' ,
  ADD COLUMN `restoreAmount` DECIMAL (12, 2) DEFAULT 0 NOT NULL COMMENT '额度恢复总额' ,
  ADD COLUMN `stashedAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '贷款申请中的额度占用' ,
  ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '月租金总额' ,
  ADD COLUMN `contractId` INT (11) NULL COMMENT '房东贷款合同id',
  ADD COLUMN `prodTypeCode`  VARCHAR(20) comment '商品类型编码(参考商品类型表prodTypeCode)',
  ADD COLUMN `effectTime` DATETIME NULL COMMENT '生效时间',
  ADD COLUMN `effectBy` INT (11) NULL COMMENT '生效操作人',
  ADD COLUMN `effectByType` INT (1) NULL COMMENT '生效操作人类型(参照字典表组名:userType)',
  ADD COLUMN `alterTime` DATETIME NULL COMMENT '暂停/恢复时间',
  ADD COLUMN `alterBy` INT (11) NULL COMMENT '暂停/恢复操作人',
  ADD COLUMN `alterByType` INT (1) NULL COMMENT '暂停/恢复操作人类型(参照字典表组名:userType)',
  ADD COLUMN `endTime` DATETIME NULL COMMENT '终止时间',
  ADD COLUMN `endBy` INT (11) NULL COMMENT '终止操作人',
  ADD COLUMN `endByType` INT (1) NULL COMMENT '终止操作人类型(参照字典表组名:userType)';


ALTER TABLE `loan_landlord_credit_his` 
  ADD COLUMN `rentAmount` DECIMAL (12, 2) DEFAULT 0 NULL COMMENT '月租金总额',
  ADD COLUMN `contractId` INT (11) NULL COMMENT '房东贷款合同id',
  ADD COLUMN prodTypeCode VARCHAR(20) comment '商品类型编码(参考商品类型表prodTypeCode)',
  ADD COLUMN `landlordId` INT (11) NULL COMMENT '房东id',
  ADD COLUMN `effectTime` DATETIME NULL COMMENT '生效时间',
  ADD COLUMN `effectBy` INT (11) NULL COMMENT '生效操作人',
  ADD COLUMN `effectByType` INT (1) NULL COMMENT '生效操作人类型(参照字典表组名:userType)',
  ADD COLUMN `alterTime` DATETIME NULL COMMENT '暂停/恢复时间',
  ADD COLUMN `alterBy` INT (11) NULL COMMENT '暂停/恢复操作人',
  ADD COLUMN `alterByType` INT (1) NULL COMMENT '暂停/恢复操作人类型(参照字典表组名:userType)',
  ADD COLUMN `endTime` DATETIME NULL COMMENT '终止时间',
  ADD COLUMN `endBy` INT (11) NULL COMMENT '终止操作人',
  ADD COLUMN `endByType` INT (1) NULL COMMENT '终止操作人类型(参照字典表组名:userType)' ;