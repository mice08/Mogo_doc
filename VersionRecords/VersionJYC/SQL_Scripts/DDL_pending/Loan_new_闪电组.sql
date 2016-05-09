/*租金宝合同 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract ADD COLUMN maximumPeriod INT(11) NOT NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;
/*租金宝合同his 新增最长蘑菇宝租期*/
ALTER TABLE loan_landlord_contract_his ADD COLUMN maximumPeriod INT(11) NOT NULL COMMENT '最长蘑菇宝租期' AFTER shortestTerm;