/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* bizd拓展系统管理菜单（一级） */
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000004', '数据报表', '', 4, '0', 0, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（二级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '数据报表' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '数据报表' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '数据报表', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级） */
-- ------------------------ 区域列表
SELECT @id:=id FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域列表', 'bdrpt/areaDay', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 区域累计
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域累计', 'bdrpt/areaSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 区域月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域月报', 'bdrpt/areaMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 部门日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门日报', 'bdrpt/serviceSectorDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 部门月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门月报', 'bdrpt/serviceSectorMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 部门汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门月报', 'bdrpt/serviceSectorSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 拓展人日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员日报', 'bdrpt/servicePersonDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 拓展人月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员月报', 'bdrpt/servicePersonMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 拓展人汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员汇总', 'bdrpt/servicePersonSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 房东日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东日报', 'bdrpt/landlordDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 房东月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东月报', 'bdrpt/landlordMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

  -- 房东汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '区域列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '区域列表' AND (furl IS NULL OR furl = 'bdrpt/areaDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东汇总', 'bdrpt/landlordSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- -------------- 部门列表
SELECT @id:=id FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门列表', 'bdrpt/serviceSectorDay', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 部门月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门月报', 'bdrpt/serviceSectorMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 部门汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '部门月报', 'bdrpt/serviceSectorSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 拓展人日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员日报', 'bdrpt/servicePersonDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 拓展人月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员月报', 'bdrpt/servicePersonMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 拓展人汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员汇总', 'bdrpt/servicePersonSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东日报', 'bdrpt/landlordDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东月报', 'bdrpt/landlordMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '部门列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '部门列表' AND (furl IS NULL OR furl = 'bdrpt/serviceSectorDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东汇总', 'bdrpt/landlordSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- -------------- 拓展员列表
SELECT @id:=id FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '数据报表' AND functionLevel = 1 AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员列表', 'bdrpt/servicePersonDay', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 拓展人月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展员列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '拓展员列表' AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员月报', 'bdrpt/servicePersonMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 拓展人汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展员列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '拓展员列表' AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员汇总', 'bdrpt/servicePersonSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东日报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展员列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '拓展员列表' AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东日报', 'bdrpt/landlordDay', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东月报
SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展员列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '拓展员列表' AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东月报', 'bdrpt/landlordMonth', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

-- 房东汇总
SELECT @id:=id FROM perm_functioninfo WHERE fname = '拓展员列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(ifnull(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '拓展员列表' AND (furl IS NULL OR furl = 'bdrpt/servicePersonDay') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东汇总', 'bdrpt/landlordSummary', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

COMMIT;