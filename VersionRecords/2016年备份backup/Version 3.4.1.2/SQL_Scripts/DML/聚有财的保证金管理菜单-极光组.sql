/* 聚有财的保证金管理菜单 */
USE mogoroomdb;

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款管理'),4,0)),'02')),'保证金管理','loanManage/depositManageList','4','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '贷款管理'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '保证金管理'),4,0)),'01')),'查询保证金列表','loanManage/depositManageList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '保证金管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '保证金管理'),4,0)),'02')),'导出保证金列表','loanManageExport/depositManageListExport','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '保证金管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');