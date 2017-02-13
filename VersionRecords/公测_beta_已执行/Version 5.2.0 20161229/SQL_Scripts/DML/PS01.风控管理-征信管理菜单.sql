USE mogoroomdb;

/* 1级菜单 风控管理-征信管理 */
select @id:=id from perm_functioninfo where fname = '风控管理';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '风控管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '征信管理', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 2级菜单  风控管理-征信管理-征信查询 */
select @id:=id from perm_functioninfo where fname = '征信管理';
select @fcode:= CONCAT('2',lpad(@id,4,0),1) from perm_functioninfo where fname = '征信管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '征信查询', 'riskQhCredit/personalCreditsInfo', 1, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

-- /* 2级菜单  风控管理-征信管理-好信鹰眼 */
-- select @id:=id from perm_functioninfo where fname = '征信管理';
-- select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
-- select @fcode:= CONCAT('2',lpad(@id,4,0),@seq) from perm_functioninfo where fname = '征信管理';
--
-- INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
-- VALUES ( @fcode, '好信鹰眼', 'riskQhCredit/haoXinHawkeye', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


/* 3级菜单  风控管理-征信管理-好信鹰眼-企业法院通 */
select @id:=id from perm_functioninfo where fname = '征信查询';
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '征信查询';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '企业法院通', 'riskQhCredit/companyCourtInfo', 1, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3级菜单  风控管理-征信管理-好信鹰眼-蘑菇征信查询 */
select @id:=id from perm_functioninfo where fname = '征信查询';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '征信查询';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '蘑菇征信查询', 'riskQhCredit/personalCreditsInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

/* 3级菜单  风控管理-风控服务-房东管理-查询房东征信信息 */
select @id:=id from perm_functioninfo where fname = '房东管理' ORDER BY id desc LIMIT 1;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '房东管理' ORDER BY id desc LIMIT 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '查询房东征信信息', 'riskQhCredit/showCreditsInfo', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
