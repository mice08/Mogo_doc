/*修改房东贷款资质审核表备注字段*/

USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve   
  CHANGE `remark` `remark1` VARCHAR(256)  NULL  COMMENT '信审一审备注',
  ADD COLUMN `remark2` VARCHAR(256) NULL  COMMENT '信审二审备注' AFTER `remark1`;