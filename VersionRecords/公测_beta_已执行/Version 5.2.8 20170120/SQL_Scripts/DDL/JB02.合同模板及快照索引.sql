use mogoroomdb;

/* 合同模板表添加索引 ==  */
ALTER TABLE `cntr_contract_templet` ADD INDEX IDX_TEMPLETCODE(`templetCode`) USING HASH;

/* 合同快照表添加索引 ==  */
ALTER TABLE `cntr_salecontract_snapshot` ADD INDEX IDX_CONTRACTID(`contractId`) USING HASH;

/*快照长度 扩充8192 之前遗漏了一个租约下(金融合同+租房合同) */
ALTER TABLE `cntr_salecontract_snapshot` ADD COLUMN `contractType`  int(1) NOT NULL DEFAULT 1 COMMENT '合同类型(1:金融 2:租房)' AFTER `contractId`;

ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(8192) COMMENT '签订合同时的合同参数json' AFTER `templetId`;

