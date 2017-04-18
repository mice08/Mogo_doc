/* Database name `mogoroomdb`， 房源排序找房数据埋点配置--- 回滚SQL */

use mogoroomdb;

/* 影响2行 */
delete `comm_sysconfig` where `keyName`='find_room_record_switch';

delete `comm_sysconfig` where `keyName`='find_room_record_url';