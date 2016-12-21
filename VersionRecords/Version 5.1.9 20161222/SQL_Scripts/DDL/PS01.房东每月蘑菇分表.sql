/* Database name `mogoroomdb`, 房东每月蘑菇分表 */
USE mogoroomdb;

DROP TABLE IF EXISTS repo_landlord_monthdata;

CREATE TABLE `repo_landlord_monthdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landlordId` int(11) DEFAULT NULL COMMENT '房东ID',
  `recordDate` date DEFAULT NULL COMMENT '记录时间（月）',
  `mogoScore` int(4) DEFAULT NULL COMMENT '蘑菇分',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `updateByType` int(2) DEFAULT NULL COMMENT '创建人类型',
  `createTime` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_landlordId` (`landlordId`),
  KEY `index_recordDate` (`recordDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
