use mogoroomdb;

ALTER TABLE `rsci_rschartinfo_base`
	CHANGE COLUMN `unit` `unit` VARCHAR(32) NULL DEFAULT NULL COMMENT '����Ԫ' ;

ALTER TABLE `rsci_rschartinfo_stat`
	CHANGE COLUMN `owedCustomBillIds` `owedCustomBillIds` VARCHAR(2048) NULL DEFAULT NULL COMMENT '����Ƿ���˵�:������Ѻ���������Ƿ���˵�id.Ϊ�б�json' ;