use mogoroomdb;

ALTER TABLE user_employee_info ADD COLUMN `thirdId` varchar(50) DEFAULT NULL COMMENT '第三方系统的用户ID';
ALTER TABLE user_employee_info ADD COLUMN `isSynch` tinyint(1) DEFAULT null COMMENT '是否同步到钉钉(1:是 0:否)';
ALTER TABLE orga_org ADD COLUMN `isSynch` tinyint(1) DEFAULT null COMMENT '是否同步到钉钉(1:是 0:否)';