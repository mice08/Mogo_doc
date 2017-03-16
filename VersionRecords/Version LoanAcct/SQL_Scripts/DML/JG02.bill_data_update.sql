use mogoroomdb;
/*添加枚举*/
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) 
VALUES('loanChannel-3','loanChannel',3,3,'聚有财',1,'聚有财');

INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) 
VALUES('loanProdType-1','loanProdType',1,11001,'蘑菇宝',1,'蘑菇宝'),
      ('loanProdType-2','loanProdType',2,11002,'月付',2,'月付');
      
INSERT INTO comm_dictionary(CODE,groupName,sort,keyPro,VALUE,STATUS,enValue) 
VALUES('loanRepaymentType-1','loanRepaymentType',1,110001,'贷款还款',1,'贷款还款');


/*更新subsId*/
UPDATE loan_contract c SET c.subsId=(SELECT subsId FROM oder_signedorder WHERE id =c.`signedOrderId` ) WHERE c.`loanChannel` IN (3,100) AND c.subsId IS NULL;


/*导入还款计划数据(蘑菇宝)*/
INSERT INTO loan_repayment_plan(loanId,prodType,    capitalAmount,feeAmount,penaltyAmount,dueAmount,discountAmount,payAmount,          STATUS,                                                   deadline, lastPayTime,    loanChannel,periodStage,  createTime, updateTime,soDoneCode,billId,valid,periodStageStartTime,periodStageEndTime) 
                          SELECT 0,    11001   ,  amount,        0,       paidPenalty,  amount,   0,              amount-unpayAmount,  CASE  WHEN STATUS=0 THEN 0 WHEN STATUS=1 THEN 1 WHEN STATUS=3 THEN 1 END STATUS,  deadline, lastPayTime,      3,        periodStage-1, createTime, updateTime,subsId,   billId,CASE  WHEN STATUS=2 THEN 0 WHEN STATUS=4 THEN 0 WHEN STATUS=7 THEN 0 ELSE 1 END STATUS,startDate,endDate  FROM acct.acct_bill WHERE billType=10005


/*导入还款计划数据(月付)*/
INSERT INTO loan_repayment_plan(loanId,prodType,    capitalAmount,feeAmount,penaltyAmount,dueAmount,discountAmount,payAmount,            STATUS,                                                  deadline, lastPayTime,    loanChannel,periodStage,createTime,updateTime,soDoneCode,billId,valid,periodStageStartTime,periodStageEndTime) 
                          SELECT 0,    11002   ,   amount,        0,       paidPenalty,  amount,   0,              amount-unpayAmount,  CASE  WHEN STATUS=0 THEN 0 WHEN STATUS=1 THEN 1 WHEN STATUS=3 THEN 1 END STATUS,  deadline,lastPayTime,      3,         periodStage,createTime, updateTime,subsId,   billId,CASE  WHEN STATUS=2 THEN 0 WHEN STATUS=4 THEN 0 WHEN STATUS=7 THEN 0 ELSE 1 END STATUS,startDate,endDate  FROM acct.acct_bill WHERE billType=10011

/*更新合同ID(蘑菇宝)*/
UPDATE loan_repayment_plan plan SET loanId=(SELECT id FROM loan_contract WHERE  loanChannel=3 AND subsId=plan.soDoneCode) WHERE loanId = 0 AND prodType = 11001

/*更新合同ID(月付)*/
UPDATE loan_repayment_plan plan SET loanId=(SELECT id FROM loan_contract WHERE  loanChannel=4 AND subsId=plan.soDoneCode) WHERE loanId = 0 AND prodType = 11002;


/*更新billId(蘑菇宝)*/
UPDATE oder_businessorder o SET o.billId = (SELECT b.billId FROM bill_account_mapping b WHERE b.orderId=o.mogoTradeId AND b.orderType=216003) WHERE o.businessType=511001 AND o.billId =0;

/*更新billId(月付)*/
UPDATE oder_businessorder o SET o.billId = (SELECT b.billId FROM bill_account_mapping b WHERE b.orderId=o.mogoTradeId AND b.orderType=10101020) WHERE o.businessType=511001 AND o.billId =0;

/*更新planId(蘑菇宝)*/
UPDATE oder_businessorder o SET o.repayPlanId = (SELECT id FROM loan_repayment_plan WHERE  loanChannel=3 AND o.billId=billId) WHERE o.businessType=511001 AND o.repayPlanId =0;

/*更新planId(月付)*/
UPDATE oder_businessorder o SET o.repayPlanId = (SELECT id FROM loan_repayment_plan WHERE  loanChannel=3 AND o.billId=billId) WHERE o.businessType=511001 AND o.repayPlanId =0;

/*更新soDoneCode*/
UPDATE loan_repayment_plan SET soDoneCode=0;

update loan_repayment_plan set payAmount=payAmount+penaltyAmount where status=1 and valid=1 and penaltyAmount>0;