 /*loan_landlord_credit_his表添加字段*/
USE mogoroomdb ;
       
ALTER TABLE `loan_landlord_credit_his` 
  ADD COLUMN `contractId` INT (11) NULL COMMENT '房东贷款合同id',
  ADD COLUMN `landlordId` INT (11) NULL COMMENT '房东id',
  ADD COLUMN `effectTime` DATETIME NULL COMMENT '生效时间',
  ADD COLUMN `effectBy` INT (11) NULL COMMENT '生效操作人',
  ADD COLUMN `effectByType` INT (1) NULL COMMENT '生效操作人类型(参照字典表组名:userType)',
  ADD COLUMN `changeTime` DATETIME NULL COMMENT '暂停/恢复时间',
  ADD COLUMN `changeBy` INT (11) NULL COMMENT '暂停/恢复操作人',
  ADD COLUMN `changeByType` INT (1) NULL COMMENT '暂停/恢复操作人类型(参照字典表组名:userType)',
  ADD COLUMN `endTime` DATETIME NULL COMMENT '终止时间',
  ADD COLUMN `endBy` INT (11) NULL COMMENT '终止操作人',
  ADD COLUMN `endByType` INT (1) NULL COMMENT '终止操作人类型(参照字典表组名:userType)' ;

  
  
  
  43
  
  
  33 + 11 =44