use mogoroomdb;

/*房东默认的子账号初始化*/
INSERT INTO perm_role(roleName,status,createTime,createEmp,channel) VALUES('子账号默认角色',1,NOW(),0,5);

/*对所有的房东初始化默认菜单分组*/
INSERT INTO perm_menu_group(menuGroupName,grantorId,grantorType,status,soDoneCode,createTime,updateTime)
VALUES('房东PC子账号菜单分组', 0,0,1,0,NOW(),NOW());

INSERT INTO perm_menu_group(menuGroupName,grantorId,grantorType,status,soDoneCode,createTime,updateTime)
VALUES('房东APP子账号菜单分组', 0,0,1,0,NOW(),NOW());

/*初始化菜单与分组关系表*/
INSERT INTO perm_menu_group_rel (
	menuId,
	menuGroupId,
	STATUS,
	soDoneCode,
	createTime,
	updateTime
) SELECT
	perm_functioninfo.id,
	perm_menu_group.id,
	1,
	0,
	NOW(),
	NOW()
FROM
	perm_menu_group,
	perm_functioninfo
WHERE
	perm_functioninfo.channel = 5 AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';

INSERT INTO perm_menu_group_rel (
	menuId,
	menuGroupId,
	STATUS,
	soDoneCode,
	createTime,
	updateTime
) SELECT
	perm_functioninfo.id,
	perm_menu_group.id,
	1,
	0,
	NOW(),
	NOW()
FROM
	perm_menu_group,
	perm_functioninfo
WHERE
	perm_functioninfo.channel = 4 AND perm_menu_group.menuGroupName='房东APP子账号菜单分组';

	
INSERT INTO perm_menugroup_role_rel (
	roleId,
	menuGroupId,
	STATUS,
	soDoneCode,
	createTime,
	updateTime
) SELECT
	perm_role.id,
	perm_menu_group.id,
	1,
	0,
	NOW(),
	NOW()
FROM
	perm_role,
	perm_menu_group
WHERE
	perm_role.channel = 5;