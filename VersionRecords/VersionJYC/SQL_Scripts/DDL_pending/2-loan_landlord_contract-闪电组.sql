/*租金宝合同 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract ADD COLUMN maximumPeriod INT(11) NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*租金宝合同 新增暂停操作人*/
ALTER  TABLE loan_landlord_contract ADD COLUMN  pauseUser INT(11) NULL  COMMENT '暂停租金宝操作人' AFTER maximumPeriod;

/*租金宝合同 新增暂停操作时间*/
ALTER  TABLE loan_landlord_contract ADD COLUMN pauseTime DATETIME NULL COMMENT '暂停租金宝时间' AFTER pauseUser;

/*租金宝合同 新增终止操作人*/
ALTER  TABLE loan_landlord_contract ADD  COLUMN stopUser INT(11) NULL COMMENT '终止租金宝操作人' AFTER  pauseTime;

/*租金宝合同 新增终止操作时间*/
ALTER TABLE  loan_landlord_contract ADD COLUMN  stopTime DATETIME null COMMENT '终止租金宝时间' AFTER stopUser;

/*房东信用额度 新增A类额度系数百分比*/
ALTER  TABLE loan_landlord_credit ADD COLUMN rangeAmountRate INT(11) NULL COMMENT 'A类额度系数百分比' AFTER remark;

/*房东信用额度 新增B类额度系数百分比*/
ALTER  TABLE loan_landlord_credit ADD COLUMN  onlineTradingAmountRate INT(11) NULL COMMENT 'B类额度系数百分比' AFTER rangeAmountRate;

/*租金宝合同his 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract_his ADD COLUMN maximumPeriod INT(11) NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

/*租金宝合同his 新增暂停操作人*/
ALTER  TABLE loan_landlord_contract_his ADD COLUMN  pauseUser INT(11) NULL  COMMENT '暂停租金宝操作人' AFTER maximumPeriod;

/*租金宝合同his 新增暂停操作时间*/
ALTER  TABLE loan_landlord_contract_his ADD COLUMN pauseTime DATETIME NULL COMMENT '暂停租金宝时间' AFTER pauseUser;

/*租金宝合同his 新增终止操作人*/
ALTER  TABLE loan_landlord_contract_his ADD  COLUMN stopUser INT(11) NULL COMMENT '终止租金宝操作人' AFTER  pauseTime;

/*租金宝合同his 新增终止操作时间*/
ALTER TABLE  loan_landlord_contract_his ADD COLUMN  stopTime DATETIME NULL COMMENT '终止租金宝时间' AFTER stopUser;


/*房东信用额度his 新增A类额度系数百分比*/
ALTER  TABLE loan_landlord_credit_his ADD COLUMN rangeAmountRate INT(11) NULL COMMENT 'A类额度系数百分比' AFTER comments;

/*房东信用额度 新增B类额度系数百分比*/
ALTER  TABLE loan_landlord_credit_his ADD COLUMN  onlineTradingAmountRate INT(11) NULL COMMENT 'B类额度系数百分比' AFTER rangeAmountRate;

/*房东贷款合同 新增申请城市*/
ALTER TABLE  loan_landlord_contract ADD applyCityId INT(11) NULL comment '贷款申请城市' after pauseTime;

/*房东贷款合同his 新增申请城市*/
ALTER TABLE  loan_landlord_contract_his ADD applyCityId INT(11) NULL comment '贷款申请城市' after pauseTime;

/*房东贷款申请his 修改mogo宝申请使用时间字段  为了兼容老接口 允许为空*/
ALTER  TABLE loan_landlord_contract_his MODIFY COLUMN mogoApplyTime DATETIME NULL  COMMENT '最近一次蘑菇宝申请时间' AFTER applyTime;

/*房东买回 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER TABLE  loan_landlord_buyback MODIFY COLUMN loanChannel INT(11) NOT NULL DEFAULT 1 COMMENT '贷款来源(参考字典表组名:loan_channel)' AFTER `status`;

/*房东信用 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER TABLE loan_landlord_credit modify COLUMN loanChannel int(11) not null DEFAULT 1 comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after amountRate;

/*房东租金宝 新增贷款来源为了兼容老数据 必须给默认值*/
ALTER  TABLE loan_landlord_contract modify COLUMN loanChannel INT(11) not NULL  DEFAULT  1 comment '贷款来源 参考字典表 loan_channel(1:拉卡拉 2:蘑菇 3:聚有财)' after landlordId;