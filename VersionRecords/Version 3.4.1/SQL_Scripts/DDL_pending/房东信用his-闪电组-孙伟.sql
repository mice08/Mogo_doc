use mogoroomdb;
/*房东信用配置his 新增房东贷款申请中的额度占用*/
ALTER TABLE  loan_landlord_credit_his ADD COLUMN  stashedAmount DECIMAL(12,2) DEFAULT 0 COMMENT '贷款申请中的额度占用';