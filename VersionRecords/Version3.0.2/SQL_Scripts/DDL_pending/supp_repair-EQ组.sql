/*  Database name `mogoroomdb` ，supp_repair增加字段*/
use mogoroomdb;

ALTER TABLE  `supp_repair`   
  ADD COLUMN `orderId` INT(11) NULL   COMMENT '订单ID'' AFTER `renterId`,
  ADD COLUMN `orderType` tinyint(2) NULL   COMMENT '订单类型(参考字典表组名:orderType)' AFTER `orderId`;
ALTER TABLE  `supp_complain`   
  ADD COLUMN `orderId` INT(11) NULL   COMMENT '订单ID' AFTER `renterId`,
  ADD COLUMN `orderType` tinyint(2) NULL   COMMENT '订单类型(参考字典表组名:orderType)' AFTER `orderId`;



UPDATE supp_repair m1,(SELECT t1.id repairid,MAX(t2.id) signedorderid FROM supp_repair t1 ,`oder_signedorder` t2
WHERE t1.roomid IS NOT NULL AND t1.roomid = t2.roomid AND t1.renterid=t2.renterid
GROUP BY t1.id) m2
SET m1.orderid=m2.signedorderid,m1.ordertype=3
WHERE m1.id=m2.repairid;