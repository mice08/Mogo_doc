/*  Database name `mogoroomdb` ，初始化费率数据*/
USE mogoroomdb;


insert  into `coup_def`(`name`,`remark`,`countLimit`,`amountLimit`,`createTime`,`createBy`,`updateTime`,`updateBy`,`amountType`,`priority`) values ('DISCOUNT_USER','用户类优惠',1000,1000,'2016-05-05 16:26:13',-1,'2016-05-05 16:26:19',-1,2,2);
insert  into `coup_def`(`name`,`remark`,`countLimit`,`amountLimit`,`createTime`,`createBy`,`updateTime`,`updateBy`,`amountType`,`priority`) values ('DISCOUNT_ACTIVITY','活动类优惠',1000,1000,'2016-05-05 16:26:13',-1,'2016-05-05 17:45:50',-1,2,4);

/*
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (1,'2个月金融蘑菇宝','MOGOBAO_2','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
*/
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (2,'3个月金融蘑菇宝','MOGOBAO_3','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (3,'4个月金融蘑菇宝','MOGOBAO_4','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (4,'5个月金融蘑菇宝','MOGOBAO_5','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (5,'6个月金融蘑菇宝','MOGOBAO_6','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (6,'7个月金融蘑菇宝','MOGOBAO_7','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (7,'8个月金融蘑菇宝','MOGOBAO_8','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (8,'9个月金融蘑菇宝','MOGOBAO_9','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (9,'10个月金融蘑菇宝','MOGOBAO_10','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);
insert  into `prod_product`(`id`,`name`,`code`,`createTime`,`createBy`,`updateTime`,`updateBy`,`remark`,`count`,`startTime`,`endTime`,`prodType`,`vender`,`createByType`,`updateByType`,`status`) values (10,'11个月金融蘑菇宝','MOGOBAO_11','2016-05-05 16:18:15',-1,'2016-05-05 16:18:20',-1,'初始化数据',1,'2000-01-01 00:00:00','2099-01-01 00:00:00',3,1,-1,-1,1);

/*
insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(1,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
insert  into `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'200.00';
*/



insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(2,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'500.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(3,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'500.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(4,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'500.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(5,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'600.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(6,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'600.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(7,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'600.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(8,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'700.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(9,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'700.00';

insert into `flat_roomprice` ( `goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values(10,'3','9999','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),1009,1009,'700.00';


insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('2','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'5000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('3','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'5000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('4','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'5000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('5','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('6','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('7','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('8','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('9','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('10','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';

/*
insert into `flat_roomprice` (`goodsId`, `goodsIdType`, `bizType`, `startTime`, `endTime`, `createTime`, `createBy`, `createByType`, `createChannel`, `deleteTime`, `deleteBy`, `deleteByType`, `deleteChannel`, `valid`) values('11','3','9998','2016-05-13 19:52:52','9999-01-01 00:00:00','2016-05-13 19:53:01','3100285','0','5',NULL,NULL,NULL,NULL,'1');
INSERT  INTO `flat_roompricedtl`(`priceId`,`billType`,`billDtlType`,`amount`) SELECT LAST_INSERT_ID(),10006,10006,'10000.00';
*/


INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-3','userLoanRateRef','2','3','400','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-4','userLoanRateRef','3','4','400','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-5','userLoanRateRef','4','5','400','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-6','userLoanRateRef','5','6','500','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-7','userLoanRateRef','6','7','500','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-8','userLoanRateRef','7','8','500','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-9','userLoanRateRef','8','9','600','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-10','userLoanRateRef','9','10','600','1',NULL,'');
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) VALUES('userLoanRateRef-11','userLoanRateRef','10','11','600','1',NULL,'');