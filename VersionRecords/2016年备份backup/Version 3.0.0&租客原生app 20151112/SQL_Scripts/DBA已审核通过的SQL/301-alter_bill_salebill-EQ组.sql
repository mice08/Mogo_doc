/* Database name `mogoroomdb` */
use mogoroomdb;

ALTER TABLE `bill_salebill` 
ADD COLUMN `statusUpdateTime` DATETIME NULL   COMMENT '状态更新时间' AFTER `payStatus`,
ADD COLUMN `sendFlag` INT(2) DEFAULT 2  NOT NULL  COMMENT '是否发送 1:未发送 2:已发送',
ADD COLUMN `title` VARCHAR(100) NULL COMMENT '账单显示名称',
ADD COLUMN `bill_type` INT(11) DEFAULT 0  NOT NULL  COMMENT '账单类型，参考账单类型表的billType';