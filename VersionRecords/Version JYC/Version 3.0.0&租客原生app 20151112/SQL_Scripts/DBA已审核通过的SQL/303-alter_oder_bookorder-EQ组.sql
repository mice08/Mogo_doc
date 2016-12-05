/* Database name `mogoroomdb` */
use mogoroomdb;

ALTER TABLE `oder_bookorder` 
ADD COLUMN `statusUpdateTime` DATETIME NULL   COMMENT '状态更新时间' AFTER `status`,
ADD COLUMN confirmed tinyint(1) DEFAULT 0 COMMENT '房东是否确认过(默认0:未确认 1:已确认)';