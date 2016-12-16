/*修改字段*/

USE mogoroomdb;

/*房东蘑菇月付资质申请公司表添加法人字段*/
ALTER TABLE loan_mPayApply_company add column legalPerson varchar(32) NOT NULL COMMENT '法人姓名';