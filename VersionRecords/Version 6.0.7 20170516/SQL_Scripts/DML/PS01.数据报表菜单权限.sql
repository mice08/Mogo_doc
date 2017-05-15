
/*添加数据报表查询权限*/
use mogoroomdb;
BEGIN;

/*获取开始时间*/
select @begindate:=NOW();
/*根据节点名称读取父节点id和level*/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '用户首页' and channel = 2;
/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'关键数据报表'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '关键数据报表', 'dcrpt/index', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);


/*根据节点名称读取父节点id和level*/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '关键数据报表' and channel = 2;

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'在线支付趋势'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '在线支付趋势', 'dcrpt/onlinePayChart', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'在线支付趋势查询'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '在线支付趋势查询', 'dcrpt/onlinePayChartData', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'租约确认趋势'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '租约确认趋势', 'dcrpt/leaseAffirm', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'租约确认趋势查询'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '租约确认趋势查询', 'dcrpt/leaseAffirmData', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'签约数据报表'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '签约数据报表', 'dcrpt/signData', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'签约数据报表查询'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '签约数据报表查询', 'dcrpt/signDataData', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'关键数据报表查询'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '关键数据报表查询', 'dcrpt/indexData', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

COMMIT;