/*  Database name `mogoroomdb`  运营统计菜单 */
use mogoroomdb;

BEGIN;

select @id:=id from perm_functioninfo where fname = '运营管理';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '运营报表', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '运营报表' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '运营报表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东房源统计', 'operRept/findLandlordCount', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '房东房源统计' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房东房源统计' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东房源查询头部统计信息', 'operRept/getAllFlatSourceOperData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '运营报表';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营报表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '虚假房源统计', 'operRept/findFalseFlatsSource', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '虚假房源统计' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '虚假房源统计' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东房源查询头部统计信息', 'operRept/getAllFalseFlatsSourceData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '运营报表' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营报表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东账号活跃', 'marketReport/activityInfo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '房东账号活跃' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房东账号活跃' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东账号活跃查询头部统计信息', 'marketReport/getAllAcctActivityData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '运营报表' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营报表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '租客评分明细', 'marketReport/markInfo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '运营报表' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营报表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '在线支付统计', 'landlordBillRepo/findLandlordOnlineBillRepo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '在线支付统计' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '在线支付统计' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询头部合计统计', 'landlordBillRepo/getAllLandlordOnlineBillData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '运营报表' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '运营报表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '销售支付渠道', 'landlordBillRepo/findLandlordSalePayChannelRepo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '销售支付渠道' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '销售支付渠道' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '销售支付渠道合计', 'landlordBillRepo/getAllLandlordSalePayData', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '其他权限' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '其他权限' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '通过城市查询拓展中心下区域机构', 'marketReport/findDistrictByCityId', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '其他权限' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '其他权限' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '通过区域查询部门', 'marketReport/findDepartByDistrictId', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '风控管理';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '风控管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '数据统计', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '数据统计' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '数据统计' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '蘑菇宝', 'riskManage/dataStatisticsMgb', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '数据统计' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),2 ) from perm_functioninfo where fname = '数据统计' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '租金宝', 'riskManage/dataStatisticsZjb', 2, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '房东管理'  order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '房东管理' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房源信息', 'riskManage/findFlatsSourceInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
COMMIT;