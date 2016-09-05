/*修改合同快照表的params字段长度为3072*/
use mogoroomdb;

ALTER TABLE `cntr_salecontract_snapshot` modify COLUMN `params` VARCHAR (3072) NULL COMMENT '签订合同时的合同参数json';
