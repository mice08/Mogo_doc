use mogoroomdb;

/* ��ͬģ���������� ==  */
ALTER TABLE `cntr_contract_templet` ADD INDEX IDX_TEMPLETCODE(`templetCode`) USING HASH;

/* ��ͬ���ձ�������� ==  */
ALTER TABLE `cntr_salecontract_snapshot` ADD INDEX IDX_CONTRACTID(`contractId`) USING HASH;

/*���ճ��� ����8192 */
ALTER TABLE `cntr_salecontract_snapshot` MODIFY COLUMN `params`  varchar(8192) COMMENT 'ǩ����ͬʱ�ĺ�ͬ����json' AFTER `templetId`;