/* Database name `mogoroomdb`,  房源排序数据埋点系统配置 */

use mogoroomdb;

insert into `comm_sysconfig`(`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`)
values ('find_room_record_switch', '1', 'FIND_ROOM_RECORD_LOG', '列表找房查询记录开关', '', now(), 9, 0);

insert into `comm_sysconfig`(`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`)
values ('find_room_record_url', 'http://172.16.1.63/api/useraction/add?accessToken=578b3ef014fd51e7b4c21cb72cb072fa', 
'FIND_ROOM_RECORD_LOG', '列表找房查询记录URL', '', now(), 9, 0);