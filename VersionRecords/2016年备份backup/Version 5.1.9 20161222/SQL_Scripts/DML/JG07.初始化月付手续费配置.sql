/* Database name `mogoroomdb` ，聚有财蘑菇宝月付手续费费率数据初始化（两期，五期）*/
use mogoroomdb;


BEGIN;

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='flat_roomprice');
INSERT INTO flat_roomprice (`id`, `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `valid`) VALUES (@i, '2', '3', '9997', '2016-11-09', '9999-01-01', now(), '0', '0', '5', '1');
INSERT INTO flat_roompricedtl (`priceId`, `billType`, `billDtlType`, `amount`) VALUES (@i, '10011', '10002', '150');

SET @i = (SELECT auto_increment FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='flat_roomprice');
INSERT INTO flat_roomprice (`id`, `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `valid`) VALUES (@i, '5', '3', '9997', '2016-11-09', '9999-01-01', now(), '0', '0', '5', '1');
INSERT INTO flat_roompricedtl (`priceId`, `billType`, `billDtlType`, `amount`) VALUES (@i, '10011', '10002', '150');

COMMIT;
