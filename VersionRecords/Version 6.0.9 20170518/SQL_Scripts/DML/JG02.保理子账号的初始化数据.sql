/*新增保理子账号上线时，初始化数据：
1.拉卡拉和聚有财蘑菇宝买回 将toAcctId=10000 修改为20000
2.保理acctId上会加这些金额，也要把这个金额送给网商
*/
USE mogoroomdb;
BEGIN;
	


/*拉卡拉蘑菇宝买回(房东买回房租1008、逾期手续费10001)、聚有财蘑菇宝买回(房东买回房租1008)、蘑菇月付买回(蘑菇月付买回本金账单10013)*/
UPDATE acct.acct_bill acctbill SET acctbill.toAcctId=20000 WHERE acctbill.billType  IN (1008,10001,10013) AND acctbill.toAcctId='10000' AND STATUS =0;



COMMIT;




	


