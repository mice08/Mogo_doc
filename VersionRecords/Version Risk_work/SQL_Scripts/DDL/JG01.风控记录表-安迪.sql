/*  Database name `mogoroomdb`  风控记录表 */
use mogoroomdb;

/*
1、预估表容量:小于100（暂时30条左右）
2、每次读取量:小于20
3、主要查询
select id,`ruleType`,`ruleKey`,`ruleStatus`  from `risk_rule`

*/

CREATE TABLE `risk_rule`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '风控规则id',
  `ruleType` TINYINT(1) COMMENT '规则类型（具体见riskRuleTypemEnum）',
  `ruleKey` VARCHAR(32) COMMENT '规则key',
  `ruleStatus` TINYINT(1) DEFAULT 1 COMMENT '规则类型(1:运转 2:暂停)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='风控规则表';


/*
1、预估表容量:3个月内能达到1w条数据
2、每次读取量在1000条以内
3、主要查询
select id,`landlordId`,`riskRuleId`,`riskKeyType`,`createTime`,`verifyStatus`,`verifyTime`,`verifyUserId`,`riskRuleKey`,`riskRuleType`
from `risk_record` where landlordId = 3100406

*/
CREATE TABLE `risk_record`(  
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `landlordId` INT(11) COMMENT '房东ID',
  `riskKeyId` INT(11) COMMENT '各个风险表的主键id',
  `riskKeyType` TINYINT(1) COMMENT '风险表的类型',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `verifyStatus` TINYINT(1) COMMENT '审核状态',
  `verifyTime` DATETIME COMMENT '审核时间',
  `verifyUserId` INT(11) COMMENT '审核人id，对应员工表的id',
  `riskRuleId` INT(11) COMMENT '规则id',
  `riskRuleKey` VARCHAR(32) COMMENT '风险规则key',
  `riskRuleType` TINYINT(1) COMMENT '风险规则类型（具体见riskRuleTypemEnum）',
  PRIMARY KEY (`id`),
  INDEX `INDEX_LANDLORDID` (`landlordId`)
) ENGINE=INNODB CHARSET=utf8mb4
COMMENT='风控记录表';
