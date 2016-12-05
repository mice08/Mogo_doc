USE `mogoroomdb` ;


DROP TABLE IF EXISTS `flat_roomPrice` ;

CREATE TABLE IF NOT EXISTS `flat_roomPrice` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `roomId` INT(11) NOT NULL COMMENT '房间Id',
  `bizType` INT(11) NOT NULL COMMENT '商业类型，参考RoomPriceBizType表',
  `startTime` DATETIME NOT NULL COMMENT '价格有效开始日期',
  `endTime` DATETIME NULL COMMENT '价格有效截止日期',
  `createTime` DATETIME NOT NULL,
  `createBy` INT(11) NOT NULL,
  `createByType` TINYINT NOT NULL,
  `createChannel` TINYINT NOT NULL,
  `deleteTime` DATETIME NULL,
  `deleteBy` INT(11) NULL,
  `deleteByType` TINYINT NULL,
  `deleteChannel` TINYINT NULL,
  `valid` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_roomId` (`roomId` ASC)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间价格表';

DROP TABLE IF EXISTS `flat_roomPriceDtl` ;

CREATE TABLE IF NOT EXISTS `flat_roomPriceDtl` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `priceId` INT(11) NOT NULL COMMENT '参考room_price表。',
  `billType` INT(11) NOT NULL COMMENT '账单类型。参考acct_billtype表。',
  `billDtlType` INT(11) NOT NULL COMMENT '账单详细类型。参考acct_billdtltype;',
  `amount` DECIMAL(10,2) NOT NULL COMMENT '该账单详细的价钱',
  PRIMARY KEY (`id`),
  INDEX `idx_roomPriceId` (`priceId` ASC)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间价格包';

DROP TABLE IF EXISTS `flat_roomPriceBizType` ;

CREATE TABLE IF NOT EXISTS `flat_roomPriceBizType` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `payTypeId` INT(11) NOT NULL COMMENT '付款类型id。参考付款类型表(room_price_paytype',
  `payStage` TINYINT(4) NOT NULL COMMENT '付款阶段：1定金，2首期款，3常规款，4尾款。',
  `bizType` INT(11) NOT NULL,
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间价格业务类型';

DROP TABLE IF EXISTS `comm_payType` ;

CREATE TABLE IF NOT EXISTS `comm_payType` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32) NOT NULL COMMENT '付款类型名，如付三押一+蘑菇宝',
  `rentPeriods` TINYINT(4) NOT NULL COMMENT '首期款租金期数',
  `foregiftPeriods` TINYINT(4) NOT NULL COMMENT '首期款押金期数',
  `finProdType` TINYINT(4) NOT NULL COMMENT '金融产品类型。0 不使用; 1 蘑菇宝；',
  PRIMARY KEY (`id`))
ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '付款类型';


DROP TABLE IF EXISTS `flat_roomBasePrice` ;

CREATE TABLE IF NOT EXISTS `flat_roomBasePrice` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `roomId` INT(11) NOT NULL COMMENT '房间Id',
  `startTime` DATE NOT NULL COMMENT '价格有效开始日期',
  `endTime` DATE NULL DEFAULT NULL COMMENT '价格有效截止日期',
  `amount` DECIMAL(10,2) NOT NULL,
  `createTime` DATETIME NOT NULL,
  `createBy` INT(11) NOT NULL,
  `createByType` TINYINT NOT NULL,
  `createChannel` TINYINT NOT NULL,
  `deleteTime` DATETIME NULL,
  `deleteBy` INT(11) NULL,
  `deleteByType` TINYINT NULL,
  `deleteChannel` TINYINT NULL,
  `valid` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_roomId` (`roomId` ASC)) ENGINE = InnoDB DEFAULT CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间基准价格表';


