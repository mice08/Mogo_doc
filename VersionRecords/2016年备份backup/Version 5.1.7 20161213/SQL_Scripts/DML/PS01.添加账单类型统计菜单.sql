user mogoroomdb;

/* BS账单类型统计添加菜单 */
select @id:=id from perm_functioninfo where fname = '运营报表';
select @seq:=(max(seq)+1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('3',lpad(@id,4,0),2 ) from perm_functioninfo where fname = '运营报表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '账单类型统计', 'landlordBillRepo/findLandlordBillTypeRepo', @seq, '2', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


INSERT INTO perm_role_function (`function_id`,`role_id`)VALUES
((SELECT id FROM perm_functioninfo WHERE fname='账单类型统计'),(SELECT id FROM perm_role WHERE rolename='运营报表'));