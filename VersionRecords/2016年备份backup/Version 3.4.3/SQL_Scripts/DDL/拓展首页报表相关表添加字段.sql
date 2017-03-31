/*  Database name `mogoroomdb`  拓展首页报表相关表添加字段 */
use mogoroomdb;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgr INT(11) COMMENT '服务人id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrName VARCHAR(11) COMMENT '服务人姓名' AFTER customerMgr;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgr INT(11) COMMENT '服务人id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrName VARCHAR(11) COMMENT '服务人姓名' AFTER customerMgr;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptName VARCHAR(50) COMMENT '服务人所属部门' AFTER salesmanDeptLevel;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptId INT(11) COMMENT '服务人所属部门id' AFTER customerMgrDeptName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptFullPath VARCHAR(50) COMMENT '服务人所属部门全编码' AFTER customerMgrDeptId;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptLevel INT(11) COMMENT '服务人所属部门级别' AFTER customerMgrDeptFullPath;

ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptName VARCHAR(50) COMMENT '服务人所属部门' AFTER salesmanDeptLevel;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptId INT(11) COMMENT '服务人所属部门id' AFTER customerMgrDeptName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptFullPath VARCHAR(50) COMMENT '服务人所属部门全编码' AFTER customerMgrDeptId;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptLevel INT(11) COMMENT '服务人所属部门级别' AFTER customerMgrDeptFullPath;

/* 调大repo_landlord_house_sum表roomInputRatio字段 */
ALTER TABLE `repo_landlord_house_sum` CHANGE `roomInputRatio` `roomInputRatio` DECIMAL(11,4) NULL COMMENT '房东房源录入占比'; 