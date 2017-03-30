use mogoroomdb;

/*微信菜单导入 增加菜单*/
SELECT @id:=id FROM perm_functioninfo WHERE fname = '市场管理';
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),'15' ) FROM perm_functioninfo WHERE fname = '市场管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '微信', '', '15', '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '微信';
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),'5' ) FROM perm_functioninfo WHERE fname = '微信';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '微信菜单管理', 'weixin/initWeixinMenu', '5', '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '微信菜单管理';
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),'5' ) FROM perm_functioninfo WHERE fname = '微信菜单管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '微信菜单导入', 'weixin/importWeixinMenu', '5', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
  