
/* 视频菜单管理BS权限脚本 */
use mogoroomdb;
BEGIN;
/* 获取开始时间  */
select @begindate:=NOW();
/* 根据节点名称读取父节点id和level  */
select @rootId:=id,@rootLevel:=functionLevel from perm_functioninfo where fname = '职业房东';


/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@rootId;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@rootLevel+1,lpad(@rootId,4,0),@seq ) from dual;
/* 插入新节点记录-'教学视频管理'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '教学视频管理', 'landlord/getLandlordVideo', @seq, @rootLevel+1, @rootId, 1, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 读取父节点id和level，防止重名，根据时间查  */
select @parentid2:=id,@level2:=functionLevel from perm_functioninfo where fname = '教学视频管理' and createdTime>=@begindate;

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'查询视频管理'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询视频管理', 'landlord/getLandlordVideoManage', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'查询菜单管理'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询菜单管理', 'landlord/getLandlordVideoMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'保存菜单'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '保存菜单', 'landlord/saveVideoMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'删除菜单'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除菜单', 'landlord/removeVideoMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'编辑菜单'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '编辑菜单', 'landlord/editVideoMenu', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'删除视频'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '删除视频', 'landlord/removeLandlordVideo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'上传视频'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '上传视频', 'landlord/upLoadLandlordVideo', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);

/* 生成新的顺序号,null默认是1  */
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@parentid2;
select @seq:=(case when @seq is null then 1 else @seq end);

/* 生成新的fcode  */
select @fcode:= CONCAT(@level2+1,lpad(@parentid2,4,0),@seq ) from dual;
/* 插入新节点记录-'查询视频内容'  */
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询视频内容', 'landlord/queryVideoContentById', @seq, @level2+1, @parentid2, 0, NULL, NULL, NULL, 1, 1, NULL, now(), NULL, NULL, 1, 2);
COMMIT;