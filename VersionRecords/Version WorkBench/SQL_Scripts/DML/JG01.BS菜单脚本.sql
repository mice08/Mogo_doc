/*添加金融工作台BS菜单*/
USE mogoroomdb;

BEGIN;

/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '蘑菇金融';
/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'金融工作台'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '金融工作台', '', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '金融工作台';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'我的工作'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '我的工作', 'loanWorkbench/myloanWorkbench', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '我的工作' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查询我负责的任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询我负责的任务', 'loanWorkbench/claimTaskList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查询我参与的任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询我参与的任务', 'loanWorkbench/joinTaskList', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查询房东信用额度'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询房东信用额度', 'loanWorkbench/getmogoBaoServiceCredit', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'蘑菇宝审核详情页面'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '蘑菇宝审核详情页面', 'mogoManage/contractVerify', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'更新任务级别及取消参与'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '更新任务级别及取消参与', 'loanWorkbench/updateEventTask', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'我完成的任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '我完成的任务', 'loanWorkbench/myFinishEventTask', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'导出我完成的任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '导出我完成的任务', 'loanWorkbench/myFinishEventTaskReport', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);



/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'蘑菇宝审核（权限）'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '蘑菇宝审核（权限）', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'房东资质一审（权限）'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东资质一审（权限）', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'房东资质二审（权限）'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东资质二审（权限）', '', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);






/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'工作池'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '工作池', 'loanWorkbench/loanWorkbench', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '工作池' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'认领任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '认领任务', 'loanWorkbench/claimTask', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'参与任务'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '参与任务', 'loanWorkbench/joinTask', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'流程状态'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '流程状态', 'loanWorkbench/getFolwDetail', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'历史池'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '历史池', 'loanWorkbench/historyWorkbench', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '历史池' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'历史池报表'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '历史池报表', 'loanWorkbench/historyWorkbenchReport', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '员工列表';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'员工休假'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '员工休假', 'loanWorkbench/employeeVacation', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 1, 0, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'查询休假详情'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询休假详情', 'loanWorkbench/getEmployeeVacationInfo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 1, 0, NULL, now(), NULL, NULL, 1, 2);
COMMIT;