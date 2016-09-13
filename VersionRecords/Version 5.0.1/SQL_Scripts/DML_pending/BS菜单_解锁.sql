use mogoroomdb;

/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '职业房东列表';
/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);
/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'解锁'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '解锁', 'landlord/clearForbidden', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);