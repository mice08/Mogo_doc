/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;

BEGIN;

/* bizd拓展系统管理菜单（0级） */
INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000001', '公共权限', '', 1, '0', 0, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000002', '公共客户池', '', 2, '0', 0, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '0000003', '房东管理', '', 3, '0', 0, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（一级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东管理' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东列表', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '公共客户池' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '公共客户池' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '公共客户池', '', 1, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '公共权限' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('1',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '公共权限' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '组织结构', '', 1, '1', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（二级） */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东列表', 'bdlandlord/landlordListByExpander', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东列表', 'bdlandlord/landlordListByExpanderManager', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东列表', 'bdlandlord/landlordListByRegionalManager', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东列表', 'bdlandlord/landlordListByGeneralManager', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东详情', '', @seq, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '公共客户池' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '公共客户池' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '公共客户池', 'bdlandlord/publicLandlordList', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '根据部门查询服务人', 'bdlandlord/findByDistrictId', 1, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '根据城市查找区域', 'bdlandlord/findByCity', @seq, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '根据区域找部门', 'bdlandlord/findByDic', @seq, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '根据城市查找区', 'city/findDistrictBycityId', @seq, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '组织结构' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证手机号是否重复', 'bdlandlord/mobilePhoneIsHave', @seq, '2', @id, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）拓展员 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展员', '', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '添加房东', 'bdlandlord/addLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东信息保存', 'bdlandlord/saveBizdLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpander' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '前往公客池', 'bdlandlord/publicLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）拓展经理 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理', '', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '分配', 'bdlandlord/distributionLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '添加房东', 'bdlandlord/addLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东信息保存', 'bdlandlord/saveBizdLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByExpanderManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '前往公客池', 'bdlandlord/publicLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）区域经理 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '区域经理', '', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '分配', 'bdlandlord/distributionLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByRegionalManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '编辑房东', 'bdlandlord/addLandlordList', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）城市经理 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByGeneralManager' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东列表' AND furl = 'bdlandlord/landlordListByGeneralManager' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '城市经理', '', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）房东详情 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看', 'bdlandlord/bizdLandlordInfo', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '房东签约资料', 'bdlandlord/bizdLandlordSignInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '跟进记录', 'bdlandlord/bizdLandlordRecordInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '保存签约资料', 'bdlandlord/addSignInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '保存跟进记录', 'bdlandlord/saveRecordInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证手机号是否存在', 'bdlandlord/mobilePhoneIsHave', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约资料审核', 'bdlandlord/reviewedRecordInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '签约资料申请', 'bdlandlord/applyRecordInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '释放房东', 'bdlandlord/releaseLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

SELECT @id:=id FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(MAX(seq)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '房东详情' AND (furl IS NULL OR furl = '') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '封存房东', 'bdlandlord/sealedLandlord', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');

/* BS拓展系统管理菜单（三级）公共客户池 */
SELECT @id:=id FROM perm_functioninfo WHERE fname = '公共客户池' AND furl = 'bdlandlord/publicLandlordList' ORDER BY id DESC LIMIT 1;
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),1) FROM perm_functioninfo WHERE fname = '公共客户池' AND furl = 'bdlandlord/publicLandlordList' ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '跟进', 'bdlandlord/followAction', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '19');


COMMIT;