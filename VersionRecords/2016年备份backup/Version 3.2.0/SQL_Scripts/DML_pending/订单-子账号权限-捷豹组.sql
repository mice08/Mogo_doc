use mogoroomdb;

/**订单列表*/
INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN01','新签约单-列表','/mogoroom-partnerpc/order/list','1','2','0','0',NULL,NULL,NULL,'1','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/list'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';
	
/**订单 详情*/
 INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN02','新签约单-详情','/mogoroom-partnerpc/order/details','2','2','0','0',NULL,NULL,NULL,'2','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/details'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';
	
/**财务信息*/
INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN03','新签约单-财务信息','/mogoroom-partnerpc/order/finance','3','2','0','0',NULL,NULL,NULL,'2','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/finance'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';
	
/**查看合同*/
INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN04','查看合同','/mogoroom-partnerpc/order/contract','4','4','0','0',NULL,NULL,NULL,'2','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/contract'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';
	
	
/**下载合同*/
INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN05','下载合同','/mogoroom-partnerpc/order/downloadContract','5','2','0','0',NULL,NULL,NULL,'2','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/downloadContract'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';	
	
	
	/**操作日志 */
INSERT INTO perm_functioninfo 
	(fcode,fname,furl,seq,functionLevel,functionpId,functionisMenu,functionVcode,functionParam,functionFaclass,isAjax,functionType,createdBy,createdTime,updatedBy,updatedTime,status,channel)
VALUES
	('3SIGN08','操作日志','/mogoroom-partnerpc/order/changeslog','8','2','0','0',NULL,NULL,NULL,'2','0',NULL,NOW(),NULL,NULL,'1',5);

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
	perm_functioninfo.channel = 5 
	AND perm_functioninfo.furl='/mogoroom-partnerpc/order/changeslog'
	AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';	