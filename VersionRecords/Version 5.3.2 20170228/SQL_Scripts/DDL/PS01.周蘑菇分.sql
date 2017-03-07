/*  Database name `mogoroomdb`  增加房东周数据表*/
use mogoroomdb;

CREATE TABLE `repo_landlord_weekdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landlordId` int(11) NOT NULL COMMENT '房东ID',
  `recordDate` date NOT NULL COMMENT '记录时间',
  `mogoScore` int(4) NOT NULL COMMENT '蘑菇分',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(2) NOT NULL COMMENT '创建人类型',
  `createTime` date NOT NULL COMMENT '创建时间',
  `valid` TINYINT(4) NOT NULL DEFAULT 1 COMMENT '删除标志（0:删除,1:未删除）',
  PRIMARY KEY (`id`),
  KEY `index_landlordId` (`landlordId`),
  KEY `index_recordDate` (`recordDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东周数据表';