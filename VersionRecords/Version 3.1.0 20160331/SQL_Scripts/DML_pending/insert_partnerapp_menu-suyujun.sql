use mogoroomdb;

INSERT INTO perm_functioninfo (fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)VALUES('4440179','验证预订单状态','/mogoroom-partner/order/verifyStateBookOrder','179','2','0','0',NULL,NULL,NULL,'1','0',NULL,NOW(),NULL,NULL,'1',4);

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
	perm_functioninfo.channel = 4 
	AND perm_menu_group.menuGroupName='房东APP子账号菜单分组' 
	AND perm_functioninfo.furl = '/mogoroom-partner/order/verifyStateBookOrder';

