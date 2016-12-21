/*  蘑菇金融下面租金宝申请列表、租金宝资质列表 和新增蘑菇月付的菜单*/
USE mogoroomdb;


BEGIN;


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),4,0)),'25')),'查看蘑菇宝申请详情','rentVerify/turnToMogoBaoServiceDetail','25','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),4,0)),'26')),'打开蘑菇宝一审页面','rentVerify/turnToMogoBaoServiceOneVerify','26','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),4,0)),'27')),'蘑菇宝二审','rentVerify/mogoBaoTwoVerify','27','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),4,0)),'28')),'蘑菇宝一审','rentVerify/saveMogoBaoServiceInVerify','28','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),4,0)),'27')),'查看房东蘑菇宝属性','jycLandlordCredit/findMogoBaoServiceDetail','27','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),4,0)),'28')),'保存房东蘑菇宝属性','jycLandlordCredit/saveMogoBaoService','28','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),4,0)),'29')),'终止资质','jycLandlordCredit/terminateMogoBaoCredentials','29','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),4,0)),'30')),'暂停和恢复服务','jycLandlordCredit/modifyMogoBaoServiceValidStatus','30','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '租金宝资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');




INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),4,0)),'30')),'蘑菇月付','','30','1',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇金融'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'01')),'蘑菇月付资质申请列表','rentVerify/monthlyRentVerifyList','1','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'02')),'蘑菇月付资质列表','jycLandlordCredit/monthlyCreditList','2','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'03')),'蘑菇月付申请列表','monthPay/mogoContractList','3','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'04')),'蘑菇月付放款列表','monthPay/queryLoanList','4','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','0',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'05')),'蘑菇月付还款列表','monthPay/queryRenterReapyList','5','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),4,0)),'06')),'蘑菇月付买回列表','monthPay/loanMonthlyBuyBackList','6','2',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付'),'1',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'01')),'查看申请列表','rentVerify/monthlyRentVerifyList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'02')),'打开蘑菇月付一审页面','rentVerify/turnToMogoMonthlyServiceOneVerify','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'03')),'蘑菇月付一审','rentVerify/saveMogoMonthlyService','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'04')),'蘑菇月付二审','rentVerify/mogoMonthlyTwoVerify','4','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'05')),'查看蘑菇月付详情','rentVerify/turnToMogoMonthlyServiceDetail','5','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'06')),'导出月付申请列表','loanManageExport/exportMonthlyRentVerifyList','6','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');



INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'01')),'查询资质列表','jycLandlordCredit/monthlyCreditList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'02')),'终止资质','jycLandlordCredit/terminateMonthlyCredentials','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'03')),'暂停和恢复服务','jycLandlordCredit/modifyMonlthyServiceValidStatus','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'04')),'导出月付资质列表','loanManageExport/exportMonthlyCreditList','4','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'05')),'查看房东蘑菇月付属性','jycLandlordCredit/findMogoMonthlyServiceDetail','5','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),4,0)),'06')),'保存房东蘑菇月付属性','jycLandlordCredit/saveMogoMonthlyService','6','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');


INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'01')),'查询蘑菇月付申请','monthPay/mogoContractList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'02')),'导出蘑菇月付申请','monthPay/exportMogoContractList','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'03')),'查看蘑菇月付详情','monthPay/findLoanContractDetail','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'04')),'打开蘑菇审核','monthPay/checkIDphotoSources','4','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'05')),'蘑菇审核','monthPay/approveLoanContract','5','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'06')),'重新发起申请','monthPay/sendApply','6','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),4,0)),'07')),'月付分期强清','monthPay/affirmForceCheckOut','7','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付申请列表'),'0',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');



INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付放款列表'),4,0)),'01')),'确认资方款项到位','monthPay/confirmReceivedThirdFund','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付放款列表'),'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付放款列表'),4,0)),'02')),'房东放款','monthPay/loanFundToLandlord','2','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付放款列表'),'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');



INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付买回列表'),4,0)),'01')),'查询蘑菇月付买回列表','monthPay/loanMonthlyBuyBackList','1','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付买回列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付买回列表'),4,0)),'02')),'导出蘑菇月付买回列表','monthPay/loanMonthlyBuyBackReport','3','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付买回列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');


COMMIT;

