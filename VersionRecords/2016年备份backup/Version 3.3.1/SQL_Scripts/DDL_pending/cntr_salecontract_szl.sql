/* Database name `mogoroomdb`， 合同表添加双方在线确认时间字段 */

use mogoroomdb;

ALTER TABLE `cntr_salecontract` ADD COLUMN `confirmDate` DATETIME NULL  COMMENT '双方在线确认时间';