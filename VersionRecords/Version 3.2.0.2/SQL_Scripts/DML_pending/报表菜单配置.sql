select @id:=id from perm_functioninfo where fname = 'ͳ��';
select @seq:=max(seq) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = 'ͳ��';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '������¼���ͳ�Ʊ���', 'report/loginInfoReport', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');






select @id:=id from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
select @fcode:= CONCAT('3',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '��ѯ��֯��ϵ', 'report/getNextOrg', '1', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');



select @id:=id from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
select @fcode:= CONCAT('3',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '��ʷ����', 'report/gethisToryXls', '2', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');




select @id:=id from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
select @fcode:= CONCAT('3',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '������¼���ͳ�Ʊ���';
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '��ȡ��ʷ��Ϣ', 'report/gethisTory', '3', '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');