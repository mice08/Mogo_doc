/*  Database name `mogoroomdb`  风控记录表 */
use mogoroomdb;


ALTER TABLE `risk_record`
DROP COLUMN `riskRuleType`,
CHANGE COLUMN `riskRuleId` `riskVerifyId`  int(11) NULL DEFAULT NULL COMMENT '审核记录表id' ;