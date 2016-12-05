/*  Database name `mogoroomdb` ，贷款合同表新增2个字段*/ 
use mogoroomdb; 

ALTER TABLE `loan_renter_contract` 
ADD COLUMN `confirmer` int(11) NULL COMMENT '财务款项到位确认人',
ADD COLUMN `confirmTime` datetime NULL COMMENT '财务款项到位确认时间';