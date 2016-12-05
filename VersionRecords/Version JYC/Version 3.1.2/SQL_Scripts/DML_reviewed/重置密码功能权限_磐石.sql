use mogoroomdb;
select @id:=id from perm_functioninfo where fname = '员工列表';
select  @fcode:=CONCAT('3',SUBSTR(fcode, 2, 5),'6')  from perm_functioninfo where fname = '员工列表';

INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES ( @fcode, '重置员工密码', 'employee/setEmployeePassword', '6', '3', @id, '0', NULL, NULL, NULL, '1', '0', NULL, NULL, NULL, NULL, '1', '2');
