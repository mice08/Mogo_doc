use mogoroomdb;

ALTER TABLE `rsci_rschartinfo_base`
	ADD COLUMN `valid` TINYINT NOT NULL DEFAULT '1' COMMENT '逻辑删除字段(1:合法 0:逻辑删除)';

ALTER TABLE `rsci_rschartinfo_sale`
	ADD COLUMN `valid` TINYINT NOT NULL DEFAULT '1' COMMENT '逻辑删除字段(1:合法 0:逻辑删除)';

ALTER TABLE `rsci_rschartinfo_stat`
	ADD COLUMN `valid` TINYINT NOT NULL DEFAULT '1' COMMENT '逻辑删除字段(1:合法 0:逻辑删除)';

ALTER TABLE `rsci_rschartinfo_base` DROP INDEX `roomId`;

ALTER TABLE `rsci_rschartinfo_base` ADD INDEX `roomId` (`roomId`);
