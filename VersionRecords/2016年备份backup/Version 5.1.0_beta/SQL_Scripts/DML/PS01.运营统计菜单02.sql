/*  Database name `mogoroomdb`  关键数据统计报表菜单 */
use mogoroomdb;

BEGIN;
/* 2级菜单 */
select @id:=id from perm_functioninfo where fname = '用户首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '用户首页';


INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '关键数据展示首页', 'keyDataShow/keyDataShowList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单 首页面历史统计*/
select @id:=id from perm_functioninfo where fname = '关键数据展示首页';
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '关键数据展示首页';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '首页面历史统计', 'keyDataShow/getHistoryCountData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');




/* 3级菜单 首页部门查找拓展员*/
select @id:=id from perm_functioninfo where fname = '关键数据展示首页';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id; 
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '关键数据展示首页';


INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '首页部门查找拓展员', 'keyDataShow/findExpanderByDepartId', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;