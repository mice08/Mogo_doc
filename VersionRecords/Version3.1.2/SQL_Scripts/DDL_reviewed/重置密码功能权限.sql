select @id:=id from perm_functioninfo where fname = 'Ա���б�';
select  @fcode:=CONCAT('3',SUBSTR(fcode, 2, 5),'6')  from perm_functioninfo;

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES ( @fcode, '����Ա������', 'employee/setEmployeePassword', '6', '3', @id, '0', NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '1', '2');
