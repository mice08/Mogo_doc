/**权限数据初始化**/
use mogoroomdb;

/**默认不自动提交事务**/
set autocommit = 0;
/*查询房东管理的id，level*/
select @id:=id,@functionLevel:=functionLevel  from perm_functioninfo where fname = '房东管理';
/*查询房东管理的seq加1,null默认是1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @seq:=(case when @seq is null then 1 else @seq end);
/*计算房东管理的fcode*/
select @fcode:= CONCAT(@functionLevel+1,lpad(@id,4,0),@seq ) from perm_functioninfo where id=@id;
/*插入新节点*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东权限管理', '', @seq, @functionLevel+1, @id, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 2);

-- 房东权限

/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '房东权限管理';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'PC菜单管理'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, 'PC菜单管理', 'landlordmenu/pc/menuTree', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = 'PC菜单管理' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'获取菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '获取菜单', 'landlordmenu/getMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'更新菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '更新菜单', 'landlordmenu/updateMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'创建菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '创建菜单', 'landlordmenu/creatMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'删除菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除菜单', 'landlordmenu/deleteMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'APP菜单管理'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, 'APP菜单管理', 'landlordmenu/app/menuTree', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = 'APP菜单管理' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'获取菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '获取菜单', 'landlordmenu/getMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'更新菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '更新菜单', 'landlordmenu/updateMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'创建菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '创建菜单', 'landlordmenu/creatMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'删除菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除菜单', 'landlordmenu/deleteMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'功能权限管理'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '功能权限管理', 'landlordfunctree/getTree', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '功能权限管理' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'获取菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '获取菜单', 'landlordfunctree/getMenu', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'更新菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '更新菜单', 'landlordfunctree/updateMenu', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'创建菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '创建菜单', 'landlordfunctree/creatMenu', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'删除菜单'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除菜单', 'landlordfunctree/deleteMenu', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'功能互斥设置'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '功能互斥设置', 'landlordfunctree/landlordfuncMutex', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '功能互斥设置' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'保存互斥关系'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存互斥关系', 'landlordfunctree/updateMutexMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'互斥详情'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '互斥详情', 'landlordfunctree/getMutexMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'角色列表'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '角色列表', 'landlordpermission/landlordRoleList', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '角色列表' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'添加角色'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '添加角色', 'landlordpermission/addRole', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'角色详情'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '角色详情', 'landlordpermission/findRole', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'禁用启用角色'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '禁用启用角色', 'landlordpermission/enabledRole', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'删除角色'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除角色', 'landlordpermission/deleteRole', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'房东列表'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东列表', 'landlordpermission/querylandlordList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'编辑角色页'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '编辑角色页', 'landlordpermission/landlordRoleDetail', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'修改日志'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '修改日志', 'businessRecord/queryLogList', @seq, @level2+1, @parentid2, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'置顶角色'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '置顶角色', 'landlordpermission/editRoleIsTop', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'编辑角色提交'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '编辑角色提交', 'landlordpermission/editRole', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);
	
/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'查看功能互斥'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查看功能互斥', 'landlordfunctree/landlordfuncMutexShow', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);


-- 日志管理

/*获取系统管理id,level*/
select @id:=id,@functionLevel:=functionLevel  from perm_functioninfo where fname = '系统管理';
/*获取系统管理最大顺序加1*/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
/*如果null，默认1*/
select @seq:=(case when @seq is null then 1 else @seq end);
/*计算fcode*/
select @fcode:= CONCAT(@functionLevel+1,lpad(@id,4,0),@seq ) from perm_functioninfo where id=@id;
/*插入新记录*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '日志管理', '', @seq, @functionLevel+1, @id, 1, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, 1, 2);


/**获取开始时间**/
select @begindate:=NOW();
/**根据节点名称读取父节点id和level**/
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '日志管理';

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/**插入新节点记录-'角色日志'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '角色日志', 'businessRecord/queryLogList', @seq, @rootLevel+1, @rootId, 0, NULL, NULL, NULL, 0, 1, NULL, now(), NULL, NULL, 1, 2);

/**读取父节点id和level，防止重名，根据时间查**/
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '角色日志' and createdTime>=@begindate;

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查看消息类型'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查看消息类型', 'businessRecord/queryMesgCategory', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查看房东列表'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查看房东列表', 'businessRecord/queryLandlord', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查看数据元素'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查看数据元素', 'businessRecord/queryFunctionInfo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/**生成新的顺序号,null默认是1**/
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/**生成新的fcode**/
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/**插入新节点记录-'查看功能权限'**/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查看功能权限', 'businessRecord/queryMenugroup', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 提交事务*/
commit;