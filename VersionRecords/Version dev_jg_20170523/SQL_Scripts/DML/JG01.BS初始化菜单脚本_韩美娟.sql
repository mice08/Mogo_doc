/*新增保理子账号的菜单*/
USE mogoroomdb;
BEGIN;

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '拓展审核列表';

/*新增三级菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '拓展经理添加信息采集备注', 'loanMonthlyPayApply/saveCollectionBusiManagerRemark', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '蘑菇月付服务申请列表';

/*新增三级菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '信审添加信息采集备注', 'loanMonthlyPayApply/saveCollectionCreditRemark', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '蘑菇月付服务申请列表';
/*新增三级菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '检查是否已经上传合同', 'loanMonthlyPayApply/checkIsUploadContract', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '蘑菇月付服务申请列表';
/*新增三级菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查看合同', 'loanMonthlyPayApply/turnToViewUploadContractPage', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '蘑菇月付服务申请列表';
/*新增三级菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '合同文件下载', 'loanMonthlyPayApply/contractFileDown', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');

COMMIT;