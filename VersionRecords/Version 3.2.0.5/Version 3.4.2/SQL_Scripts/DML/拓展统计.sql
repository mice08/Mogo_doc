/*  Database name `mogoroomdb`  BS拓展修改菜单名称及增加菜单 */
use mogoroomdb;
	  
/*修改菜单名称 */	  
UPDATE perm_functioninfo SET fname='城市首页' WHERE fname = '城市经理首页';
UPDATE perm_functioninfo SET fname='区域首页' WHERE fname = '拓展区域经理首页';
UPDATE perm_functioninfo SET fname='服务组首页' WHERE fname = '拓展经理首页';
UPDATE perm_functioninfo SET fname='服务人首页' WHERE fname = '拓展员首页';


/*新增菜单 */
/*签约人首页 菜单 */
select @id:=id from perm_functioninfo where fname = '用户首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '用户首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约人首页', 'bd/findbdContractTotleList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '签约人首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '签约人首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约人日报', 'bd/findTodayBdContractEmployeeTotleList', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/*签约组首页 菜单 */
select @id:=id from perm_functioninfo where fname = '用户首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '用户首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约组首页', 'bd/findbdContractManagerTotleList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '签约组首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '签约组首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约组日报', 'bd/findTodayBdContractManagerTotleList', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '签约组首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '签约组首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约组下签约人首页', 'bd/findbdContractTotleList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '签约组首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '签约组首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约组下签约人日报', 'bd/findTodayBdContractEmployeeTotleList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');