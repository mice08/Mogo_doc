/*新增和修改房东租金宝申请扩展表字段*/
USE mogoroomdb ;

ALTER TABLE `loan_apply_extend` modify column loanKey VARCHAR(30)  NOT NULL  COMMENT '租金宝申请的编码',
ADD COLUMN `updateTime` DATETIME NULL  COMMENT '修改时间' AFTER `createByType`,
ADD COLUMN `updateBy` INT NULL  COMMENT '修改人' AFTER `updateTime`,
ADD COLUMN `updateByType` INT NULL  COMMENT '修改人类型' AFTER `updateBy`;