/*新增信审上传图片组id字段*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve
ADD COLUMN picGroupId INT(11) NULL  COMMENT '信审上传图片组id，如合同等' AFTER `remark2`;

ALTER TABLE loan_mpayapply_approve_log
ADD COLUMN picGroupId INT(11) NULL  COMMENT '信审上传图片组id，如合同等' AFTER `remark2`;