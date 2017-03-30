/* Database name `mogoroomdb` ，初始化贷款保证金状态 */
USE mogoroomdb;

/* 1.如果保证金为null或者0 ，则depositStatus初始化为0。默认为0了，此sql可以不用执行*/
/*UPDATE loan_landlord_payplan SET depositStatus=0 WHERE depositAmount IS NULL ;*/

/* 2.如果这笔贷款已经有买回单，则depositStatus初始化为2。*/
UPDATE  loan_landlord_payplan p JOIN loan_landlord_buyback  b  ON p.loanId = b.loanId 
SET p.depositStatus=2;


 /*3.只有未生成买回单，且保证金>0，则depositStatus初始化为1.(暂时还没有3:到期已退还)。*/
UPDATE loan_landlord_payplan p 
LEFT JOIN loan_landlord_buyback  b  ON p.loanId = b.loanId 
JOIN loan_landlord_mgmt m ON m.id=p.loanId
JOIN loan_renter_contract lrc ON m.bizcontractid=lrc.id
SET p.depositStatus=1
WHERE  p.depositAmount>0  AND b.id IS NULL AND p.payStatus IN (4) AND  m.loanStatus IN (1,4) AND lrc.status=10 ;
