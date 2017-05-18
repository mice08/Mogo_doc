/*  Database name `mogoroomdb`  批量分配房东,房东查询台 */
use mogoroomdb;

BEGIN;
-- 三级菜单,请求批量分配房东(区域经理)
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/landlordListByRegionalManager') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/landlordListByRegionalManager') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '批量分配房东', 'bdlandlord/batchDistributionLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


-- 三级菜单,请求批量分配房东(拓展经理)
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/landlordListByExpanderManager') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/landlordListByExpanderManager') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '批量分配房东', 'bdlandlord/batchDistributionLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


-- 线索客户池列表-增加跟进
SELECT @id:=id FROM perm_functioninfo WHERE fname = '线索客户池列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/clueLandlordList') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '线索客户池列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/clueLandlordList') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '跟进', 'bdlandlord/followAction', @seq, '3', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


-- 签约客户池列表-增加跟进
SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约客户池列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/signLandlordList') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '签约客户池列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdlandlord/signLandlordList') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '跟进', 'bdlandlord/followAction', @seq, '3', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');





-- 线索客户池
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000013', '线索客户池', '', 5, '0', 0, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* 线索客户池(二级) */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '线索客户池' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '线索客户池' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '线索客户池', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


/* 线索客户池（三级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '线索客户池' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '线索客户池' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '线索客户池列表', 'bdlandlord/clueLandlordList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');



-- 线索客户池
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000014', '签约客户池', '', 5, '0', 0, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* 线索客户池(二级) */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约客户池' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '签约客户池' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约客户池', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


/* 线索客户池（三级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '签约客户池' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '签约客户池' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约客户池列表', 'bdlandlord/signLandlordList', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');



-- 房东查询台
-- 二级
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' AND functionLevel = 0 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东管理' AND functionLevel = 0 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东查询台', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 三级
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东查询台' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东查询台' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '房东查询台', 'bdlandlord/inquiryStation', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

COMMIT;