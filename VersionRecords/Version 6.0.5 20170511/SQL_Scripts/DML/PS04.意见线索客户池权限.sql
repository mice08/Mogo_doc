/*  Database name `mogoroomdb`  投诉举报菜单权限 */
use mogoroomdb;

BEGIN;

-- 三级菜单,请求接口查询意见信息
SELECT @id:=id FROM perm_functioninfo WHERE fname = '意见列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'suggestion/suggestionList') ORDER BY id DESC LIMIT 1;
SELECT @seq:=(IFNULL(MAX(seq),0)+1) FROM perm_functioninfo WHERE functionpId=@id;
SELECT @fcode:= CONCAT('2',LPAD(@id,4,0),@seq) FROM perm_functioninfo WHERE fname = '意见列表' AND functionLevel = 2 AND (furl IS NULL OR furl = 'suggestion/suggestionList') ORDER BY id DESC LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES (@fcode, '查询意见信息', 'suggestion/detail', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- 线索池新增渠道枚举
INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
VALUES ('landlordSource-5', 'landlordSource', '5', '5', '开放注册', '1', NULL, 'landlordSource-5');

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
VALUES ('landlordSource-6', 'landlordSource', '6', '6', '入驻申请', '1', NULL, 'landlordSource-6');

INSERT INTO `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`)
VALUES ('landlordSource-7', 'landlordSource', '7', '7', '客服录入', '1', NULL, 'landlordSource-7');

-- 新增字典值 帕拉斯渠道
INSERT INTO comm_dictionary (code,groupName,sort,keyPro,value,status,fcode,enValue)
VALUES ('channel-22','channel',22,22,'帕拉斯',1,null,'channel-22');

COMMIT;