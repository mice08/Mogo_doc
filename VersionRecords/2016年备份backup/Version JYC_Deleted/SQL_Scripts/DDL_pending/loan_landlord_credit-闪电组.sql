USE mogoroomdb;
/*房东信用额度 新增额度调理*/
ALTER TABLE loan_landlord_credit ADD COLUMN creditsAdjust decimal(12,2) DEFAULT '0.00' COMMENT '额度调理(-500,000到2,000,000)';

/*房东信用额度_his 新增额度调理*/
ALTER  TABLE  loan_landlord_credit_his ADD COLUMN creditsAdjust  decimal(12,2) DEFAULT '0.00' COMMENT '额度调理(-500,000到2,000,000)';
