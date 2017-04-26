/*  Database name `mogoroomdb`  风控记录表 */
use mogoroomdb;

ALTER TABLE `risk_record`   
  ADD COLUMN `hitSubject` VARCHAR(32) NULL COMMENT '命中主体',
  ADD COLUMN `renterId` INT(11) NULL COMMENT '租客id' AFTER ,
  ADD COLUMN `remark` VARCHAR(256) NULL COMMENT '风险描述备注';
