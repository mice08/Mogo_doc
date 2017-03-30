use mogoroomdb;

/*bs公告管理菜单*/

/**默认不提交事务**/
BEGIN;
/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = 'CMS';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'公告管理'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '公告管理', 'announcement/announcementList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '公告管理' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'系统弹窗列表'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '系统弹窗列表', 'announcement/popAnnouncementList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'添加公告'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '添加公告', 'announcement/addAnnouncement', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'添加系统弹窗'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '添加系统弹窗', 'announcement/addPopAnnouncement', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'保存公告'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存公告', '/announcement/saveAnnouncement', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'编辑公告'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '编辑公告', '/announcement/editAnnouncement', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'公告上下线'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '公告上下线', '/announcement/onOffSysNotice', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'删除公告'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除公告', '/announcement/removeSysNotice', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'公告预览'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '公告预览', 'announcement/announcementDetails', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'保存编辑公告'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存编辑公告', 'announcement/updateAnnouncement', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);


commit;
