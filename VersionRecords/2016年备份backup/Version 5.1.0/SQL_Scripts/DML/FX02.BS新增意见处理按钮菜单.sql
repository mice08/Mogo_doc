use mogoroomdb;


/*添加菜单 */
select @id:=id from perm_functioninfo where fname = '意见列表' order by id desc limit 1;
select @fcode:= CONCAT('3',lpad(@id,4,0),1 ) from perm_functioninfo where fname = '意见列表' order by id desc limit 1;

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '处理意见', 'suggestion/processSuggestion', 1, '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');