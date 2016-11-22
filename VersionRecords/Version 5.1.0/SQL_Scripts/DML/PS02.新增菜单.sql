/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* 1级菜单 风控管理-交易管理 */
select @id:=id from perm_functioninfo where fname = '风控管理';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '风控管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '交易管理', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  风控管理-交易管理-在线支付记录 */
select @id:=id from perm_functioninfo where fname = '交易管理';
select @fcode:= CONCAT('2',lpad(@id,4,0),1) from perm_functioninfo where fname = '交易管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '在线支付记录', 'riskManage/onlinePayRecordList', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;