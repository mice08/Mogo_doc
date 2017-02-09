/* 3级菜单  系统管理-组织架构-组织架构岗位列表  */

use mogoroomdb;

select @id:=id from perm_functioninfo where fname = '组织架构岗位列表' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '组织架构岗位列表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '岗位对应角色查询', 'orga/findPermRoleByPositionId', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '组织架构岗位列表' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),2 ) from perm_functioninfo where fname = '组织架构岗位列表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '角色智能插件', 'orga/autoCompleteQueryRole', 2, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');