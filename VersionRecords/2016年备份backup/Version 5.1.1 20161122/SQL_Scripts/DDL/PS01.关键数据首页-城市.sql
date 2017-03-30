/*新建关键数据首页-城市表，每日记录全量的统计*/
USE mogoroomdb;

CREATE TABLE `repo_alldetail_city` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `createDate` DATE DEFAULT NULL COMMENT '创建时间',
  `cityId` INT(11) DEFAULT NULL COMMENT '城市id',
  `cityName` VARCHAR(25) DEFAULT NULL COMMENT '城市名称',
  `landlordNum` INT(11) DEFAULT NULL COMMENT '房东签约数量',
  `roomNum` INT(11) DEFAULT NULL COMMENT '房源录入量',
  `signNum` INT(11) DEFAULT NULL COMMENT '租约录入量',
  `offlinePayNum` INT(11) DEFAULT NULL COMMENT '线下支付笔数',
  `onlinePayNum` INT(11) DEFAULT NULL COMMENT '在线支付笔数',
  `offlinePayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '线下支付金额',
  `onlinePayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '在线支付金额',
  PRIMARY KEY (`id`),
  KEY `cityId` (`cityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='关键数据首页-城市'