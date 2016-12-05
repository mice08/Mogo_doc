USE mogoroomdb;

DROP TABLE IF EXISTS `flat_roomPriceBase`;

CREATE TABLE `flat_roomPriceBase` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '表ID',
  `goodsId` INT(11) NOT NULL COMMENT '商品Id',
  `goodsIdType` TINYINT NOT NULL COMMENT 'goodsId类型。1:房间id, 2:房型id',
  `deadlineDate` INT NULL COMMENT '房租收款截止日期（正数x表示每月x日，负数y表示从租期提前y天）',
  `valid` TINYINT NOT NULL COMMENT '删除状态。0：删除、1：正常。',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `createBy` INT(11) NOT NULL COMMENT '创建者id',
  `createByType` TINYINT NOT NULL COMMENT '创建者用户类型',
  `createChannel` TINYINT NOT NULL COMMENT '创建渠道',
  `deleteTime` DATETIME NULL COMMENT '删除时间',
  `deleteBy` INT(11) NULL COMMENT '删除者id',
  `deleteByType` TINYINT NULL COMMENT '删除者用户类型',
  `deleteChannel` TINYINT NULL COMMENT '删除渠道',
  PRIMARY KEY (`id`),
  INDEX `idx_goodsId_goodsIdType` (`goodsId` ASC, `goodsIdType` ASC)
  ) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间价格配置表';
