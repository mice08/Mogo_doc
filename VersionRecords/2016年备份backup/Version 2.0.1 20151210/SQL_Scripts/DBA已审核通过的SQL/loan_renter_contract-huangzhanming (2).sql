/*  Database name `mogoroomdb` ，贷款合同表新增2个字段*/ 
use mogoroomdb; 

ALTER TABLE `loan_renter_contract` 
ADD COLUMN `retcode`  varchar(45)  NULL COMMENT '信贷平台处理结果代码',
ADD COLUMN `errmsg` varchar(150)  NULL COMMENT '信贷平台处理结果描述';
