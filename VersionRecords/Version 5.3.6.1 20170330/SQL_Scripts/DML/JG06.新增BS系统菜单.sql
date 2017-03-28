
/*初始化BS系统资方买回菜单*/

use mogoroomdb;

BEGIN;

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '还款管理';

/*三级菜单：资方买回列表*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '资方买回列表', 'mogoBuyBack/queryMogoBuyBackList', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*获取新增三级菜单ID*/
SELECT @newmenuid:=LAST_INSERT_ID();

/*[查询与导出]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*资方买回子菜单：信审确认*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '信审确认', 'mogoBuyBack/confirmCreditAudit', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[查询与导出]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*[查询与导出]资方退款*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '资方退款', 'mogoBuyBack/returnFund', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

COMMIT;