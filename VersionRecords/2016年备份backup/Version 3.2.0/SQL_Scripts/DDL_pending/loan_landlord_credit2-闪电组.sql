/*房东信用额度 新增A类额度系数百分比*/
ALTER TABLE  loan_landlord_credit ADD COLUMN rangeAmountRate INT(11) DEFAULT NULL COMMENT 'A类额度系数百分比';

/*房东信用额度 新增B类额度系数百分比*/
ALTER TABLE  loan_landlord_credit ADD COLUMN onlineTradingAmountRate INT(11) DEFAULT NULL COMMENT 'B类额度系数百分比';