/* 3级菜单  风控管理--》风控服务--》防套现列表  */

USE mogoroomdb;

BEGIN;
SELECT @id:=id FROM perm_functioninfo WHERE fname = '风控服务' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1 ) FROM perm_functioninfo WHERE fname = '风控服务' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '防套现列表', 'risk/cashSuspicionList', 4, '2', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');
COMMIT;