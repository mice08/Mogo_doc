use mogoroomdb;

/* 合同模板表添加索引 ==  */
ALTER TABLE `cntr_contract_templet` ADD INDEX IDX_TEMPLETCODE(`templetCode`) USING HASH;

/* 合同快照表添加索引 ==  */
ALTER TABLE `cntr_salecontract_snapshot` ADD INDEX IDX_CONTRACTID(`contractId`) USING HASH;

/*快照长度 扩充8192 */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(8192) COMMENT '签订合同时的合同参数json' AFTER `templetId`;