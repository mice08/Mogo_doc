/*新增字段,新增是否是上传操作，文件组id*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve  
  ADD COLUMN isUpload INT(1) DEFAULT 0  NULL  COMMENT '是否是上传操作(0:否 1:是)',
  ADD COLUMN fileGroupId1 INT NULL  COMMENT '签约合同文件组id',
  ADD COLUMN fileGroupId2 INT NULL  COMMENT '信审报告文件组id',
  ADD COLUMN fileGroupId3 INT NULL  COMMENT '授权委托书文件组id';

ALTER TABLE loan_mpayapply_approve_log
  ADD COLUMN isUpload INT(1) DEFAULT 0  NULL  COMMENT '是否是上传操作(0:否 1:是)',
  ADD COLUMN fileGroupId1 INT NULL  COMMENT '签约合同文件组id',
  ADD COLUMN fileGroupId2 INT NULL  COMMENT '信审报告文件组id',
  ADD COLUMN fileGroupId3 INT NULL  COMMENT '授权委托书文件组id';