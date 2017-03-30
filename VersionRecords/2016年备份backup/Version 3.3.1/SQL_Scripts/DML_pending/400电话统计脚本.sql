use mogoroomdb;

/*400 电话统计接口*/
select @id:=id from perm_functioninfo where fname = '订单管理';
select @fcode:= CONCAT('2',lpad(@id,4,0),'40' ) from perm_functioninfo where fname = '订单管理';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '400电话列表', 'report/findBehaviorRecord', '40', '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
