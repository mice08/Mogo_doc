/*
���bsǩԼ���б�--����ȡ�˵��б��ѯȨ��
���bsǩԼ���б�--����ȡ������¼��ѯȨ��
���bsǩԼ���б�--����ȡ�˵������ѯȨ��
*/


use mogoroomdb;


BEGIN;
-- ��ȡ�˵��б�
SELECT @id:=id FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '��ȡ�˵��б�', 'signedOrder/detailBill', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- ��ȡ������¼
SELECT @id1:=id FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq1:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id1;
SELECT @fcode1:= CONCAT('2',LPAD(@id1,4,0),@seq1) FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode1, '��ȡ������¼', 'signedOrder/detailLog', @seq1, '2', @id1, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- ��ȡ������¼
SELECT @id2:=id FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq2:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id2;
SELECT @fcode2:= CONCAT('2',LPAD(@id2,4,0),@seq2) FROM perm_functioninfo WHERE fname = 'ǩԼ���б�' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode2, '��ȡ�˵�����', 'signedOrder/detailBillInfo', @seq2, '3', @id2, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
COMMIT ;