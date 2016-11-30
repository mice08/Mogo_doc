
/*风险记录表添加字段*/
use mogoroomdb;

ALTER TABLE `risk_landlord_level`   
  ADD COLUMN `ruleName` VARCHAR(25) NULL  COMMENT '规则名称' AFTER `phase`;