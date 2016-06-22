/* Database name `mogoroomdb`， 房间表及房间历史表添加别名字段 */

use mogoroomdb;

ALTER TABLE `cntr_salecontract` ADD COLUMN `confirmDate` DATETIME NULL  COMMENT '双方在线确认时间';