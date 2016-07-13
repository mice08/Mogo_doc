use mogoroomdb;

/*拓展日报 增加菜单*/
select @id:=id from perm_functioninfo where fname = '拓展区域经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'15' ) from perm_functioninfo where fname = '拓展区域经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域经理日报', 'bd/findTodayBdDirectorTotleList', '15', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '拓展经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'20' ) from perm_functioninfo where fname = '拓展经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理日报', 'bd/findTodayBdManagerTotleList', '20', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '拓展员首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'20' ) from perm_functioninfo where fname = '拓展员首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员日报', 'bd/findTodayBdEmployeeTotleList', '20', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '城市经理首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),'20' ) from perm_functioninfo where fname = '城市经理首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '城市新增数据统计', 'bd/findTodayBdRegionalDirectorTotleList', '20', '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');
