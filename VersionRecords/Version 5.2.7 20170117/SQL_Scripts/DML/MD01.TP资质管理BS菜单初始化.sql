use mogoroomdb;
SELECT @id:=id FROM perm_functioninfo WHERE fname = '运营管理';
select @seq:=IFNULL((MAX(seq)+1),1) from perm_functioninfo where functionpId=@id;
select @fcode:= CONCAT('1',lpad(@id,4,0),2 ) from perm_functioninfo where fname = '运营管理';
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode, '房东活动管理', '', @seq, '1', @id, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id2:=id from perm_functioninfo where fname = '房东活动管理';
select @seq2:=IFNULL((MAX(seq)+1),1) from perm_functioninfo where functionpId=@id2;
select @fcode2:= CONCAT('2',lpad(@id2,4,0),2 ) from perm_functioninfo where fname = '房东活动管理';
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode2, 'TP租房资质名单', 'landlordPower/landlordPowerList', @seq2, '2', @id2, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode2:=@fcode2+1, 'TP免押金资质名单', 'landlordPower/landlordPowerList?powerType=2', @seq2+1, '2', @id2, '1', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');


select @id3:=id from perm_functioninfo where fname = 'TP租房资质名单';
select @seq3:=IFNULL((MAX(seq)+1),1) from perm_functioninfo where functionpId=@id3;
select @fcode3:= CONCAT('3',lpad(@id3,4,0),2 ) from perm_functioninfo where fname = 'TP租房资质名单';
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode3, '导出功能', 'landlordPower/excelExport', @seq3, '3', @id3, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode3:=@fcode3+1, '编辑功能', 'landlordPower/editLandlordPower', @seq3+1, '3', @id3, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');

select @id4:=id from perm_functioninfo where fname = 'TP免押金资质名单';
select @seq4:=IFNULL((MAX(seq)+1),1) from perm_functioninfo where functionpId=@id4;
select @fcode4:= CONCAT('3',lpad(@id4,4,0),2 ) from perm_functioninfo where fname = 'TP免押金资质名单';
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode4, '导出功能', 'landlordPower/excelExport?powerType=2', @seq4, '3', @id4, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
INSERT INTO `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) VALUES (@fcode4:=@fcode4+1, '编辑功能', 'landlordPower/editLandlordPower', @seq4+1, '3', @id4, '0', NULL, NULL, NULL, '0', '1', NULL, NULL, NULL, NULL, '1', '2');
