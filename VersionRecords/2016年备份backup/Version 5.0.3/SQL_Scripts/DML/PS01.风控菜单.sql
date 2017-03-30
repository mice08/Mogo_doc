/*  Database name `mogoroomdb`  风控菜单 */
use mogoroomdb;

BEGIN;

select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=0;
select @fcode:= CONCAT('0',lpad(0,4,0),@seq ) ;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '风控管理', '', @seq, '0', 0, '1', NULL, NULL, "fa fa-shield", '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '风控管理';
select @fcode:= CONCAT('1',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '风控管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房源管理', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '房源管理' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房源管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '工作池列表', 'risk/findWorkingPoolList', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '工作池列表';
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '工作池列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '审核', 'risk/updateRiskRoom', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '房源管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '房源管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '历史池列表', 'risk/findHistoryPoolList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


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