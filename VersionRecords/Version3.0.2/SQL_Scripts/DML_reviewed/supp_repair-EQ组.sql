/*  Database name `mogoroomdb` ，初始化supp_repair数据*/
use mogoroomdb;


UPDATE supp_repair m1,(SELECT t1.id repairid,MAX(t2.id) signedorderid FROM supp_repair t1 ,`oder_signedorder` t2
WHERE t1.roomid IS NOT NULL AND t1.roomid = t2.roomid AND t1.renterid=t2.renterid
GROUP BY t1.id) m2
SET m1.orderid=m2.signedorderid,m1.ordertype=3
WHERE m1.id=m2.repairid;

UPDATE supp_complain SET complainTarget = 9 WHERE complainTarget  IS NULL;