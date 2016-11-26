/* Database name `mogoroomdb`, 400新系统相关表修改 */

use mogoroomdb;

ALTER TABLE `comm_business_record` ADD COLUMN `orderType` TINYINT(3) NOT NULL DEFAULT '0' COMMENT '订单类型(0:签约单, 1:400分机号)' AFTER `orderId`;
ALTER TABLE `comm_business_record` DROP INDEX `orderId`;
ALTER TABLE `comm_business_record` ADD  INDEX  `orderIdAndType` (`orderId`, `orderType`);
