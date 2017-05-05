/*新增保理子账号的菜单*/
USE mogoroomdb;
BEGIN;

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 5, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '财务管理';

/*二级菜单：报表*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '金融管理', '', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*获取新增二级菜单ID*/
SELECT @newmenuid:=LAST_INSERT_ID();

SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;


/*三级菜单：报表下的子菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '保理子账户管理', 'loanTransactionWitness/transactionWitnessList', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');



/*获取新增三级菜单ID*/
SELECT @newmenuid:=LAST_INSERT_ID();

/*[查询与导出]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*查询保理子账户交易记录*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询保理子账户交易记录', 'loanTransactionWitness/transactionWitnessList', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[查询与导出]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*导出导出保理子账户交易记录*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '导出保理子账户交易记录', 'loanTransactionWitness/exportTransactionWitnessList', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '0', '1', NULL, NOW(), NULL, NOW(), '1', '2');


/*[查询与导出]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*保理子账户提现*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '保理子账户提现', 'loanTransactionWitness/loanCreateWithdrawal', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');



COMMIT;


