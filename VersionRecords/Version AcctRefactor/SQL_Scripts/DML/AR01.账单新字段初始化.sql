/*初始化帐务新字段*/
USE mogoroomdb;

UPDATE acct.acct_bill SET payoffStatus= 1 WHERE STATUS IN (1,3,5);

UPDATE acct.`acct_bill` SET valid = 0 WHERE STATUS IN (2,4,7);

UPDATE acct.`acct_bill` SET valid = 1 WHERE STATUS IN (0,1,3,5,6);

UPDATE acct.`acct_bill` SET visible = 1 WHERE STATUS !=7;

UPDATE acct.`acct_bill` SET visible = 0 WHERE STATUS =7;

UPDATE acct.`acct_bill` SET topSubsId = subsId ;

UPDATE acct.`acct_bill` SET couponPaid = 0 ;



UPDATE acct.`acct_bill` ab,
(SELECT a.`billId` AS billId, a.`lastPayTime` AS lastpaytime,a.`amount` AS amount ,SUM(-b.`amount`) AS paidamount 
FROM acct.`acct_bill` a,acct.`acct_busibilldtl` b ,acct.`acct_busifeedtl` c  
WHERE a.`billId` = b.`billId` 
AND b.`doneCode` = c.`doneCode` AND c.`fundChannel` < 100 AND c.`amount`>0 
GROUP BY a.`billId`) tempamount 
SET ab.onlinepaid = tempamount.paidamount 
WHERE ab.billId = tempamount.billId;


UPDATE acct.`acct_bill` ab,
(SELECT a.`billId` AS billId, a.`lastPayTime` AS lastpaytime,a.`amount` AS amount ,SUM(-b.`amount`) AS paidamount 
FROM acct.`acct_bill` a,acct.`acct_busibilldtl` b ,acct.`acct_busifeedtl` c  
WHERE a.`billId` = b.`billId` 
AND b.`doneCode` = c.`doneCode` AND c.`fundChannel` > 100 AND c.`amount`>0 
GROUP BY a.`billId`) tempamount 
SET ab.onlinepaid = tempamount.paidamount 
WHERE ab.billId = tempamount.billId;
