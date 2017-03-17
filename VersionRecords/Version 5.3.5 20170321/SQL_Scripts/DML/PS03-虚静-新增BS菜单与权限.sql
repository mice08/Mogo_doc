/*BS系统：添加鹰眼监控菜单及其子菜单*/

USE mogoroomdb;

BEGIN;
-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '征信管理';

/*三级菜单：好信鹰眼*/
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES ( @fcode, '好信鹰眼', 'riskQhCredit/monitorlist', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*获取新增三级菜单ID*/
SELECT @newmenuid:=last_insert_id();

/*[列入监控]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*好信鹰眼的子菜单: 列入监控*/
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES ( @fcode, '列入监控', 'riskQhCredit/addMonitor', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[取消监控]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*好信鹰眼的子菜单: 取消监控*/
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES ( @fcode, '取消监控', 'riskQhCredit/cancelMonitor', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[更新征信信息]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*好信鹰眼的子菜单: 更新征信信息*/
INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES ( @fcode, '更新征信信息', 'riskQhCredit/syncCreditInfo', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


-- 确认插入结果
SELECT * FROM perm_functioninfo where  ORDER BY id  DESC LIMIT 10;

COMMIT;

