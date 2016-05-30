
USE mogoroomdb;

INSERT INTO perm_functioninfo (
  fcode,fname, furl, seq, functionLevel, functionpId, functionisMenu, functionVcode, functionParam, functionFaclass, isAjax, functionType, createdBy, createdTime, updatedBy, updatedTime, STATUS, channel
) 
VALUES
  (  '4440182', '查询付款方式',  '/mogoroom-partner/finance/newPaytype',   '182',   '2',   '0',   '0',   NULL,   NULL,   NULL,   '1',   '0',   NULL,   NOW(),   NULL,   NULL,   '1',   4 ) ;
  
  
  
INSERT INTO perm_menu_group_rel (menuId,menuGroupId,STATUS,soDoneCode,createTime,updateTime
) SELECT
	perm_functioninfo.id,
	perm_menu_group.id,1,0,NOW(),NOW()
FROM
	perm_menu_group,
	perm_functioninfo
WHERE
	perm_functioninfo.channel = 4
AND perm_functioninfo.furl='/mogoroom-partner/finance/newPaytype' AND perm_menu_group.menuGroupName='房东APP子账号菜单分组';