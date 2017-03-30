use acct;


begin;

#增账单类型
INSERT INTO acct_billtype( billType, billName, status, sort, penaltyRate, displayName, remark) VALUES
(10005, '蘑菇宝聚有财常规款房租账单', 1, 10005, 50, '蘑菇宝聚有财常规款房租账单', '蘑菇宝聚有财常规款房租账单');

INSERT INTO acct_billtype( billType, billName, status, sort, penaltyRate, displayName, remark) VALUES
(10006, '房东支付保证金账单', 1, 10006, NULL, '房东支付保证金账单', '房东支付保证金账单');

INSERT INTO acct_billtype( billType, billName, status, sort, penaltyRate, displayName, remark) VALUES
(10007, '公司退租金宝保证金账单', 1, 10007, NULL, '公司退租金宝保证金账单', '公司退租金宝保证金账单');

#增加明细类型
INSERT INTO acct_billdtltype( billDtlType, billDtlName, status, sort, usageType, displayName, remark) VALUES
(10009, '保证金', 1, 10009, 0, '保证金', '保证金');


#增加账单类型与资金类型的映射
INSERT INTO acct_billtypetofundtype (billType, fromFundType, toFundType) VALUES('10005','101','201');
INSERT INTO acct_billtypetofundtype (billType, fromFundType, toFundType) VALUES('10006','101','201');
INSERT INTO acct_billtypetofundtype (billType, fromFundType, toFundType) VALUES('10007','201','101');

commit;
