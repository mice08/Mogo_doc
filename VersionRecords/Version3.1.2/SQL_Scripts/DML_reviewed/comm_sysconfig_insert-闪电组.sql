use mogoroomdb;

/*钉钉凭证参数*/
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) VALUES ('dingTalkSecret', '{\"corpid\":\"ding38dbe9c6e5a95973\",\"corpsecret\":\"oFBoqCsW6rUyaSWfMWuFzDMbqMdcWkzsZ3LDVZD2v7XdVnBpK_zds9B5kr-XgVRx\"}', NULL, '钉钉企业参数', NULL, now(), 5, 1, NULL, NULL);
/**初始化岗位数据**/
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('经理','manager',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('普通员工','employee',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('拓展员','sales',1,5,1,5,now(),1,5,now());

