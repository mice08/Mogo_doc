use mogoroomdb;

ALTER TABLE `bill_salebill`   
  ADD COLUMN `statusUpdateTime` DATETIME NULL   COMMENT '状态更新时间' AFTER `payStatus`;
