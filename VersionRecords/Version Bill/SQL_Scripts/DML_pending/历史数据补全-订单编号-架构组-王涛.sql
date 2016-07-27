use mogoroomdb;

-- 订单编号补全 
-- 1. 检查是否都有入库时间
SELECT * FROM  oder_reservationorder WHERE createTime IS NULL ;
SELECT * FROM  oder_bookOrder WHERE createTime IS NULL ;
SELECT * FROM  oder_signedOrder WHERE createTime IS NULL ;

-- 2.根据 入库时间 及 ID 生成统一编号
SELECT r.`reservationNum`,CONCAT('YY',DATE_FORMAT(r.`createTime`,'%y%m%d'),LPAD(r.`id`,10,'0')) reservationNum2 FROM oder_reservationorder r WHERE r.`reservationNum` IS NOT NULL ;
SELECT b.`bookNum`,CONCAT('YD',DATE_FORMAT(b.`createTime`,'%y%m%d'),LPAD(b.`id`,10,'0')) bookNum2 FROM oder_bookorder b WHERE b.`bookNum` IS NOT NULL ;
SELECT s.`signedNum`,CONCAT('QY',DATE_FORMAT(s.`createTime`,'%y%m%d'),LPAD(s.`id`,10,'0')) signedNum2 FROM oder_signedorder s WHERE s.`signedNum` IS NOT NULL ;

-- 3.更新数据
UPDATE oder_reservationorder r SET r.`reservationNum`= CONCAT('YY',DATE_FORMAT(r.`createTime`,'%y%m%d'),LPAD(r.`id`,10,'0')) WHERE r.`reservationNum` IS NULL;
UPDATE oder_bookorder b SET b.`bookNum`= CONCAT('YD',DATE_FORMAT(b.`createTime`,'%y%m%d'),LPAD(b.`id`,10,'0')) WHERE b.`bookNum` IS NULL;
UPDATE oder_signedorder s SET s.`signedNum`= CONCAT('QY',DATE_FORMAT(s.`createTime`,'%y%m%d'),LPAD(s.`id`,10,'0')) WHERE s.`signedNum` IS NULL;
