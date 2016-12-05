/*  Database name `mogoroomdb` ，房东合同表添加备注字段*/ 
use mogoroomdb; 
 

ALTER TABLE loan_landlord_contract  ADD column remark varchar(200) NULL COMMENT '备注';