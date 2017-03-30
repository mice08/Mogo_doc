/*loan_contract表添加蘑菇宝申请资料资方审核时间字段*/
USE mogoroomdb;

ALTER TABLE loan_contract ADD COLUMN lenderApprovalTime datetime DEFAULT NULL  COMMENT '蘑菇宝申请资料资方审核时间';