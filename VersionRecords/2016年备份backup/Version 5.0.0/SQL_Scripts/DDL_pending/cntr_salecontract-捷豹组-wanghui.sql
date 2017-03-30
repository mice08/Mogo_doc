/*  Database name `mogoroomdb` ，billconfig add no null约束，已检查生产数据库，目前并未产生null数据*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract`
MODIFY COLUMN `billConfig`  varchar(4096) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '合同账单配置，json字符串' AFTER `residentId`;

 