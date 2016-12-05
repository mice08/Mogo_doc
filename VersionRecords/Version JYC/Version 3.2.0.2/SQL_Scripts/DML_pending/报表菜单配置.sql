select @id:=id from perm_functioninfo where fname = '统计';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '统计';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '房东登录情况统计报表', 'report/loginInfoReport', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');






select @id:=id from perm_functioninfo where fname = '房东登录情况统计报表';
select @fcode:= CONCAT('3',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '房东登录情况统计报表';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '查询组织关系', 'report/getNextOrg', '1', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');



select @id:=id from perm_functioninfo where fname = '房东登录情况统计报表';
select @fcode:= CONCAT('3',lpad(@id,4,0),'02' ) from perm_functioninfo where fname = '房东登录情况统计报表';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '历史报表', 'report/gethisToryXls', '2', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');




select @id:=id from perm_functioninfo where fname = '房东登录情况统计报表';
select @fcode:= CONCAT('3',lpad(@id,4,0),'03' ) from perm_functioninfo where fname = '房东登录情况统计报表';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '获取历史信息', 'report/gethisTory', '3', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');