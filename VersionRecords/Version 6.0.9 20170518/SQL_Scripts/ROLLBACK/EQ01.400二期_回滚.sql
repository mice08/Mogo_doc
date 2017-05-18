/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 回滚-添加BS菜单-删除联系人 */
DELETE FROM perm_role_function WHERE function_id IN (SELECT 
id 
FROM
perm_functioninfo 
WHERE fcode='3343905');
  
DELETE FROM perm_functioninfo WHERE fcode='3343905';

/* 回滚-添加BS菜单-查询已绑定分机 */
DELETE FROM perm_role_function WHERE function_id IN (SELECT 
id 
FROM
perm_functioninfo 
WHERE fcode='3343904');
  
DELETE FROM perm_functioninfo WHERE fcode='3343904';
  
/* 回滚-添加BS菜单-部门选择控件 */
DELETE FROM perm_role_function WHERE function_id IN (SELECT 
id 
FROM
perm_functioninfo 
WHERE fcode='3343903');
  
DELETE FROM perm_functioninfo WHERE fcode='3343903';
