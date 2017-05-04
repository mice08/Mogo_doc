/*新增月付活动的菜单*/
USE mogoroomdb;
BEGIN;

-- 准备参数
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 5, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE fname = '蘑菇金融';

/*二级菜单：报表*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '活动管理', '', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*获取新增二级菜单ID*/
SELECT @newmenuid:=LAST_INSERT_ID();

SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;


/*三级菜单：报表下的子菜单*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '月付活动列表', 'loanActivity/monthlyPayActivityList', @seq, @lvl, @pid, '1', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');



/*获取新增三级菜单ID*/
SELECT @newmenuid:=LAST_INSERT_ID();

/*[查询活动列表]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*查询活动列表*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询活动列表', 'loanActivity/monthlyPayActivityList', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[操作月付活动状态]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*操作月付活动状态*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '操作月付活动状态', 'loanActivity/operateLoanMpayActivityStatus', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


/*[查询操作日志]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*查询操作日志*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询操作日志', 'loanActivity/viewLoanActivityLogs', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');



/*[打开新增月付活动页面]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*打开新增月付活动页面*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '打开新增月付活动页面', 'loanActivity/turnToAddMonthlyPayActivity', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[新增和修改活动时校验]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*新增和修改活动时校验*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '新增和修改活动时校验', 'loanActivity/checkMonthlyPayActivity', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


/*[新增月付活动]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*新增月付活动*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '新增月付活动', 'loanActivity/addMonthlyPayActivity', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[打开编辑月付活动页面]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*打开编辑月付活动页面*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '打开编辑月付活动页面', 'loanActivity/turnToEditMonthlyPayActivity', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


/*[编辑月付活动]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*编辑月付活动*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '编辑月付活动', 'loanActivity/editMonthlyPayActivity', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');

/*[查询活动数据]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*查询活动数据*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询活动数据', 'loanActivity/findLoanActivityDataList', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


/*[导出活动数据]子菜单信息*/
SELECT @pid:=id,  @lvl:=pf.functionLevel + 1, @seq:=IFNULL(tmp.maxseq, 0) + 1, @fcode:= CONCAT(@lvl, LPAD(@pid,4,0), @seq ) FROM perm_functioninfo pf
LEFT JOIN (SELECT functionpId, MAX(pf.seq) maxseq FROM perm_functioninfo pf GROUP BY pf.`functionpId`) tmp
ON pf.`id`=tmp.functionpId WHERE pf.id=@newmenuid;

/*导出活动数据*/
INSERT INTO `perm_functioninfo`
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '导出活动数据', 'loanActivity/exportLoanActivityDataList', @seq, @lvl, @pid, '0', NULL, NULL, NULL, '1', '1', NULL, NOW(), NULL, NOW(), '1', '2');


COMMIT;


