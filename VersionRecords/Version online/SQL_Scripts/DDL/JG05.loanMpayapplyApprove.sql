/*修改字段*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve
ADD COLUMN picGroupId INT(11) NULL  COMMENT '合同图片组id' AFTER `remark2`;