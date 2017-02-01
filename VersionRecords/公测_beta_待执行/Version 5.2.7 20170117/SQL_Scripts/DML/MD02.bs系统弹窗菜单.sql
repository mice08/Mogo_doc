use mogoroomdb;

/*bs系统弹窗菜单*/

/**默认不提交事务**/
BEGIN;
/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '公告管理';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'保存系统弹窗'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存系统弹窗', '/announcement/savePopAnnouncement', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'编辑系统弹窗'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '编辑系统弹窗', '/announcement/editPopAnnouncement', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'保存编辑系统弹窗'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存编辑系统弹窗', '/announcement/updatePopAnnouncement', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'系统弹窗上下线'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '系统弹窗上下线', '/announcement/onOffMesgPopNotice', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'删除系统弹窗'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除系统弹窗', '/announcement/removeMesgPopNotice', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);


commit;

