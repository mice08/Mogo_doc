
/* Database name `mogoroomdb`
创建虚假房源需求用表，第一个为快照使用，第二个为bs页面查询使用，两个表的数据由定时器维护
第二个表的数据部分字段由bs页面维护 */

USE mogoroomdb;

DROP TABLE IF EXISTS `risk_communityBase`;
CREATE TABLE `risk_communityBase` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` DATE DEFAULT NULL COMMENT '创建时间,精确到天',
  `communityId` INT(11) DEFAULT NULL COMMENT '小区id',
  `avgArea` INT(4) DEFAULT NULL COMMENT '房源平均面积',
  `avgPrice` INT(4) DEFAULT NULL COMMENT '房源平均售价',
  `unitPrice` INT(6) DEFAULT NULL COMMENT '房源每平米平均单价',
  `createTime` DATETIME DEFAULT NULL COMMENT '创建时间,记录系统生成数据的时间',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='房源风险基准信息';

DROP TABLE IF EXISTS `risk_roomDetail`;
CREATE TABLE `risk_roomDetail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `commBaseId` INT(11) DEFAULT NULL COMMENT '小区基准信息id',
  `roomId` INT(11) DEFAULT NULL COMMENT '房间id',
  `riskCode` VARCHAR(25) DEFAULT NULL COMMENT '房源风险编码(参考字典表组名:riskCode)',
  `status` TINYINT(1) DEFAULT '0' COMMENT '处理状态(0:未处理 1:已处理)',
  `valid` TINYINT(1) DEFAULT '1' COMMENT '是否有效(1:有效 0:无效)',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `handleTime` DATETIME DEFAULT NULL COMMENT '处理时间',
  `employeeId` INT(11) DEFAULT NULL COMMENT '处理人id,员工id',
  `soDoneCode` INT(32) DEFAULT NULL COMMENT '操作流水号',
  `punishType` VARCHAR(25) DEFAULT NULL COMMENT '惩罚类型(参考字典表组名:punishType)',
  `punishDegree` VARCHAR(25) DEFAULT NULL COMMENT '惩罚程度(参考字典表组名:punishDegree)',
  `userMemo` VARCHAR(255) DEFAULT NULL COMMENT '处理人备注',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '系统备注',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `soDoneCode` (`soDoneCode`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='风险房源信息';
