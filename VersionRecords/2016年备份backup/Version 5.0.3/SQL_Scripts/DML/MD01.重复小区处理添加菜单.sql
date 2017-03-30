use mogoroomdb;

/* 小区合并功能添加菜单 */
SELECT @pid := id FROM perm_functioninfo WHERE furl = 'community/findCommunitiesByFeature';
SELECT @maxSeq := MAX(seq) FROM perm_functioninfo WHERE functionpId = @pid;
SELECT @maxFcode := CONVERT(MAX(fcode),SIGNED) FROM perm_functioninfo WHERE functionpId = @pid;

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) values(@maxFcode+1,'删除小区或大楼','community/deleteCommunity',@maxSeq+1,'3',@pid,'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) values(@maxFcode+2,'小区大楼合并','community/mergeCommunity',@maxSeq+2,'3',@pid,'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) values(@maxFcode+3,'关联房东','community/findCommunityRelLandLord',@maxSeq+3,'3',@pid,'1',NULL,NULL,NULL,'1','1',NULL,NULL,NULL,NULL,'1','2');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) values(@maxFcode+4,'解除房东关系','community/breakRealtion',@maxSeq+4,'3',@pid,'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `functionVcode`, `functionParam`, `functionFaclass`, `isAjax`, `functionType`, `createdBy`, `createdTime`, `updatedBy`, `updatedTime`, `status`, `channel`) values(@maxFcode+5,'修改小区地址','community/updateCommAddress',@maxSeq+5,'3',@pid,'0',NULL,NULL,NULL,'1','0',NULL,NULL,NULL,NULL,'1','2');
