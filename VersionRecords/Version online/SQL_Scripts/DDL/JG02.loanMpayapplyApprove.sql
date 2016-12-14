/*修改房东贷款资质审核表备注字段*/

USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve   
  CHANGE `remark` `remark1` VARCHAR(256)  NULL  COMMENT '拓展专员审核备注',
  ADD COLUMN `remark2` VARCHAR(256) NULL  COMMENT '信审员审核备注' AFTER `remark1`;
  
 ALTER TABLE loan_mpayapply_approve_log   
  CHANGE `remark` `remark1` VARCHAR(256)  NULL  COMMENT '拓展专员审核备注',
  ADD COLUMN `remark2` VARCHAR(256) NULL  COMMENT '信审员审核备注' AFTER `remark1`;