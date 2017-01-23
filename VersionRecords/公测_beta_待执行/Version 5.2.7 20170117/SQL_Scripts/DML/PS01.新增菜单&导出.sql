/*  Database name `mogoroomdb`  增加菜单&导出 */
USE mogoroomdb;

BEGIN;

/* 3级菜单  报表管理-统计-房东入驻申请统计 (房东入驻申请统计导出) */
select @id:=id from perm_functioninfo where fname = '房东入驻申请统计' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房东入驻申请统计';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东入驻申请统计导出', 'report/findLeaguerExcelReport', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  报表管理-统计-租金宝统计 (租金宝统计报表导出) */
select @id:=id from perm_functioninfo where fname = '租金宝统计' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '租金宝统计';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '租金宝统计报表导出', 'report/rentBaoCountExcelReport', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  报表管理-统计-蘑菇宝还款 (蘑菇宝还款报表导出) */
select @id:=id from perm_functioninfo where fname = '蘑菇宝还款' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '蘑菇宝还款';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '蘑菇宝还款报表导出', 'report/mogoBaoPaybackExcelReport', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  运营管理-运营报表-在线支付统计 (在线支付统计导出) */
select @id:=id from perm_functioninfo where fname = '在线支付统计' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '在线支付统计';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '在线支付统计导出', 'landlordBillRepo/landlordOnlineBillExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  运营管理-运营报表-房东账号活跃 (房东账号活跃导出) */
select @id:=id from perm_functioninfo where fname = '房东账号活跃' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '房东账号活跃';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东账号活跃导出', 'marketReport/activityInfoExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  销售管理-订单管理-预约单列表 (预约单列表导出) */
select @id:=id from perm_functioninfo where fname = '预约单列表' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '预约单列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '预约单列表导出', 'reservationOrder/reservationOrderExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  销售管理-订单管理-预定单列表 (预定单列表导出) */
select @id:=id from perm_functioninfo where fname = '预定单列表' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '预定单列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '预定单列表导出', 'advanceOrder/showAdvanceOrderExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  销售管理-订单管理-400电话列表 (400电话列表导出) */
select @id:=id from perm_functioninfo where fname = '400电话列表' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '400电话列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400电话列表导出', 'report/findBehaviorRecordExcelExport', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


