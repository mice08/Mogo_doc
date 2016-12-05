/*  Database name `mogoroomdb` ，房东表添加合同甲方字段*/ 
use mogoroomdb; 
 

ALTER TABLE user_landlord  ADD column legalPerson varchar(50) NOT NULL COMMENT '法人名称主要用于作为合同甲方';

update user_landlord set legalPerson=name;