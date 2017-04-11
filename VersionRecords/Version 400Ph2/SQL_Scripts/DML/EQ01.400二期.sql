/* Database name `mogoroomdb` */
USE mogoroomdb;

/* 初始化推广号码的所属渠道 影响记录条数约为：1004 */
UPDATE `tele_ext_usr_rel` SET showPlatform='1' WHERE empId IS NOT NULL;

/* 添加BS菜单-部门选择控件 */
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES('3343903','部门选择控件','tele/overview/loadDeptList','8','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '400房东概览管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

/* 添加BS菜单权限 影响记录条数约为：18 */
INSERT INTO perm_role_function ( role_id, function_id ) 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/loadDeptList') 
FROM
  perm_role_function 
WHERE valid='1' AND function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/findDataOverviewRecords');

  /* 添加BS菜单-查询已绑定分机 */
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES('3343904','查询已绑定分机','tele/overview/findContactUsage','11','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '400号码管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

/* 添加BS菜单权限 影响记录条数约为：18 */
INSERT INTO perm_role_function ( role_id, function_id ) 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/findContactUsage') 
FROM
  perm_role_function 
WHERE valid='1' AND function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/findDataOverviewRecords');

  /* 添加BS菜单-删除联系人 */
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES('3343905','删除联系人','tele/overview/removeContactMan','12','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '400号码管理'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

/* 添加BS菜单权限 影响记录条数约为：18 */
INSERT INTO perm_role_function ( role_id, function_id ) 
SELECT 
  role_id,
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/removeContactMan') 
FROM
  perm_role_function 
WHERE valid='1' AND function_id = 
  (SELECT 
    id 
  FROM
    perm_functioninfo 
  WHERE furl ='tele/overview/findDataOverviewRecords');

