USE mogoroomdb;
ALTER TABLE `cntr_salecontract` MODIFY COLUMN `templetCode`  varchar(20) NULL COMMENT 'ģ��code(��)' AFTER `confirmDate`;
