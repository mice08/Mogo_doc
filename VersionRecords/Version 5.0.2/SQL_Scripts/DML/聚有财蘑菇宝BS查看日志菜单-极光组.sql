USE mogoroomdb;


INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'),4,0)),'08')),'查看日志','mogoManage/viewLogs','7','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

