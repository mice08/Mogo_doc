/*  Database name `mogoroomdb`  BS菜单 */
use mogoroomdb;
BEGIN;

/* 日志操作类型 */
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-1','bizd_biztype','1','1','录入','1',NULL,'bizd_biztype-1');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-2','bizd_biztype','2','2','审核','1',NULL,'bizd_biztype-2');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-3','bizd_biztype','3','3','封存','1',NULL,'bizd_biztype-3');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-4','bizd_biztype','4','4','释放','1',NULL,'bizd_biztype-4');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-5','bizd_biztype','5','5','分配','1',NULL,'bizd_biztype-5');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-6','bizd_biztype','6','6','跟进','1',NULL,'bizd_biztype-6');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_biztype-7','bizd_biztype','7','7','激活','1',NULL,'bizd_biztype-7');

/* 房东状态 */
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-1','bizd_landlordstatus','1','1','未面谈','1',NULL,'bizd_landlordstatus-1');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-2','bizd_landlordstatus','2','2','已面谈','1',NULL,'bizd_landlordstatus-2');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-3','bizd_landlordstatus','3','3','已申请签约','1',NULL,'bizd_landlordstatus-3');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-4','bizd_landlordstatus','4','4','经理审核不通过','1',NULL,'bizd_landlordstatus-4');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-5','bizd_landlordstatus','5','5','经理审核通过','1',NULL,'bizd_landlordstatus-5');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-6','bizd_landlordstatus','6','6','合规审核不通过','1',NULL,'bizd_landlordstatus-6');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-7','bizd_landlordstatus','7','7','已封存','1',NULL,'bizd_landlordstatus-7');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-8','bizd_landlordstatus','8','8','审核通过待录入','1',NULL,'bizd_landlordstatus-8');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-9','bizd_landlordstatus','9','9','已开通账号','1',NULL,'bizd_landlordstatus-9');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_landlordstatus-10','bizd_landlordstatus','10','10','已激活','1',NULL,'bizd_landlordstatus-10');

/* 经营年限 */
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_operatingperiod-1','bizd_operatingperiod','1','1','1-2年','1',NULL,'bizd_operatingperiod-1');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_operatingperiod-2','bizd_operatingperiod','2','2','3-5年','1',NULL,'bizd_operatingperiod-2');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_operatingperiod-3','bizd_operatingperiod','3','3','6-10年','1',NULL,'bizd_operatingperiod-3');
insert into `comm_dictionary` (`code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`, `enValue`) values('bizd_operatingperiod-4','bizd_operatingperiod','4','4','10年以上','1',NULL,'bizd_operatingperiod-4');

COMMIT;