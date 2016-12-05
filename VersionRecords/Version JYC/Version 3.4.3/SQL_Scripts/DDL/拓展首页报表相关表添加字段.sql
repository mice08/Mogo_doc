/*  Database name `mogoroomdb`  ��չ��ҳ������ر�����ֶ� */
use mogoroomdb;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgr INT(11) COMMENT '������id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrName VARCHAR(11) COMMENT '����������' AFTER customerMgr;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgr INT(11) COMMENT '������id' AFTER salesmanName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrName VARCHAR(11) COMMENT '����������' AFTER customerMgr;

ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptName VARCHAR(50) COMMENT '��������������' AFTER salesmanDeptLevel;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptId INT(11) COMMENT '��������������id' AFTER customerMgrDeptName;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptFullPath VARCHAR(50) COMMENT '��������������ȫ����' AFTER customerMgrDeptId;
ALTER TABLE repo_landlord_house_detail ADD COLUMN customerMgrDeptLevel INT(11) COMMENT '�������������ż���' AFTER customerMgrDeptFullPath;

ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptName VARCHAR(50) COMMENT '��������������' AFTER salesmanDeptLevel;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptId INT(11) COMMENT '��������������id' AFTER customerMgrDeptName;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptFullPath VARCHAR(50) COMMENT '��������������ȫ����' AFTER customerMgrDeptId;
ALTER TABLE repo_landlord_house_sum ADD COLUMN customerMgrDeptLevel INT(11) COMMENT '�������������ż���' AFTER customerMgrDeptFullPath;

/* ����repo_landlord_house_sum��roomInputRatio�ֶ� */
ALTER TABLE `repo_landlord_house_sum` CHANGE `roomInputRatio` `roomInputRatio` DECIMAL(11,4) NULL COMMENT '������Դ¼��ռ��'; 