/*  初始化手续费费率*/
USE mogoroomdb;

INSERT INTO `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) 
VALUES('2','3','9997',SYSDATE(),'9999-01-01 00:00:00',SYSDATE(),'0','0','5',NULL,NULL,NULL,NULL,'1');
INSERT INTO `flat_roompricedtl` (`priceId`, `billType`, `billDtlType`, `amount`) VALUES((SELECT id FROM flat_roomprice  WHERE goodsId = 2 AND goodsIdType= 3   AND bizType = 9997),'10011','10002','150.00');		

