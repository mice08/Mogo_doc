/* 风控模块的菜单,有执行顺序要求，必须先有 SELECT * FROM perm_functioninfo e WHERE e.fname = '风控管理' 这条记录 */
USE mogoroomdb;

BEGIN;

/*风控服务*/
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(1,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '风控管理'),4,0)),'02')),'风控服务','','2','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '风控管理'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


/*房东管理*/
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '风控服务'),4,0)),'01')),'房东管理','riskManage/searchLandlordInfoAndLevelRecord','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '风控服务'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '房东管理' AND e.functionLevel=2),4,0)),'01')),'查询房东风险等级','riskManage/searchLandlordInfoAndLevelRecord','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '房东管理' AND e.functionLevel=2),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '房东管理' AND e.functionLevel=2),4,0)),'02')),'新增风控审核记录','riskManage/addLandlordRiskLevelRecord','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '房东管理' AND e.functionLevel=2),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');





/*名单管理*/
INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '风控服务'),4,0)),'02')),'名单管理','riskManage/riskSpecialList','2','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '风控服务'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),4,0)),'01')),'自动查询数据值','riskManage/autoCompleteRiskSpecialList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),4,0)),'02')),'查询名单列表','riskManage/riskSpecialList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),4,0)),'03')),'新增名单','riskManage/addRiskSpecialListRecord','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),4,0)),'04')),'点击编辑名单','riskManage/trunToEditRiskSpecialList','4','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO perm_functioninfo (fcode, fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),4,0)),'05')),'编辑名单','riskManage/editRiskSpecialListRecord','5','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '名单管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');


COMMIT;

