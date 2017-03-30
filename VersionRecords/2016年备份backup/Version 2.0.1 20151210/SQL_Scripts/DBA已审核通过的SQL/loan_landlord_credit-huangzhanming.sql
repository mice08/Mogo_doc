/*  Database name `mogoroomdb` ，房东信用表添加备注字段*/ 
use mogoroomdb; 
 

ALTER TABLE loan_landlord_credit  ADD column remark varchar(200) NULL COMMENT '备注';