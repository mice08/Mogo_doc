use mogoroomdb;

ALTER TABLE orga_org_position ADD COLUMN `thirdId` int(20) DEFAULT NULL COMMENT '第三方系统的关联组织id';
ALTER TABLE orga_org_position ADD COLUMN `synchType` char(1) DEFAULT null COMMENT '是否同步到钉钉(Y:是 N:否)';