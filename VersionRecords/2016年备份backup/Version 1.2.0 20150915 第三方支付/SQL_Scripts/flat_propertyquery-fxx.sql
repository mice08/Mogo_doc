/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.6.25 : Database - mogodev
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mogodev` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mogodev`;

/*Table structure for table `flat_propertyquery_log` */

DROP TABLE IF EXISTS `flat_propertyquery_log`;

CREATE TABLE `flat_propertyquery_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL COMMENT '员工id',
  `area` varchar(20) DEFAULT NULL COMMENT '区域',
  `address` varchar(200) DEFAULT NULL COMMENT '查询地址',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `queryId` int(11) DEFAULT NULL COMMENT 'qianfang返回的查询id',
  `imageUrl` varchar(200) DEFAULT NULL COMMENT '查询结果的图片url',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `flatsNum` varchar(100) DEFAULT NULL COMMENT '房源编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9661 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

create table `pf` (
  `id` int (11),
  `fcode` char (21),
  `fname` varchar (1800),
  `furl` varchar (2295),
  `seq` int (11),
  `functionLevel` int (11),
  `functionpId` int (11),
  `functionisMenu` int (11),
  `functionVcode` varchar (180),
  `functionParam` varchar (2295),
  `functionFaclass` varchar (180),
  `isAjax` tinyint (1),
  `functionType` int (11),
  `createdBy` int (11),
  `createdTime` datetime ,
  `updatedBy` int (11),
  `updatedTime` datetime ,
  `status` tinyint (1)
); 
insert into `pf` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('520','0000013','产调',NULL,'13','0','0','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
insert into `pf` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('521','2052602','产调提交','flats/submitPropertyQuery','2','2','525','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1');
insert into `pf` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('522','2052603','产调同步','flats/syncPropertyQuery','3','2','525','0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1');
insert into `pf` (`id`, `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`) values('525','2052601','产调查询','flats/queryPropertyLog','1','2','526','1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1');
