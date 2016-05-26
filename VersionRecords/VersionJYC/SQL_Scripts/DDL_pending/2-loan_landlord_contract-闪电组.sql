/*租金宝合同 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract ADD COLUMN longestTerm INT(11) NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*房东信用额度 新增A类额度系数百分比*/
ALTER  TABLE loan_landlord_credit ADD COLUMN rangeAmountRate INT(11) NULL COMMENT 'A类额度系数百分比' AFTER remark;

/*房东信用额度 新增B类额度系数百分比*/
ALTER  TABLE loan_landlord_credit ADD COLUMN  onlineTradingAmountRate INT(11) NULL COMMENT 'B类额度系数百分比' AFTER rangeAmountRate;

/*租金宝合同his 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract_his ADD COLUMN longestTerm INT(11) NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*房东信用额度his 新增A类额度系数百分比*/
ALTER  TABLE loan_landlord_credit_his ADD COLUMN rangeAmountRate INT(11) NULL COMMENT 'A类额度系数百分比' AFTER comments;

/*房东信用额度 新增B类额度系数百分比*/
ALTER  TABLE loan_landlord_credit_his ADD COLUMN  onlineTradingAmountRate INT(11) NULL COMMENT 'B类额度系数百分比' AFTER rangeAmountRate;

/*房东贷款合同 新增申请城市*/
ALTER TABLE  loan_landlord_contract ADD applyCityId INT(11) NULL comment '贷款申请城市' after longestTerm;

/*房东贷款合同his 新增申请城市*/
ALTER TABLE  loan_landlord_contract_his ADD applyCityId INT(11) NULL comment '贷款申请城市' after longestTerm;

/*房东买回 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER TABLE  loan_landlord_buyback MODIFY COLUMN loanChannel INT(11) NOT NULL DEFAULT 1 COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER `status`;
UPDATE loan_landlord_buyback SET loanChannel = 1;

/*房东信用 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER TABLE loan_landlord_credit modify COLUMN loanChannel int(11) not null DEFAULT 1 comment '贷款来源(参考字典表组名:loan_channel)' after amountRate;
UPDATE loan_landlord_credit SET loanChannel = 1;

/*房东租金宝 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER  TABLE loan_landlord_contract modify COLUMN loanChannel INT(11) not NULL  DEFAULT  1 comment '贷款来源(参考字典表组名:loan_channel)' after landlordId;
UPDATE loan_landlord_contract SET loanChannel = 1;

/*房东信用额度 新增当前信用额度字段*/
ALTER TABLE loan_landlord_credit ADD COLUMN currentCredits DECIMAL(12,2) NULL COMMENT '当前信用额度' AFTER  credits;

/*房东信用额度his 新增当前信用额度字段*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN currentCredits DECIMAL(12,2) NULL COMMENT '当前信用额度' AFTER credits;

/*房东信用 新增提前还账单天数*/
ALTER  TABLE loan_landlord_credit ADD COLUMN beforeDays INT (11) DEFAULT 15 NULL  COMMENT '提前还账单天数' AFTER canLoan;

/*房东信用his 新增提前还账单天数*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN beforeDays INT (11) DEFAULT 15 NULL COMMENT '提前还账单天数' AFTER canLoan;



/*房东信用额度 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_credit ADD COLUMN longestTerm INT(11) DEFAULT 12 NULL COMMENT '最短蘑菇宝租期' AFTER shortestTerm;

/*房东信用额度 主要是用来暂停租金以及取消暂停 终止租金宝*/
ALTER TABLE loan_landlord_credit ADD COLUMN soDoneCode INT(11) NULL COMMENT '业务操作记录ID(comm_business_record的id)' AFTER longestTerm;

/*房东信用额度 贷款归属城市*/
ALTER TABLE loan_landlord_credit ADD COLUMN cityId INT(11) NULL COMMENT '房东贷款归属城市' AFTER soDoneCode;

/*房东信用额度_his 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN longestTerm INT(11) DEFAULT 12 NULL COMMENT '最短蘑菇宝租期' AFTER shortestTerm;

/*房东信用额度_his 主要是用来暂停租金以及取消暂停 终止租金宝*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN soDoneCode INT(11) NULL COMMENT '业务操作记录ID(comm_business_record的id)' AFTER longestTerm;

/*房东信用额度_his 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN cityId INT(11) NULL COMMENT '房东贷款归属城市' AFTER soDoneCode;

/*房东信用额度 新增最近蘑菇宝贷款申请时间*/
ALTER  TABLE loan_landlord_credit ADD COLUMN mogoApplyTime DATETIME NULL COMMENT '最近蘑菇宝贷款申请时间' AFTER remark;

/*房东信用额度_his 新增最近蘑菇宝贷款申请时间*/
ALTER  TABLE loan_landlord_credit_his ADD COLUMN mogoApplyTime DATETIME NULL COMMENT '最近蘑菇宝贷款申请时间' AFTER comments;

