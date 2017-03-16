/*蘑菇分版本兼容表

1. 上线之后会有5000+条数据，日后看拓展录入
2. 主要查询sql: select * from repo_mogoScore_vice where landlordId = {0} and recordDate={0}
3. 索引: 目前landlordId、recordDate

*/
use mogoroomdb;

 CREATE TABLE `repo_mogoScore_vice` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `landlordId` INT(11) NOT NULL COMMENT '房东ID',
  `recordDate` DATE NOT NULL COMMENT '记录时间',
  `mogoScore` INT(4) NOT NULL COMMENT '蘑菇分',
  `version` VARCHAR(128) NOT NULL COMMENT '版本',
  `createBy` INT(11) NOT NULL COMMENT '创建人',
  `createByType` INT(2) NOT NULL COMMENT '创建人类型',
  `createTime` DATE NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_landlordId` (`landlordId`),
  KEY `index_recordDate` (`recordDate`)
) ENGINE=INNODB CHARSET=utf8mb4 COMMENT='蘑菇分版本兼容表'