/*新增房东获客汇总表菜单*/
USE mogoroomdb;
/*获取开始时间*/
select @begindate:=NOW();
/*根据节点名称读取父节点id和level*/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '统计';
/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'房东获客汇总表'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东获客汇总表', 'landlordBillRepo/selectCustomGetTotal', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/*获取开始时间*/
select @begindate:=NOW();
/*根据节点名称读取父节点id和level*/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '房东获客汇总表';

/*生成新的顺序号,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/*生成新的fcode*/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/*插入新节点记录-'房东获客导出'*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东获客导出', 'landlordBillRepo/selectCustomGetTotalExportExcel', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);
COMMIT;