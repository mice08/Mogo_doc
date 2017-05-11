/*  Database name `mogoroomdb`  投诉举报菜单权限 */
use mogoroomdb;

BEGIN;

/* 举报列表 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '售后管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '售后管理' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '举报列表', 'complain/listReport?type=1', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 获取城市 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取城市', 'complain/findCityByProvince', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 获取区域 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取区域', 'complain/findDistrictsByCity', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 获取房源编号 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '获取房源编号', 'complain/findFlatByNumb', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 根据名称获取公寓 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '根据名称获取公寓', 'flats/findFlatsPluginList', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 查看举报信息 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看举报信息', 'complain/findReport', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 举报处理 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '举报处理', 'complain/dealReport', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 历史举报池 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '举报列表' AND functionLevel = 2 AND furl = 'complain/listReport?type=1' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '历史举报池', 'complain/dealReport?type=2', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 投诉处理 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '投诉列表' AND functionLevel = 2 AND furl = 'complain/list' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '投诉列表' AND functionLevel = 2 AND furl = 'complain/list' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '投诉处理', 'complain/dealComplain', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 投诉查看 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '投诉列表' AND functionLevel = 2 AND furl = 'complain/list' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '投诉列表' AND functionLevel = 2 AND furl = 'complain/list' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看投诉', 'complain/findReport', @seq, '3', @id, '0', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');

COMMIT;