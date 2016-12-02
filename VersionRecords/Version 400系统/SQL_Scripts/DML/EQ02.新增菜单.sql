/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* 1级菜单 运营管理-400号码管理 */
select @id:=id from perm_functioninfo where fname = '运营管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '运营管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400号码管理', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400保护号码管理 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),1) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400保护号码管理', 'tele/findProtectNumList', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400房东概览管理 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400房东概览管理', 'tele/overview/findDataOverviewRecords', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400房东号码管理 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400房东号码管理', 'tele/landlord/queryExtNumList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400推广号码管理 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400推广号码管理', 'telePromotion/promotionListInit', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400数据报表管理 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400数据报表管理', 'tele/findCallLog', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');



/* 2级菜单  运营管理-400号码管理-查询联系人 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询联系人', 'tele/overview/loadContactMan', @seq, '2', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-收回分机号 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '收回分机号', 'tele/recoveryProtectExtNum', @seq, '2', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-新增400坐席 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '新增400坐席', 'tele/overview/createNewExtNum', @seq, '2', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-400号码详情页面 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400号码详情页面', 'tele/findRoomListByExtNum', @seq, '2', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  运营管理-400号码管理-房源绑定联系人 */
select @id:=id from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房源绑定联系人', 'tele/findRoomDetailList', @seq, '2', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');



/* 3级菜单  运营管理-400号码管理-400保护号码管理 (添加保护号码) */
select @id:=id from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1) from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '添加保护号码', 'tele/addProtectExtNum', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-400保护号码管理 (费用编辑) */
select @id:=id from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '费用编辑', 'tele/updateProtectExtNum', @seq, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-400保护号码管理 (分配号码) */
select @id:=id from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400保护号码管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '分配号码', 'tele/allotExtNum', @seq, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-400号码详情页面 (切换联系人) */
select @id:=id from perm_functioninfo where fname = '400号码详情页面' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1) from perm_functioninfo where fname = '400号码详情页面' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '切换联系人', 'tele/batchChangeContactMan', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-400号码详情页面 (查询联系人) */
select @id:=id from perm_functioninfo where fname = '400号码详情页面' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '400号码详情页面' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询联系人', 'tele/loadContactMan', @seq, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-房源绑定联系人 (绑定房源) */
select @id:=id from perm_functioninfo where fname = '房源绑定联系人' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1) from perm_functioninfo where fname = '房源绑定联系人' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '绑定房源', 'tele/addContactMan', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  运营管理-400号码管理-400数据报表管理 (下载电话录音) */
select @id:=id from perm_functioninfo where fname = '400数据报表管理' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1) from perm_functioninfo where fname = '400数据报表管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '下载电话录音', 'tele/downCallVoice', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


COMMIT;