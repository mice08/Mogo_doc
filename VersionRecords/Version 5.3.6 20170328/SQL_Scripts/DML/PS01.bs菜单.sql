/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* BS拓展系统管理菜单（二级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '职业房东' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '职业房东' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约信息录入', 'landlord/addLandlordInfo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* BS拓展系统管理菜单（三级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约信息录入' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '签约信息录入' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约信息录入保存', 'landlord/addLandlordInfo', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约信息录入' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '签约信息录入' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证手机号是否重复', 'landlord/validatePhoneIsExists', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;