/* Database name `mogoroomdb`) ，添加修改人字段 */
use mogoroomdb;
ALTER TABLE `loan_renter_contract` 
ADD COLUMN `updateBy` INT(11) NULL COMMENT '修改人',
ADD COLUMN `updateByType` INT(2) NULL COMMENT '修改人类型(参考字典表groupName=userType)';