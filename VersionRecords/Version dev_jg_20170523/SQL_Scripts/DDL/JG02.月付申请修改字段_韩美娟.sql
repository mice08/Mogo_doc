/*修改字段长度*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_company  
MODIFY companyTel VARCHAR(20) NULL  COMMENT '企业电话';