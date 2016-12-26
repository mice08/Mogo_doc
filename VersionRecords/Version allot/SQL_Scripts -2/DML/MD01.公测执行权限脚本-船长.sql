
/* 测试/公测添加权限 ：正式环境已生成过无需执行*/
use mogoroomdb;
 
 BEGIN;
select @id:=id from perm_functioninfo where fname = '房源设置' and channel = 5;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '3260000', '设置负责人', '/mogoroom-partnerpc/orgExtend/batchChangeClerk',@seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '5');

select @id:=id from perm_functioninfo where fname = '账号列表' and channel = 5;
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( '3460011', '管理房源', '/mogoroom-partnerpc/orgExtend/toAccountFlatsTree',@seq, '3', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '5');
COMMIT;