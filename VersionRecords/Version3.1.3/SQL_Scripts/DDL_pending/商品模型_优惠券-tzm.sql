/*创建关于商品模型/优惠券的表结构*/
use mogoroomdb;

DROP TABLE IF EXISTS `coup_coupon`;

CREATE TABLE `coup_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL COMMENT '卡劵金额/万分比折扣',
  `currentAmount` int(11) NOT NULL COMMENT '当前金额',
  `code` varchar(45) NOT NULL COMMENT '编码',
  `enterprise` tinyint(1) NOT NULL COMMENT '是否企业码',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `coupDefId` int(11) NOT NULL COMMENT '卡劵定义',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `status` tinyint(3) DEFAULT NULL COMMENT '0 无效 1 有效',
  PRIMARY KEY (`id`),
  KEY `IDX_COUPDEFID` (`coupDefId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卡劵表';

/*Table structure for table `coup_def` */

DROP TABLE IF EXISTS `coup_def`;

CREATE TABLE `coup_def` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(45) NOT NULL COMMENT '卡劵定义 （租金账单，多用途账单，优惠券）',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `countLimit` int(11) NOT NULL COMMENT '发行数量限制',
  `amountLimit` int(11) NOT NULL COMMENT '金额总限制',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  `amountType` tinyint(3) NOT NULL COMMENT '金额类型 1. 绝对金额 2. 万分比',
  `priority` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卡劵定义表  （租金账单，多用途账单,优惠券）';



DROP TABLE IF EXISTS `coup_def_billtype_rel`;

CREATE TABLE `coup_def_billtype_rel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coupDefId` int(11) NOT NULL,
  `billType` int(11) NOT NULL,
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人员',
  PRIMARY KEY (`id`),
  KEY `IDX_COUPDEF` (`coupDefId`),
  KEY `IDX_BILLTYPE` (`billType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卡劵定义-用户映射表';

/*Table structure for table `coup_usage` */

DROP TABLE IF EXISTS `coup_usage`;

CREATE TABLE `coup_usage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `coupId` int(11) NOT NULL COMMENT '卡劵id',
  `amount` int(11) NOT NULL COMMENT '消费金额',
  `donecode` int(11) NOT NULL,
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  PRIMARY KEY (`id`),
  KEY `IDX_USERID` (`userId`),
  KEY `IDX_COUPID` (`coupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='卡劵使用记录';

/*Table structure for table `coup_usercoupon` */

DROP TABLE IF EXISTS `coup_usercoupon`;

CREATE TABLE `coup_usercoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `channel` tinyint(3) NOT NULL COMMENT '获得渠道',
  `activityId` int(11) DEFAULT NULL COMMENT '活动id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `coupId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_USERID` (`userId`),
  KEY `IDX_COUPID` (`coupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户卡劵表';

/*Table structure for table `prod_prod` */

DROP TABLE IF EXISTS `prod_prod`;

CREATE TABLE `prod_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(45) NOT NULL COMMENT '产品名称',
  `code` varchar(45) NOT NULL COMMENT '商品代码',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `remark` varchar(100) DEFAULT NULL COMMENT '描述信息',
  `count` int(11) NOT NULL COMMENT '库存',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `prodTypeId` int(11) NOT NULL COMMENT '商品类型id',
  `vender` int(11) NOT NULL COMMENT '供应商代码，(参考字典表groupName:productVendor)',
  `createByType` tinyint(3) NOT NULL COMMENT '创建人员类型(参考字典表groupName:userType)',
  `updateByType` tinyint(3) DEFAULT NULL COMMENT '更新人员类型(参考字典表groupName:userType)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品表';

/*Table structure for table `prod_prodtype` */

DROP TABLE IF EXISTS `prod_prodtype`;

CREATE TABLE `prod_prodtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(45) NOT NULL COMMENT '商品类型名称',
  `remark` varchar(100) NOT NULL COMMENT '描述信息',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `createByType` tinyint(3) NOT NULL COMMENT '创建人员类型(参考字典表groupName:userType)',
  `updateByType` tinyint(3) NOT NULL COMMENT '更新人员类型(参考字典表groupName:userType)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品类型表';

/*Table structure for table `prod_resource` */

DROP TABLE IF EXISTS `prod_resource`;

CREATE TABLE `prod_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `code` varchar(45) NOT NULL COMMENT '货源代码',
  `prodId` int(11) NOT NULL COMMENT '商品id',
  `status` tinyint(3) NOT NULL COMMENT '1 正常 2 已下架  3已售(参考字典表groupName:resourceStatus)',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `resouceType` tinyint(3) NOT NULL COMMENT '货源类型,(参考字典表groupName:resourceType)',
  `resouceId` int(11) DEFAULT NULL COMMENT '货源ID',
  PRIMARY KEY (`id`),
  KEY `IDX_PRODID` (`prodId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='产品货源表';

DROP TABLE IF EXISTS `prod_prodperty`;

CREATE TABLE `prod_prodperty` (
  `id` int(11) NOT NULL COMMENT '主键id',
  `propertyValue` varchar(45) NOT NULL COMMENT '属性值',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人员',
  `propertyId` int(11) NOT NULL,
  `prodId` int(11) NOT NULL,
  PRIMARY KEY (`id`,`propertyId`),
  KEY `IDX_PRODID` (`prodId`),
  KEY `IDX_PROPERTY` (`propertyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性值';

/*Table structure for table `prod_property` */

DROP TABLE IF EXISTS `prod_property`;

CREATE TABLE `prod_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `propertyName` varchar(45) NOT NULL COMMENT '属性名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '描述信息',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人员',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` varchar(45) NOT NULL COMMENT '更新人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性表';

/*Table structure for table `prod_property_type_rel` */

DROP TABLE IF EXISTS `prod_property_type_rel`;

CREATE TABLE `prod_property_type_rel` (
  `id` int(11) NOT NULL COMMENT '自增主键',
  `remark` varchar(100) DEFAULT NULL,
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  `updateBy` int(11) NOT NULL COMMENT '更新人',
  `prodPropertyId` int(11) NOT NULL COMMENT '属性id',
  `prodPropertyType` int(11) NOT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`),
  KEY `IDX_PROPERTY` (`prodPropertyId`),
  KEY `IDX_PROPERTYTYPE` (`prodPropertyType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商品属性-商品类型映射表';
