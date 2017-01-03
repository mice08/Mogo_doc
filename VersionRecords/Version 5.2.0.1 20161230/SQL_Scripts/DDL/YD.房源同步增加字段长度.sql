use mogoroomdb;

ALTER TABLE `rsci_rschartinfo_base`
	CHANGE COLUMN `unit` `unit` VARCHAR(32) NULL DEFAULT NULL COMMENT '几单元' ;

ALTER TABLE `rsci_rschartinfo_stat`
	CHANGE COLUMN `owedCustomBillIds` `owedCustomBillIds` VARCHAR(2048) NULL DEFAULT NULL COMMENT '其他欠费账单:除租金和押金外的所有欠费账单id.为列表json' ;