/*  Database name `mogoroomdb` ，撤消相关账单*/
use mogoroomdb;

UPDATE oder_bookorder t1,bill_account_mapping t2,acct.`acct_bill` t3 SET t3.status=2 
WHERE t1.status IN (98) AND t1.id=t2.`orderId` AND t2.`orderType`=216001 AND t2.`billId`=t3.`billId` AND t3.`status`=0;