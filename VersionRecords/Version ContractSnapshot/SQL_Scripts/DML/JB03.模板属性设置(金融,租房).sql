use mogoroomdb;

/* 金融模板 */
update cntr_contract_templet set belongContractType = 2 where id in (16,17,60);
/* 租房模板 */
update cntr_contract_templet set belongContractType = 1 where id not in (16,17,60);