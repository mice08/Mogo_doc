use mogoroomdb;

ALTER TABLE `rsci_rschartinfo_base` ADD COLUMN `communityCreateTime` DATETIME NULL COMMENT '小区创建日期';
ALTER TABLE `rsci_rschartinfo_stat` ADD COLUMN uncompleteFlag tinyint(1) NULL COMMENT '资料未完善flag';
