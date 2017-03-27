/* Database name `mogoroomdb`，运营消息管理-菜单及权限初始化 */

use mogoroomdb;

BEGIN;

SET @i = (SELECT AUTO_INCREMENT FROM information_schema.`TABLES` WHERE TABLE_SCHEMA= 'mogoroomdb' AND TABLE_NAME='perm_functioninfo');
/* 插入新菜单-运营消息管理- */
insert into `perm_functioninfo` (`id`,`fcode`,`fname`,`furl`,`seq`,`functionLevel`,`functionPid`,`functionisMenu`,`isAjax`,`functionType`,`createdTime`,`status`,`channel`)
values (@i, '232168', '运营消息管理', 'msg/findOperMesg', '8', '2', '3216', '1', '0', '0', now(), '1', '2');

/* 插入新菜单-运营消息管理下权限 */
insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'1'),'审核消息','msg/operOperMesgWithAudit','1','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'2'),'取消消息','msg/operOperMesgWithCancel','2','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'3'),'删除消息','msg/operOperMesgWithDel','3','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'4'),'导出消息','msg/exportOperMesg','4','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'5'),'查看消息详情','msg/viewOperMesg','5','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'6'),'查看用户明细','msg/userReadDetailList','6','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'7'),'导出用户明细','msg/exportUserReadDetail','7','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'8'),'查看操作日志','msg/operateMesgUpdateLog','8','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'9'),'新建消息','msg/addOperMesgInit','9','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'10'),'保存新建消息','msg/addOperMesg','10','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'11'),'编辑消息','msg/editOperMesgInit','11','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'12'),'保存编辑消息','msg/editOperMesg','12','3',@i,'0','0','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'13'),'导入推送人员','msg/importPushUsers','13','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'14'),'确认导入推送人员','msg/confirmImport','14','3',@i,'0','1','0', now(), '1', '2');

insert into `perm_functioninfo` (`fcode`, `fname`, `furl`, `seq`, `functionLevel`, `functionpId`, `functionisMenu`, `isAjax`, `functionType`, `createdTime`, `status`, `channel`)
values(concat('3',@i,'15'),'发送预览','msg/preSend','15','3',@i,'0','1','0', now(), '1', '2');

COMMIT;
