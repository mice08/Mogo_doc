use mogoroomdb;

ALTER TABLE `risk_qh_credit_user`
	ADD COLUMN `needSyncItems` VARCHAR(64) NULL DEFAULT NULL COMMENT '需要同步的征信项目编号列表。以逗号(,)隔开' AFTER `isUpdate`;
--	DROP COLUMN `isOverallScoreUpdate`,
--	DROP COLUMN `overallScorePromptTime`;
