use mogoroomdb;

/*初始化钉钉参数*/
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) VALUES ('dingTalkSecret', '{\"corpid\":\"ding399e31fa233bfe45\",\"corpsecret\":\"-JadGGf4pLUWF9UUspxlHhxdydXUBNli8mznuduSJJNPDD-O-eS6Y16IdKqmnHYQ\"}', NULL, '钉钉配置参数', NULL, now(), 5, 1, NULL, NULL);
/**初始化岗位信息**/
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('经理','manager',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('普通员工','employee',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('拓展员','sales',1,5,1,5,now(),1,5,now());

