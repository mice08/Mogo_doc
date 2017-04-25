/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* 帕拉斯系统管理（二级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '系统管理' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '系统管理' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '帕拉斯系统管理', '', 30, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* BS拓展系统管理菜单（三级） */
-- ------------------------ 区域列表
SELECT @id:=id FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '角色列表', 'permission/roleInfoPageForPls', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 添加角色
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '添加角色', 'permission/addRole', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 查看角色
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看角色', 'permission/functionInfoPageForPls', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 刷新权限
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '刷新权限', 'permission/refashFunction', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 删除角色
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '删除角色', 'permission/removeRolePls', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 删除key
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '删除key', 'permission/refashMemcache', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

  -- 修改权限
SELECT @id:=id FROM perm_functioninfo WHERE fname = '角色列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '角色列表' AND (furl IS NULL OR furl = 'permission/roleInfoPageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '修改权限', 'permission/addRolePermissionPls', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- -------------- 员工角色
SELECT @id:=id FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '员工角色', 'permission/employeeRolePageForPls', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 提交
SELECT @id:=id FROM perm_functioninfo WHERE fname = '员工角色' AND functionLevel = 2 AND (furl IS NULL OR furl = 'permission/employeeRolePageForPls') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '员工角色' AND (furl IS NULL OR furl = 'permission/employeeRolePageForPls') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '提交', 'permission/addEmployeeRoleForPls', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- -------------- 菜单管理
SELECT @id:=id FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '帕拉斯系统管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '菜单管理', 'menu/plsMenuTree', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 获取菜单
SELECT @id:=id FROM perm_functioninfo WHERE fname = '菜单管理' AND functionLevel = 2 AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '菜单管理' AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取菜单', 'menu/getMenu', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 更新菜单
SELECT @id:=id FROM perm_functioninfo WHERE fname = '菜单管理' AND functionLevel = 2 AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '菜单管理' AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '更新菜单', 'menu/updateMenu', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 删除菜单
SELECT @id:=id FROM perm_functioninfo WHERE fname = '菜单管理' AND functionLevel = 2 AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '菜单管理' AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '删除菜单', 'menu/deleteMenu', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 创建菜单
SELECT @id:=id FROM perm_functioninfo WHERE fname = '菜单管理' AND functionLevel = 2 AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '菜单管理' AND (furl IS NULL OR furl = 'menu/plsMenuTree') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '创建菜单', 'menu/creatMenu', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


-- 新增字典值 帕拉斯渠道
INSERT INTO comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,enValue)
VALUES ('channel-21','channel',21,21,'帕拉斯',1,null,'channel-21');
COMMIT;