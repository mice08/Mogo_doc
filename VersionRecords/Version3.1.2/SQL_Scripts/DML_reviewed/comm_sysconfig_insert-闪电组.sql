use mogoroomdb;

/*����ƾ֤����*/
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) VALUES ('dingTalkSecret', '{\"corpid\":\"ding38dbe9c6e5a95973\",\"corpsecret\":\"oFBoqCsW6rUyaSWfMWuFzDMbqMdcWkzsZ3LDVZD2v7XdVnBpK_zds9B5kr-XgVRx\"}', NULL, '������ҵ����', NULL, now(), 5, 1, NULL, NULL);
/**��ʼ����λ����**/
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('����','manager',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('��ͨԱ��','employee',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('��չԱ','sales',1,5,1,5,now(),1,5,now());

