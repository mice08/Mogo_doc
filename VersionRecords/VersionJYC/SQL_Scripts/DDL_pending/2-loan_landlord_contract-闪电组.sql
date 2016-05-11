/*租金宝合同 新增 soDoneCode 主要是用来暂停租金以及取消暂停 终止租金宝*/
ALTER TABLE loan_landlord_contract ADD COLUMN soDoneCode INT(11) null COMMENT '业务操作(参考字典表组名:comm_business_record)' AFTER credits;

/*租金宝合同his 新增 soDoneCode 主要是用来暂停租金以及取消暂停 终止租金宝*/
ALTER TABLE loan_landlord_credit_his ADD COLUMN soDoneCode INT(11) null COMMENT '业务操作(参考字典表组名:comm_business_record)' AFTER  credits;

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


/*房东贷款申请 新增mogo申请时间字段 在使用mogo宝时更新下这个字段时间*/
ALTER TABLE  loan_landlord_contract MODIFY COLUMN mogoApplyTime DATETIME NULL COMMENT '最近一次蘑菇宝申请时间' AFTER applyTime;
UPDATE loan_landlord_contract SET mogoApplyTime = applyTime;

/*房东贷款申请his 新增mogo宝申请使用时间字段*/
ALTER  TABLE loan_landlord_contract_his MODIFY COLUMN mogoApplyTime DATETIME NULL COMMENT '最近一次蘑菇宝申请时间' AFTER applyTime;
UPDATE loan_landlord_contract_his SET mogoApplyTime = applyTime;