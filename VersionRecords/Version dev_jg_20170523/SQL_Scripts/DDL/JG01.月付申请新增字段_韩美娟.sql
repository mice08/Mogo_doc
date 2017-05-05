/*新增字段*/
USE mogoroomdb;

ALTER TABLE loan_mpayapply_approve   
ADD COLUMN busiManagerRemark VARCHAR(256) NULL  COMMENT '拓展经理审核备注';

ALTER TABLE loan_mpayapply_approve_log
ADD COLUMN busiManagerRemark VARCHAR(256) NULL  COMMENT '拓展经理审核备注';

ALTER TABLE loan_mpayapply_collection  
ADD COLUMN busiManagerRemark VARCHAR(128) NULL  COMMENT '经理意见' AFTER STATUS,
ADD COLUMN creditRemark VARCHAR(128) NULL  COMMENT '信审意见' AFTER busiManagerRemark;