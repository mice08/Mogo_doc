use mogoroomdb;


select @id:=id from perm_functioninfo where fname = '房间列表';
select @fcode:= CONCAT('3',lpad(@id,4,0),'11' ) from perm_functioninfo where fname = '房间列表';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '图片下载', 'room/szRoomImage', '3', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '系统管理';
select @fcode:= CONCAT('1',lpad(@id,4,0),'06' ) from perm_functioninfo where fname = '系统管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '银行管理', '', '3', '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行管理';
select @fcode:= CONCAT('2',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '银行管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '银行卡管理', 'common/bankList', '1', '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'01' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '查询编辑银行信息', 'common/findBankById', '2', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'02' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '新增银行', 'common/addBank', '2', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'03' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '编辑银行', 'common/editBank', '3', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'04' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '删除银行', 'common/deleteBank', '4', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'05' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '上传图片', 'common/uploadImage', '5', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id:=id from perm_functioninfo where fname = '银行卡管理';
select @fcode:= CONCAT('3',lpad(@id,4,0),'06' ) from perm_functioninfo where fname = '银行卡管理';

INSERT INTO `perm_functioninfo` 
( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) 
VALUES (@fcode, '查看银行图片', 'common/findBankPicById', '6', '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');