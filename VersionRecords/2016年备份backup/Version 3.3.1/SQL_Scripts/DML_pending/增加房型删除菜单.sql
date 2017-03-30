use mogoroomdb;

/*删除房型  增加菜单*/
SELECT @id:=id FROM perm_functioninfo WHERE fname = '房型列表';
SELECT @fcode:= CONCAT('3',LPAD(@id,4,0),'15' ) FROM perm_functioninfo WHERE fname = '房型列表';

INSERT INTO `perm_functioninfo` ( `fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`)
VALUES ( @fcode, '批量删除房型', 'flats/deleteFlatsProtoType', '15', '3', @id, '1', NULL, NULL, NULL, '1', '1', NULL, NULL, NULL, NULL, '1', '2');
