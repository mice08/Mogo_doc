use mogoroomdb;

ALTER TABLE `oder_bookorder`   
  ADD COLUMN `statusUpdateTime` DATETIME NULL   COMMENT '状态更新时间' AFTER `status`;

