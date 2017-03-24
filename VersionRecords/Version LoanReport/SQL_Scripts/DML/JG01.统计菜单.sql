/*初始化BS系统报表菜单*/
USE mogoroomdb;

BEGIN;

/*1级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(1,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),4,0)),'32')),'报表','','32','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

/*2级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'01')),'蘑菇月付贷款统计','loanStat/loanMonthlyPayStatList','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'02')),'蘑菇宝贷款统计','loanStat/loanMogoStatList','2','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'03')),'蘑菇宝成本收益统计','loanStat/loanCostAndIncomeStatList','3','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),4,0)),'04')),'蘑菇宝逾期坏账统计','loanStat/loanOverdueBadStatList','4','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '报表' AND functionpId  = (SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融') ),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


/*3级菜单*/
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付贷款统计'),4,0)),'01')),'查询蘑菇月付贷款统计列表','loanStat/loanMonthlyPayStatList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付贷款统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付贷款统计'),4,0)),'02')),'导出蘑菇月付贷款统计列表','loanStat/exportLoanMonthlyPayStatList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付贷款统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝贷款统计'),4,0)),'01')),'查询蘑菇宝贷款统计列表','loanStat/loanMogoStatList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝贷款统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝贷款统计'),4,0)),'02')),'导出蘑菇宝贷款统计列表','loanStat/exportLoanMogoStatList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝贷款统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');



INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),4,0)),'01')),'查询蘑菇宝成本收益统计列表(天)','loanStat/loanCostAndIncomeStatList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),4,0)),'02')),'导出蘑菇宝成本收益统计列表(天)','loanStat/exportLoanCostAndIncomeStatList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),4,0)),'03')),'查询蘑菇宝成本收益统计列表(月)','loanStat/loanCostAndIncomeStatByMonthList','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),4,0)),'04')),'导出蘑菇宝成本收益统计列表(月)','loanStat/exportLoanCostAndIncomeStatByMonthList','4','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝成本收益统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');



INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝逾期坏账统计'),4,0)),'01')),'查询蘑菇宝逾期坏账统计列表','loanStat/loanOverdueBadStatList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝逾期坏账统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝逾期坏账统计'),4,0)),'02')),'导出蘑菇宝逾期坏账统计列表','loanStat/exportLoanOverdueBadStatList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇宝逾期坏账统计'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


COMMIT;