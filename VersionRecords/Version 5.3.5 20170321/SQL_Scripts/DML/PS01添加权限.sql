/*
添加bs签约单列表--》获取账单列表查询权限
添加bs签约单列表--》获取操作记录查询权限
添加bs签约单列表--》获取账单详情查询权限
*/


use mogoroomdb;


BEGIN;
-- 获取账单列表
SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取账单列表', 'signedOrder/detailBill', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 获取操作记录
SELECT @id1:=id FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq1:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id1;
SELECT @fcode1:= CONCAT('2',LPAD(@id1,4,0),@seq1) FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode1, '获取操作记录', 'signedOrder/detailLog', @seq1, '2', @id1, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 获取操作记录
SELECT @id2:=id FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;
SELECT @seq2:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id2;
SELECT @fcode2:= CONCAT('2',LPAD(@id2,4,0),@seq2) FROM perm_functioninfo WHERE fname = '签约单列表' AND (furl IS NULL OR furl = 'signedOrder/list') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode2, '获取账单详情', 'signedOrder/detailBillInfo', @seq2, '3', @id2, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
COMMIT ;