/*
  水电煤SQL
*/

DROP TABLE IF EXISTS `bill_weg_detail`;

CREATE TABLE `bill_weg_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `communityId` int(11) NOT NULL COMMENT '小区ID',
  `flatsId` int(11) NOT NULL COMMENT '公寓ID',
  `roomId` int(11) NOT NULL COMMENT '房间ID',
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `operEmpId` int(11) NOT NULL COMMENT '抄表人',
  `operTime` datetime NOT NULL COMMENT '抄表时间',
  `count` decimal(10,2) NOT NULL COMMENT '本次读数',
  `beforeCount` decimal(10,2) NOT NULL COMMENT '上次读数',
  `currentPrice` decimal(10,2) NOT NULL COMMENT '当时单价',
  `totalAmount` decimal(10,2) NOT NULL COMMENT '总金额',
  `wegType` int(11) NOT NULL COMMENT '水电煤类型(0:水 1:电 2:煤)',
  `status` int(11) NOT NULL COMMENT '创建账单状态(0:未生成 1:已生成)',
  `billId` int(11) DEFAULT NULL COMMENT '账单ID',
  `haveSignOrder` bit(1) NOT NULL COMMENT '是否有租约(0:有租约 1:没有租约)',
  `renterId` int(11) DEFAULT NULL COMMENT '租客ID',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，用于标示该记录是否逻辑删除',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) NOT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL DEFAULT '-1' COMMENT '修改人',
  `updateByType` int(11) NOT NULL DEFAULT '-1' COMMENT '修改人类型(参考字典表组名:userType)',
  `soDoneCode` int(32) NOT NULL DEFAULT '-1' COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='水电煤详情记录表';

 

DROP TABLE IF EXISTS `bill_weg_price`;

CREATE TABLE `bill_weg_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `wegTypeId` int(11) NOT NULL COMMENT '水电煤类型',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(11) NOT NULL COMMENT '创建人类型',
  `updateBy` int(11) NOT NULL DEFAULT '-1' COMMENT '更新人',
  `updateByType` int(11) NOT NULL DEFAULT '-1' COMMENT '更新人类型',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `soDoneCode` int(32) NOT NULL DEFAULT '-1' COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，用于标示该记录是否逻辑删除',
  `status` int(4) NOT NULL DEFAULT '-1' COMMENT '状态 用于标示业务状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INX_LANDWEGID_UNI` (`landlordId`,`wegTypeId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='房东水电煤单价记录表';

 
DROP TABLE IF EXISTS `bill_weg_type`;

CREATE TABLE `bill_weg_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) NOT NULL COMMENT '类型名称',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT '状态 用于标示业务状态',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createByType` int(11) NOT NULL COMMENT '创建人类型',
  `updateBy` int(11) NOT NULL DEFAULT '-1' COMMENT '更新人',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateByType` int(11) NOT NULL DEFAULT '-1' COMMENT '更新人类型',
  `soDoneCode` int(32) NOT NULL DEFAULT '-1' COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，用于标示该记录是否逻辑删除',
  UNIQUE KEY `INX_TYPENAME` (`typeName`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='水电煤类型表';

 

insert  into `bill_weg_type`(`id`,`typeName`,`status`,`createBy`,`createTime`,`createByType`,`updateBy`,`updateTime`,`updateByType`,`soDoneCode`,`remark`,`valid`) values (1,'水费',1,1,'2016-10-08 17:37:20',1,-1,'2016-10-08 17:37:20',-1,-1,NULL,1),(3,'煤气费',1,1,'2016-10-08 17:37:37',1,-1,'2016-10-08 17:39:47',-1,-1,NULL,1),(2,'电费',1,1,'2016-10-08 17:37:27',1,-1,'2016-10-08 17:37:27',-1,-1,NULL,1);

 