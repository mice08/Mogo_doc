use mogoroomdb;

INSERT INTO perm_functioninfo (
  fcode,
  fname,
  furl,
  seq,
  functionLevel,
  functionpId,
  functionisMenu,
  functionVcode,
  functionParam,
  functionFaclass,
  isAjax,
  functionType,
  createdBy,
  createdTime,
  updatedBy,
  updatedTime,
  STATUS,
  channel
) 
VALUES
  (
    '5552002',
    '组织小区查询',
    '/mogoroom-partnerpc/flats/findCommunityByOrg',
    '2002',
    '2',
    '0',
    '0',
    NULL,
    NULL,
    NULL,
    '1',
    '0',
    NULL,
    NOW(),
    NULL,
    NULL,
    '1',
    5
  ) ;
  
  
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
AND perm_functioninfo.furl='/mogoroom-partnerpc/flats/findCommunityByOrg' AND perm_menu_group.menuGroupName='房东PC子账号菜单分组';