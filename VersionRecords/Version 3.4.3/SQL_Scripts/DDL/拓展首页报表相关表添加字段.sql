/*  Database name `mogoroomdb`  拓展首页报表相关表添加字段 */
use mogoroomdb;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgr INT(11) COMMENT '服务人id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrName VARCHAR(11) COMMENT '服务人姓名' AFTER customerMgr;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgr INT(11) COMMENT '服务人id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrName VARCHAR(11) COMMENT '服务人姓名' AFTER customerMgr;