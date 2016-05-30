/*更新商品模型表*/
use mogoroomdb;
CREATE TABLE IF NOT EXISTS `prod_prodtype` (
  `id` INT(11) NOT NULL COMMENT '主键id',
  `name` VARCHAR(45) NOT NULL COMMENT '商品类型名称',
  `remark` VARCHAR(100) NOT NULL COMMENT '描述信息',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `createBy` INT(11) NOT NULL COMMENT '创建人员',
  `updateTime` DATETIME NOT NULL COMMENT '更新时间',
  `updateBy` INT(11) NOT NULL COMMENT '更新人员',
  `createByType` TINYINT(3) NOT NULL COMMENT '创建人员类型(参考字典表groupName:userType)',
  `updateByType` TINYINT(3) NOT NULL COMMENT '更新人员类型(参考字典表groupName:userType)',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '商品类型表';


CREATE TABLE IF NOT EXISTS `prod_prod` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` VARCHAR(45) NOT NULL COMMENT '产品名称',
  `code` VARCHAR(45) NOT NULL COMMENT '商品代码',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `createBy` INT(11) NOT NULL COMMENT '创建人员',
  `updateTime` DATETIME NOT NULL COMMENT '更新时间',
  `updateBy` INT(11) NOT NULL COMMENT '更新人员',
  `remark` VARCHAR(100) NULL COMMENT '描述信息',
  `count` INT(11) NOT NULL COMMENT '库存',
  `startTime` DATETIME NOT NULL COMMENT '开始时间',
  `endTime` DATETIME NOT NULL COMMENT '结束时间',
  `prodTypeId` INT(11) NOT NULL COMMENT '商品类型id',
  `vender` INT(11) NOT NULL COMMENT '供应商代码，(参考字典表groupName:productVendor)',
  `createByType` TINYINT(3) NOT NULL COMMENT '创建人员类型(参考字典表groupName:userType)',
  `updateByType` TINYINT(3) NULL COMMENT '更新人员类型(参考字典表groupName:userType)',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '产品表';


CREATE TABLE IF NOT EXISTS `prod_resource` (
  `id` INT(11) NOT NULL COMMENT '自增id',
  `code` VARCHAR(45) NOT NULL COMMENT '货源代码',
  `prodId` INT(11) NOT NULL COMMENT '商品id',
  `status` TINYINT(3) NOT NULL COMMENT '1 正常 2 已下架  3已售(参考字典表groupName:resourceStatus)',
  `startTime` DATETIME NOT NULL COMMENT '开始时间',
  `endTime` DATETIME NOT NULL COMMENT '结束时间',
  `createBy` INT(11) NOT NULL COMMENT '创建人员',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `updateTime` DATETIME NOT NULL COMMENT '更新时间',
  `updateBy` INT(11) NOT NULL COMMENT '更新人员',
  `resouceType` TINYINT(3) NOT NULL COMMENT '货源类型,(参考字典表groupName:resourceType)',
  `resouceId` INT(11) NULL COMMENT '货源ID',
  PRIMARY KEY (`id`),
	KEY `IDX_PRODID` (`prodId`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '产品货源表';

