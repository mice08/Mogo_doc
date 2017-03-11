/* Database name `mogoroomdb`，BS消息模版管理下子菜单调整 */

use mogoroomdb;

/* 租客消息二级菜单 */
/* 更新原菜单-消息修改记录- 为 -租客消息修改记录- */
update `perm_functioninfo` set `fname`='租客消息修改记录', `furl`='mesgTemp/editRenterTempLog' where `fcode`='232162';
/* 更新原菜单-消息发送记录- 为 -租客消息发送记录- */
update `perm_functioninfo` set `fname`='租客消息发送记录', `furl`='mesgTemp/sendRenterRecord' where `fcode`='232163';
/* 更新原菜单-消息模版列表- 为 -租客产品消息模版- */
update `perm_functioninfo` set `fname`='租客产品消息模板', `furl`='mesgTemp/renterMesgTempList' where `fcode`='232164';

/* 租客消息三级菜单 */
update `perm_functioninfo` set `fname`='启用/禁用租客消息子模板', `furl`='mesgTemp/enableOrDisableRenterSubTemp' where `fcode`='332241';
update `perm_functioninfo` set `fname`='启用禁用租客消息主模板', `furl`='mesgTemp/enableOrDisableRenterTemp' where `fcode`='332242';
update `perm_functioninfo` set `fname`='删除租客消息模板', `furl`='mesgTemp/delRenterTemp' where `fcode`='332243';
update `perm_functioninfo` set `fname`='添加租客消息模板', `furl`='mesgTemp/addRenterTemp' where `fcode`='332244';
update `perm_functioninfo` set `fname`='添加/编辑模板-保存租客消息模板', `furl`='mesgTemp/saveRenterTemp' where `fcode`='332245';
update `perm_functioninfo` set `fname`='添加/编辑模板-验证租客模板是否已存在', `furl`='mesgTemp/checkRenterMesgTempTitle' where `fcode`='332246';
update `perm_functioninfo` set `fname`='编辑租客消息模板', `furl`='mesgTemp/editRenterTemp' where `fcode`='332247';



/* 房东消息二级菜单 */
/* 插入新菜单-房东消息修改记录- */
insert into `perm_functioninfo` (`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values ('232165', '房东消息修改记录', 'mesgTemp/editLandlordTempLog', '5', '2', '3216', '1', '0', '0', now(), '1', '2');
/* 插入新菜单-房东消息发送记录- */
insert into `perm_functioninfo` (`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values ('232166', '房东消息发送记录', 'mesgTemp/sendLandlordRecord', '6', '2', '3216', '1', '0', '0', now(), '1', '2');

BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='perm_functioninfo');
/* 插入新菜单-房东产品消息模版- */
insert into `perm_functioninfo` (`id`,`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values (@i, '232167', '房东产品消息模版', 'mesgTemp/landlordMesgTempList', '7', '2', '3216', '1', '0', '0', now(), '1', '2');

/* 房东消息三级菜单 */
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'1'),'启用/禁用房东消息子模板','mesgTemp/enableOrDisableLandlordSubTemp','1','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'2'),'启用禁用房东消息主模板','mesgTemp/enableOrDisableLandlordTemp','2','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'3'),'删除房东消息模板','mesgTemp/delLandlordTemp','3','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'4'),'添加房东消息模板','mesgTemp/addLandlordTemp','4','3',@i,'1','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'5'),'添加/编辑模板-保存房东消息模板','mesgTemp/saveLandlordTemp','5','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'6'),'添加/编辑模板-验证房东模板是否已存在','mesgTemp/checkMesgLandlordTempTitle','6','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`) 
values(concat('3',@i,'7'),'编辑房东消息模板','mesgTemp/editLandlordTemp','7','3',@i,'1','0','0', now(), '1', '2');

COMMIT;
