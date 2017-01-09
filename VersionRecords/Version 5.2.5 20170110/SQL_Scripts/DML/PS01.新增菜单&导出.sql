/*  Database name `mogoroomdb`  增加菜单&导出 */
use mogoroomdb;

BEGIN;

/* 增加菜单-房间列表导出 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房间列表' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房间列表' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房间列表导出', 'room/findRoomsByFeatureReport', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 增加菜单-房东贷款买回导出 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东贷款买回' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东贷款买回' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东贷款买回导出', 'landlordCredit/listLoanLandlordBuyBackExport', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 增加菜单-房东贷款还款导出 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东贷款还款' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东贷款还款' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东贷款还款导出', 'landlordCredit/listLandlordRepayPlanExport', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


/* 3级菜单  运营管理-400号码管理-400数据报表管理 (400数据报表导出) */
select @id:=id from perm_functioninfo where fname = '400数据报表管理' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '400数据报表管理' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400数据报表导出', 'tele/exportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-房源推广-空置房间列表 (空置房间报表导出) */
select @id:=id from perm_functioninfo where fname = '空置房间列表' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '空置房间列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '空置房间报表导出', 'room/exportExcel', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-房源运营情况 (房源运营情况报表导出) */
select @id:=id from perm_functioninfo where fname = '房源运营情况' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房源运营情况' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房源运营情况报表导出', 'operRept/exportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-虚假房源统计 (虚假房源报表导出) */
select @id:=id from perm_functioninfo where fname = '虚假房源统计' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '虚假房源统计' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '虚假房源报表导出', 'operRept/falseFlatsExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-租客评分明细 (租客评分报表导出) */
select @id:=id from perm_functioninfo where fname = '租客评分明细' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '租客评分明细';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '租客评分报表导出', 'marketReport/exportExcel', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-销售支付渠道 (销售支付渠道报表导出) */
select @id:=id from perm_functioninfo where fname = '销售支付渠道' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '销售支付渠道' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '销售支付渠道报表导出', 'landlordBillRepo/salePayExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-房东蘑菇分 (房东蘑菇分报表导出) */
select @id:=id from perm_functioninfo where fname = '房东蘑菇分' ORDER BY id DESC LIMIT 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房东蘑菇分';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东蘑菇分报表导出', 'landlordBillRepo/landlordMogoScoreList', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-房源体验统计 (房源体验统计报表导出) */
select @id:=id from perm_functioninfo where fname = '房源体验统计' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房源体验统计' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房源体验统计报表导出', 'landlordBillRepo/landlordRoomExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-账单类型统计 (账单类型统计报表导出) */
select @id:=id from perm_functioninfo where fname = '账单类型统计' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '账单类型统计' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '账单类型统计报表导出', 'landlordBillRepo/billTypeDailyExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-扫码注册绑定 (扫码注册绑定报表导出) */
select @id:=id from perm_functioninfo where fname = '扫码注册绑定' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '扫码注册绑定' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '扫码注册绑定报表导出', 'scanRegisterBind/exportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  运营管理-运营报表-分店和子账号 (分店和子账号报表导出) */
select @id:=id from perm_functioninfo where fname = '分店和子账号' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '分店和子账号' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '分店和子账号报表导出', 'branchAndSubAccount/branchAndSubAccountList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;

/* 3级菜单  聚有财-蘑菇月付-蘑菇月付还款列表 (蘑菇月付还款报表导出) */
select @id:=id from perm_functioninfo where fname = '蘑菇月付还款列表' ORDER BY id DESC LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '蘑菇月付还款列表' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '蘑菇月付还款报表导出', 'monthPay/renterReapyExportExcel', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;


