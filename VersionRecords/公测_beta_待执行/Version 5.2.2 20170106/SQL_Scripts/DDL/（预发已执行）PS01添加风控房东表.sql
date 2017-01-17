/*添加风控房东表*/

use mogoroomdb;

CREATE TABLE `risk_landlord`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '风控房东表id',
  `landlordId` INT(11) COMMENT '房东id',
  `createTime` DATETIME COMMENT '创建时间',
  `createBy` INT(11) COMMENT '创建人',
  `createByType` INT(1) COMMENT '创建人类型',
  `updateTime` DATETIME COMMENT '更新时间',
  `updateBy` INT(11) COMMENT '更新人id',
  `updateByType` INT(1) COMMENT '更新人类型',
  `valid` TINYINT(1) DEFAULT 1 COMMENT '该数据是否有效(1:有效,0:无效)',
  `acceptCredit` TINYINT(1) DEFAULT 1 COMMENT '是否支持信用卡支付',
  PRIMARY KEY (`id`),
  INDEX `landlordId` (`landlordId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '风控房东表' ;