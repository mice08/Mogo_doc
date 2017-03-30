
CREATE TABLE `orde_signedOrder_landlord` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '合同房东费用关系表',
  `signId` int(11) DEFAULT NULL COMMENT '合同id',
  `landlordFeeId` int(11) DEFAULT NULL COMMENT '房东费用id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `orde_landlordFee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东承担费用id',
  `name` varchar(64) DEFAULT NULL COMMENT '承担费用名称',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '是否有效，默认0有效1无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `orde_landlordFee` */

insert  into `orde_landlordFee`(`id`,`name`,`createTime`,`status`) values (1,'水费','2015-08-10 09:25:00',0),(2,'电费','2015-08-10 09:25:06',0),(3,'煤气费','2015-08-10 09:25:15',0),(4,'有线电视费','2015-08-10 09:51:42',0),(5,'网络宽带费','2015-08-10 09:51:49',0),(6,'物业管理费','2015-08-10 09:51:56',0),(7,'室内设施维修费（人为使用不当除外）','2015-08-10 09:52:02',0),(8,'保洁费','2015-08-10 09:52:08',0),(9,'暖气费','2015-08-10 09:52:13',0);
