/*金融产品服务表添加字段*/
USE mogoroomdb ;

ALTER TABLE loan_landlord_credit 
  ADD COLUMN firstVerifyCreditHisId INT (11) NULL COMMENT '一审前最后一次修改服务的hisId(loan_landlord_credit_his)'  ;

ALTER TABLE loan_landlord_credit_his 
  ADD COLUMN firstVerifyCreditHisId INT (11) NULL COMMENT '一审前最后一次修改服务的hisId(loan_landlord_credit_his)'  ;
