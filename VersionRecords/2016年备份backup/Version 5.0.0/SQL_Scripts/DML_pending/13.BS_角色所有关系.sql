use mogoroomdb;

set autocommit = 0;
/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='员工管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,70,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,71,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,72,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,73,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,25,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,30,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,34,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,35,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,32,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,38,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,39,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,36,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,37,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,43,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,40,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,41,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,46,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,45,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='员工管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,35,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,70,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,32,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,71,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,38,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,39,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,36,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,37,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,43,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,40,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,41,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,46,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,72,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,73,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,45,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,25,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,30,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='员工查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,35,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,70,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,71,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,39,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,40,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,41,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,73,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,25,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,30,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='子账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='员工查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,70,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,71,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,39,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,40,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,41,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,72,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,73,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,25,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='分店管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,54,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,58,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,29,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,60,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='关闭分店管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,54,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,63,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,29,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源分配管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,68,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,69,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='租金宝管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,85,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,77,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,74,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,75,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,105,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租金宝申请';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='蘑菇宝贷款';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租金宝买回';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='蘑菇宝申请';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='蘑菇宝放款';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='消息提示管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='消息提示管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='维修投诉管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,6,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,7,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,8,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,10,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,11,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,12,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,13,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,20,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);


/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9230000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9420000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);


/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='维修投诉管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,6,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,7,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,8,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,10,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,11,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,12,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,13,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,20,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='联系电话修改消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);


/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9230000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9420000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);


/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='维修投诉查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,6,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,7,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,8,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,10,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,11,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);


/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9230000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9420000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);


/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='维修投诉查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,6,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,7,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,8,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,10,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,11,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='投诉消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='报修消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);


/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2120001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9230000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '9420000' and channel=4;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);

/**根据fcode换取menuId**/
select @menuId:=id from perm_functioninfo where fcode = '2210001' and channel=5;
/*插入角色和数据展示关系*/
INSERT INTO `perm_role_function` (`role_id`,`function_id`)
SELECT @roleId,@menuId from dual where not EXISTS (select role_id from perm_role_function where role_id = @roleId and function_id=@menuId);


/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主信息管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,17,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,19,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,18,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,21,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主信息管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,17,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,19,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,18,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,21,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主账单管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,23,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,24,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,26,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主账单管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,23,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,24,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,26,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主账单查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,23,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,26,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='业主消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='业主账单查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,16,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,23,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,26,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,14,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,15,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,137,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,136,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,139,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,138,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,140,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,129,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,128,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,131,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,133,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,132,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,135,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,134,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,137,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,136,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,139,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,138,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,140,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,129,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,128,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,131,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,133,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,132,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,135,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,134,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='审核公寓';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,153,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,146,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,148,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,149,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,150,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,111,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,118,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,117,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,114,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,113,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,124,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,123,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,120,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,153,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,146,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,148,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,149,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,150,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,111,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,119,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,118,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,117,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,114,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,113,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,124,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,123,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,120,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,171,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,169,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,168,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,179,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,176,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,180,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,181,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客还款成功';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客逾期强清';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='还款提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='逾期提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='还款成功';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客还款提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,171,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,169,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,168,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,179,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,176,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,180,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,181,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客还款成功';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客逾期提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客逾期强清';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='还款提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='逾期提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='还款成功';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='租客还款提醒';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,199,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,187,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,199,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,187,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='总部销售单&账单作废' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,174,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,119,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,115,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,124,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,183,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='分店销售单&账单作废' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,174,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,119,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,115,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,183,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账单消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单优惠管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,175,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单优惠管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,175,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='总部改账单最晚支付日' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,177,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='分店改账单最晚支付日' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,177,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售情况查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售情况查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售情况导出（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,123,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='销售情况导出（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,143,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,110,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,108,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,109,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,106,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,107,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,152,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,116,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,112,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,144,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,147,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,123,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,122,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,121,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,151,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预定消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='预约消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='线上签约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='补录租约';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='退房操作';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单导出（总部 ）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,170,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,179,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单导出（分店 ）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,170,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,173,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,172,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,167,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,166,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,178,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,179,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,182,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款导出（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,200,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,188,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='账单收款导出（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,200,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,197,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,198,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,188,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='总部 充值及提现管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,163,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,162,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,161,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,160,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='分店 充值及提现管理' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,163,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,162,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,161,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,160,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='核销收支管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,195,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,194,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='核销收支管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,195,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,194,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='取消核销管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,196,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='取消核销管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,196,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='财务报表查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,190,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,189,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='财务报表查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,190,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,189,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='财务报表导出（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,202,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,190,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,191,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,188,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,189,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='财务报表导出（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,202,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,193,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,192,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,186,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,184,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,185,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,190,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,191,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,188,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,189,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='钱款消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='退款审核管理（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,157,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,158,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,159,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='退款审核管理（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,157,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,158,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,159,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='退款审核查看（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,157,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,159,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='退款审核查看（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,156,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,157,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,159,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,42,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,47,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,44,1,0,now(),NULL);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息删除（总部）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,141,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,142,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,130,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



/*根据角色名称查询id*/
select @roleId:=id from perm_role where roleName='房源信息删除（分店）' and channel=45;

/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,141,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,65,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,66,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,97,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,142,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,130,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,164,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,51,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,50,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,55,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,53,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,22,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,52,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,93,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,145,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,95,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,57,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,94,1,0,now(),NULL);
/*插入角色和功能树关系*/
INSERT INTO `perm_menugroup_role_rel` (`roleId`,`menuGroupId`,`status`,`soDoneCode`,`createTime`,`updateTime`) VALUES (@roleId,56,1,0,now(),NULL);

/*根据消息类别名称查询id*/
select @categoryId:=id from mesg_category where categoryName='账号相关消息';
/*插入角色和消息类型关系*/
INSERT INTO `mesg_category_role` (`categoryId`,`roleId`,`createBy`,`createTime`,`createByType`) VALUES (@categoryId,@roleId,0,now(),1);



commit;