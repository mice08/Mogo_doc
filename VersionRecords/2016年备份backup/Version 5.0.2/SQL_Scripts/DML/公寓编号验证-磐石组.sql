/*  Database name `mogoroomdb`  验证公寓编号是否重复校验 */
use mogoroomdb;

select @id:=id from perm_functioninfo where fname = '分散式公寓列表';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '分散式公寓列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证公寓编号是否重复校验', 'flats/validIsExist', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id:=id from perm_functioninfo where fname = '集中式公寓列表';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),@seq ) from perm_functioninfo where fname = '集中式公寓列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '验证公寓编号是否重复校验', 'flats/validIsExist', @seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');