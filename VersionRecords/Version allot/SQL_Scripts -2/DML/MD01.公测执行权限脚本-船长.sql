
/* ����/�������Ȩ�� ����ʽ���������ɹ�����ִ��*/
 
select @id:=id from perm_functioninfo where fname = '��Դ����' and channel = 5;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '3260000', '���ø�����', '/mogoroom-partnerpc/orgExtend/batchChangeClerk',@seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '5');

select @id:=id from perm_functioninfo where fname = '�˺��б�' and channel = 5;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '3460011', '����Դ', '/mogoroom-partnerpc/orgExtend/toAccountFlatsTree',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '5');
