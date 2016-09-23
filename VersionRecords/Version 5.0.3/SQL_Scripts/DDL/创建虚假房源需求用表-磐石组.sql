/* Database name `mogoroomdb` 创建虚假房源需求用表，第一个为快照使用，第二个为bs页面查询使用，两个表的数据由定时器维护 第二个表的数据部分字段由bs页面维护 */

use mogoroomdb;

CREATE TABLE `flat_riskbase` (
  `id` INT(11) NOT NULL COMMENT 'id',
  `communityId` INT(11) DEFAULT NULL COMMENT '小区id',
  `avgArea` INT(4) DEFAULT NULL COMMENT '房源平均面积',
  `avgPrice` INT(6) DEFAULT NULL COMMENT '房源平均售价',
  `unitPrice` INT(6) DEFAULT NULL COMMENT '房源每平米平均单价',
  `createTime` DATE DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '房源风险基准信息';


CREATE TABLE `flat_riskdetail` (
  `id` INT(11) NOT NULL COMMENT 'id',
  `roomId` INT(11) DEFAULT NULL COMMENT '房间id',
  `riskNum` VARCHAR(25) DEFAULT NULL COMMENT '房源风险编码',
  `status` TINYINT(1) DEFAULT '0' COMMENT '处理状态(0:未处理 1:通过 2:惩罚 )',
  `createTime` DATE DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `handleTime` DATETIME DEFAULT NULL COMMENT '处理时间',
  `handleBy` INT(11) DEFAULT NULL COMMENT '处理人',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '风险房源信息';