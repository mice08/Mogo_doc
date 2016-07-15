use mogoroomdb;

/*拓展日报 增加菜单*/
/*拓展员首页 菜单 */

/*拓展经理 菜单 */

select @id:=id from perm_functioninfo where fname = '拓展经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'25' ) from perm_functioninfo where fname = '拓展经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理下拓展员日报', 'bd/findTodayBdEmployeeTotleList', '25', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/*区域经理 菜单 */

select @id:=id from perm_functioninfo where fname = '拓展区域经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'20' ) from perm_functioninfo where fname = '拓展区域经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域经理下拓展经理日报', 'bd/findTodayBdManagerTotleList', '20', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '拓展区域经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'25' ) from perm_functioninfo where fname = '拓展区域经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理下拓展员日报', 'bd/findTodayBdEmployeeTotleList', '25', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/*城市经理 菜单 */

select @id:=id from perm_functioninfo where fname = '城市经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'25' ) from perm_functioninfo where fname = '城市经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '城市经理下区域经理日报', 'bd/findTodayBdDirectorTotleList', '25', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '城市经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'30' ) from perm_functioninfo where fname = '城市经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域经理下拓展经理日报', 'bd/findTodayBdManagerTotleList', '30', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '城市经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'35' ) from perm_functioninfo where fname = '城市经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理下拓展员日报', 'bd/findTodayBdEmployeeTotleList', '35', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
