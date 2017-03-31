/* Database name `mogoroomdb` */
use mogoroomdb;

UPDATE oder_businessorder t1,user_wateraccount t2
SET t1.payTotalAccount=ABS(t2.fluctuantMoney)
WHERE t1.businessnum=t2.serialnum  AND t1.businesstype IN (3002,3017) AND t2.businesstype=3002 AND t2.fundtype=1003 AND t1.usertype=2 AND t1.payTotalAccount=0.00 AND t2.fluctuantMoney<>0;