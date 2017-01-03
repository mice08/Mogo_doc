use mogoroomdb;

/* 合同模板表添加索引 ==  */
ALTER TABLE `cntr_contract_templet` ADD INDEX IDX_TEMPLETCODE(`templetCode`) USING HASH;

/* 合同快照表添加索引 ==  */
ALTER TABLE `cntr_salecontract_snapshot` ADD INDEX IDX_CONTRACTID(`contractId`) USING HASH;