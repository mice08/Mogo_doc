use mogoroomdb;

/*职业房东录入  增加菜单*/
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理';
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),'15' ) FROM perm_functioninfo WHERE fname = '房东管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展管理', '', '15', '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展管理';
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),'5' ) FROM perm_functioninfo WHERE fname = '拓展管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '职业房东分配', 'landlord/assignLandlordList', '5', '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '职业房东分配';
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),'5' ) FROM perm_functioninfo WHERE fname = '职业房东分配';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '通过组织机构查询下面的员工', 'landlord/findEmployeeByOrgId', '5', '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


SELECT @id:=id FROM perm_functioninfo WHERE fname = '职业房东分配';
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),'10' ) FROM perm_functioninfo WHERE fname = '职业房东分配';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '保存分配的服务人', 'landlord/assignLandlord', '10', '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '职业房东分配';
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),'15' ) FROM perm_functioninfo WHERE fname = '职业房东分配';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看历史服务人', 'landlord/findHisCustomerMgrList', '15', '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');