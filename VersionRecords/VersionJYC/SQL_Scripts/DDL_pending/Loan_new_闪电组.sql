/*租金宝合同 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract ADD COLUMN maximumPeriod INT(11) NOT NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

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
ALTER TABLE loan_landlord_contract_his ADD COLUMN maximumPeriod INT(11) NOT NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;

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
