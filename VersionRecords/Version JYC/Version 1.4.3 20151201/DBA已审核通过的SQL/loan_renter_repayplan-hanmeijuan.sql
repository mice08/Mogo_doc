/* Database name `mogoroomdb`) ������޸����ֶ� */
use mogoroomdb;
ALTER TABLE `loan_renter_repayplan` 
ADD COLUMN `updateBy` INT(11) NULL COMMENT '�޸���',
ADD COLUMN `updateByType` INT(2) NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)';