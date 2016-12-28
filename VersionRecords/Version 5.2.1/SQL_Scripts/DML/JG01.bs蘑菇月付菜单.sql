/*  新增蘑菇月付的菜单*/
USE mogoroomdb;

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES((SELECT CONCAT(2,(SELECT LPAD((SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),4,0)),'07')),'打开上传月付服务申请材料','rentVerify/toMonthlyPayAnnex','7','3',(SELECT id FROM perm_functioninfo e WHERE e.fname = '蘑菇月付资质申请列表'),'0',NULL,NULL,NULL,'0','1',NULL,NULL,NULL,NULL,'1','2');
