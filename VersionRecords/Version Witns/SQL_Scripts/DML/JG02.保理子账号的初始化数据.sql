/*新增保理子账号上线时，初始化数据：
1.拉卡拉和聚有财蘑菇宝买回 将toAcctId=10000 修改为20000
2.保理acctId上会加这些金额，也要把这个金额送给网商
*/
USE mogoroomdb;
BEGIN;

/*拉卡拉蘑菇宝买回(房东买回房租1008、逾期手续费10001)、聚有财蘑菇宝买回(房东买回房租1008)、蘑菇月付买回(蘑菇月付买回本金账单10013)*/
UPDATE acct.acct_bill acctbill SET acctbill.toAcctId=20000 WHERE acctbill.billType  IN (1008,10001,10013) AND acctbill.toAcctId='10000' AND STATUS =0;

UPDATE acct.acct_fund SET amount =(

	SELECT (jyc.depositAmount +lakala.depositAmount) AS depositAmount FROM
	(
	/* 聚有财*/
	SELECT IFNULL(SUM(shou.amount),0) AS depositAmount,'deposit' AS deposit
	FROM bill_salebill shou 
	JOIN user_account_mapping  uam ON shou.`landlordId`=uam.`userId` AND uam.`userType`=0 
	LEFT JOIN bill_salebill tui ON shou.signedOrderId = tui.signedOrderId  AND ( shou.bill_type = 10006  AND tui.bill_type=10007)
	WHERE  shou.bill_type = 10006 AND tui.signedOrderId IS NULL
	) jyc,

	(
	/* 拉卡拉*/
	SELECT IFNULL(SUM(t1.depositAmount),0) AS depositAmount,'deposit' AS deposit
	FROM loan_landlord_payplan t1  
	JOIN  loan_landlord_mgmt t2  ON t1.loanId=t2.id AND t2.loanStatus IN(1,4) 
	JOIN user_account_mapping  uam  ON t2.`landlordId`=uam.`userId` AND uam.`userType`=0 
	WHERE  t1.loanChannel = 1 AND t1.payStatus=4  AND t1.depositStatus=1 AND t1.depositAmount>0 

	)lakala
	WHERE jyc.deposit = lakala.deposit

) WHERE acctId=20000 AND fundType=201;


COMMIT;




	


