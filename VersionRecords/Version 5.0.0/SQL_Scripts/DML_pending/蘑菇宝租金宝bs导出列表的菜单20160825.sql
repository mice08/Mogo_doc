/* Database name `mogoroomdb`， 新增菜单 */

use mogoroomdb;

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),4,0)),'22')),'导出租金宝申请列表','loanManageExport/listRentVerifyExport','22','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),4,0)),'06')),'导出租金宝资质列表','loanManageExport/listCreditsExport','6','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝贷款管理'),4,0)),'02')),'导出租金宝贷款列表','loanManageExport/loanManageListExport','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝贷款管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(3,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'),4,0)),'06')),'导出蘑菇宝申请列表','loanManageExport/listMogoContractExport','6','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝申请管理'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
