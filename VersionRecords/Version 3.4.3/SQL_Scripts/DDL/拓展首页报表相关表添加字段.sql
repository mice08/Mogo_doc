/*  Database name `mogoroomdb`  ��չ��ҳ������ر�����ֶ� */
use mogoroomdb;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgr INT(11) COMMENT '������id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrName VARCHAR(11) COMMENT '����������' AFTER customerMgr;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgr INT(11) COMMENT '������id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrName VARCHAR(11) COMMENT '����������' AFTER customerMgr;