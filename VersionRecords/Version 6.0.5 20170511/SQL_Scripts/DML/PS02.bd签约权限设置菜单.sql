/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* 签约获取城市列表 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取城市列表', 'landlord/getCity', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '19');

/* 签约获取城市列表 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取银行', 'landlord/findBankPluginList', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '19');

/* 签约校验 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND functionLevel = 2 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证甲方电话和身份证号', 'landlord/checkSign', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '19');

COMMIT;