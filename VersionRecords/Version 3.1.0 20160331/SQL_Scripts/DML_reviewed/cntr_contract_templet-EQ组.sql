/* Database name `mogoroomdb` ，合同模板初始化 */
use mogoroomdb;

delete from `cntr_contract_templet`;

insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('289',NULL,'51','纸质合同模板','zzht001','/var/lib/docker/contract/template/zzht.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');
insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('131',NULL,'51','纸质合同模板','zzht001','/var/lib/docker/contract/template/zzht.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');
insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('340',NULL,'51','纸质合同模板','zzht001','/var/lib/docker/contract/template/zzht.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');
insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('289',NULL,'52','转客合同模板','zkht001','/var/lib/docker/contract/template/zk.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');
insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('131',NULL,'52','转客合同模板','zkht001','/var/lib/docker/contract/template/zk.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');
insert into `cntr_contract_templet` (`cityId`, `landlordId`, `rentType`, `templetName`, `templetCode`, `templetPath`, `status`, `createTime`, `createBy`, `createByType`, `updateTime`, `updateBy`, `updateByType`, `lang`) values('340',NULL,'52','转客合同模板','zkht001','/var/lib/docker/contract/template/zk.vm','1',NOW(),'1','1',NULL,NULL,NULL,'1');

