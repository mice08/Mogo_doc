/*新增字段,新增是否是上传操作，文件组id*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve  
  ADD COLUMN isUpload INT(1) DEFAULT 0  NULL  COMMENT '是否是上传操作(0:否 1:是)';

ALTER TABLE loan_mpayapply_approve_log
  ADD COLUMN isUpload INT(1) DEFAULT 0  NULL  COMMENT '是否是上传操作(0:否 1:是)';