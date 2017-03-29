/* Database name `mogoroomdb`，BS消息模板管理下子菜单调整 */

use mogoroomdb;

/* 租客消息二级菜单 */
/* 更新原菜单-消息修改记录- 为 -租客消息修改记录- */
update `perm_functioninfo` set `fname`='租客消息修改记录', `furl`='mesgTemp/editRenterTempLog' where `fname`='消息修改记录' and `furl`='mesgTemp/editTempLog';
/* 更新原菜单-消息发送记录- 为 -租客消息发送记录- */
update `perm_functioninfo` set `fname`='租客消息发送记录', `furl`='mesgTemp/sendRenterRecord' where `fname`='消息发送记录' and `furl`='esgTemp/sendRecord';
/* 更新原菜单-消息模板列表- 为 -租客产品消息模板- */
update `perm_functioninfo` set `fname`='租客产品消息模板', `furl`='mesgTemp/renterMesgTempList' where `fname`='消息模板列表' and `furl`='mesgTemp/mesgTempList';

/* 租客消息三级菜单 */
update `perm_functioninfo` set `fname`='启用/禁用租客消息子模板', `furl`='mesgTemp/enableOrDisableRenterSubTemp' where `fname`='启用/禁用消息子模板' and `furl`='mesgTemp/enableOrDisableSubTemp';
update `perm_functioninfo` set `fname`='启用禁用租客消息主模板', `furl`='mesgTemp/enableOrDisableRenterTemp' where `fname`='启用禁用消息主模板' and `furl`='mesgTemp/enableOrDisableTemp';
update `perm_functioninfo` set `fname`='删除租客消息模板', `furl`='mesgTemp/delRenterTemp' where `fname`='删除消息模板' and `furl`='mesgTemp/delTemp';
update `perm_functioninfo` set `fname`='添加租客消息模板', `furl`='mesgTemp/addRenterTemp' where `fname`='添加消息模板' and `furl`='mesgTemp/addTemp';
update `perm_functioninfo` set `fname`='添加/编辑模板-保存租客消息模板', `furl`='mesgTemp/saveRenterTemp' where `fname`='添加/编辑模板-保存消息模板' and `furl`='mesgTemp/saveTemp';
update `perm_functioninfo` set `fname`='添加/编辑模板-验证租客模板是否已存在', `furl`='mesgTemp/checkRenterMesgTempTitle' where `fname`='添加/编辑模板-验证模板是否已存在' and `furl`='mesgTemp/checkMesgTempTitle';
update `perm_functioninfo` set `fname`='编辑租客消息模板', `furl`='mesgTemp/editRenterTemp' where `fname`='编辑消息模板' and `furl`='mesgTemp/editTemp';


BEGIN;

SET @pid = (SELECT id FROM perm_functioninfo WHERE fname = '消息模板管理' AND status = 1);

/* 房东消息二级菜单 */
/* 插入新菜单-房东消息修改记录- */
insert into `perm_functioninfo` (`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values (concat('2',@pid,'5'), '房东消息修改记录', 'mesgTemp/editLandlordTempLog', '5', '2', @pid, '1', '0', '0', now(), '1', '2');
/* 插入新菜单-房东消息发送记录- */
insert into `perm_functioninfo` (`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values (concat('2',@pid,'6'), '房东消息发送记录', 'mesgTemp/sendLandlordRecord', '6', '2', @pid, '1', '0', '0', now(), '1', '2');

COMMIT;


/* BS消息模板管理下增加子菜单：房东产品消息模板  */
BEGIN;

SET @pid = (SELECT id FROM perm_functioninfo WHERE fname = '消息模板管理' AND status = 1);
SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='perm_functioninfo');
/* 插入新菜单-房东产品消息模板- */
insert into `perm_functioninfo` (`id`,`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values (@i, concat('2',@pid,'7'), '房东产品消息模板', 'mesgTemp/landlordMesgTempList', '7', '2', @pid, '1', '0', '0', now(), '1', '2');

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