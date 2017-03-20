/*新增字段*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_collection   
ADD COLUMN receiveSignerDtl VARCHAR(256) NULL  COMMENT '收房签署方式说明(json)' AFTER receiveSigner;