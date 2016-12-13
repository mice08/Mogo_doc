/* Database name `mogoroomdb`, 400新系统相关表修改-上线前预处理 */

use mogoroomdb;

ALTER TABLE `flat_room_user_relation` ADD COLUMN `extNumId` INT(11) NOT NULL DEFAULT '-1' COMMENT '分机号Id' AFTER `roomId`;
ALTER TABLE `comm_business_record` ADD COLUMN `orderType` TINYINT(3) NOT NULL DEFAULT '0' COMMENT '订单类型(0:签约单, 1:400分机号)' AFTER `orderId`;
ALTER TABLE `comm_business_record` DROP INDEX `orderId`;
ALTER TABLE `comm_business_record` ADD  INDEX  `orderIdAndType` (`orderId`, `orderType`);
