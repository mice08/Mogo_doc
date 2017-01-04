/*新功能权限添加*/

use mogoroomdb;

/* 3级菜单  风控房东管理房东权限管理ajax */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq ) FROM perm_functioninfo WHERE fname = '房东管理' LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '风控房东管理房东权限管理', 'landlord/riskFunctionInfo',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3级菜单  风控房东管理房东权限修改记录ajax */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq ) FROM perm_functioninfo WHERE fname = '房东管理' LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '风控房东管理房东权限修改记录', 'landlord/findRiskFunctionRecord',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3级菜单  租客信用支付租客排行ajax */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq ) FROM perm_functioninfo WHERE fname = '房东管理' LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '租客信用支付租客排行', 'riskManage/creditPayTop',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3级菜单  账号信用支付租客排行ajax */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq ) FROM perm_functioninfo WHERE fname = '房东管理' LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '账号信用支付租客排行', 'riskManage/accountCreditPayTop',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
