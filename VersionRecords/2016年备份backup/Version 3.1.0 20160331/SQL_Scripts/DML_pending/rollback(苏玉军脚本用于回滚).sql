use mogoroomdb;

DELETE FROM perm_functioninfo where channel in(4,5);

DELETE FROM perm_role where channel = 5;

DELETE FROM perm_menu_group where menuGroupName='房东PC子账号菜单分组' or menuGroupName='房东APP子账号菜单分组';

DELETE FROM perm_menu_group_rel;

DELETE FROM perm_menugroup_role_rel;