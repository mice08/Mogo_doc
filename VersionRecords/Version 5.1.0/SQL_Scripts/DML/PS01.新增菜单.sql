/*  Database name `mogoroomdb`  BS�˵� */
use mogoroomdb;

BEGIN;

/* 1���˵� ��Ӫ����-�������� */
select @id:=id from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��������', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2���˵�  ��Ӫ����-��������-ɨ��ע��� */
select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @fcode:= CONCAT('2',lpad(@id,4,0),1) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, 'ɨ��ע���', 'scanRegisterBind/scanRegisterBindList', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2���˵�  ��Ӫ����-��������-�ֵ�����˺� */
select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '�ֵ�����˺�', 'branchAndSubAccount/branchAndSubAccountList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2���˵�  ��Ӫ����-��Ӫ����-���ҵ����� */
select @id:=id from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '����Ģ����', 'landlordBillRepo/landlordMogoScoreList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3���˵�  ��Ӫ����-��������-ɨ��ע��� (��ѯͷ���ϼ�ͳ��) */
select @id:=id from perm_functioninfo where fname = 'ɨ��ע���' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = 'ɨ��ע���' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯͷ���ϼ�ͳ��', 'scanRegisterBind/getAllScanRegBindData', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3���˵�  ��Ӫ����-��������-�ֵ�����˺� (��ѯͷ���ϼ�ͳ��) */
select @id:=id from perm_functioninfo where fname = '�ֵ�����˺�' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '�ֵ�����˺�' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯͷ���ϼ�ͳ��', 'branchAndSubAccount/getHeadCountData', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3���˵�  ��չajax */
select @id:=id from perm_functioninfo where fname = '������ҳ' ;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '������ҳ' ;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, 'ajax��ѯ��������', 'bd/findbdDirectorByAjax',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '��Ӫ����' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��Դ����ͳ��', 'landlordBillRepo/findLandlordRoomRepo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯ����������Ϣ', 'riskManage/searchLandlordTransactionInfo',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '������Ϣ����ͼ', 'riskManage/searchLineGraphInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');



select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯ������ͨ��¼', 'riskManage/findCommunicationRecord',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯ�����µĹ�Ԣ���', 'riskManage/findFlatsNumByLandlord',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ѯ�����µĹ�Ԣ�����ķ�����', 'riskManage/findRoomNumByFlatsId',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '��������' order by id desc limit 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '��������' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '����������ͨ��¼', 'riskManage/addCommunicationRecord',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '��Ӫ' ;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '��Ӫ';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��չԱ����', 'report/findRentPayStatus', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;