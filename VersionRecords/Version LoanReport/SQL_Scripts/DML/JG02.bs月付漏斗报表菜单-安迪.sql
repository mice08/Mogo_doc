/*初始化BS系统报表菜单*/
USE mogoroomdb;

BEGIN;


/*1级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(1,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),4,0)),'09')),'月付报表','','32','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


/*2级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '月付报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'01')),'蘑菇月付转化漏斗列表','yuefuReport/findYueFuFunneList','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '月付报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '月付报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'02')),'月付漏斗报表','yuefuReport/findYuefuFunneChart','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '月付报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

/*3级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付转化漏斗列表'),4,0)),'01')),'月付漏斗报表导出','loanManageExport/exportYuefuFunne','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付转化漏斗列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


COMMIT;