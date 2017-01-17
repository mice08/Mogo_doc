USE mogoroomdb;
ALTER TABLE `cntr_salecontract` MODIFY COLUMN `templetCode`  varchar(20) CHARACTER SET utf8 NULL DEFAULT '' COMMENT '模板code(绑定)'  AFTER `confirmDate`;
