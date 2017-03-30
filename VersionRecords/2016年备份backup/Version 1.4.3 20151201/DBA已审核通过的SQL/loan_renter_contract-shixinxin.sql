/* Database name `mogoroomdb`) ，合同表添加管家字段 */
use mogoroomdb;
ALTER TABLE `cntr_salecontract` 
ADD COLUMN `butlerName` varchar(20) NULL COMMENT '管家姓名';
