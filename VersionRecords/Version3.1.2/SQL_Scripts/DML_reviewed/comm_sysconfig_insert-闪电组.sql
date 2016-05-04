use mogoroomdb;

/*����ƾ֤����*/
INSERT INTO `comm_sysconfig` (`keyName`, `val`, `groupName`, `name`, `remark`, `updateTime`, `updateByType`, `updateBy`, `extra1`, `extra2`) VALUES ('dingTalkSecret', '{\"corpid\":\"ding399e31fa233bfe45\",\"corpsecret\":\"-JadGGf4pLUWF9UUspxlHhxdydXUBNli8mznuduSJJNPDD-O-eS6Y16IdKqmnHYQ\"}', NULL, '������ҵ����', NULL, now(), 5, 1, NULL, NULL);
/**��ʼ����λ���**/
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('����','manager',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('��ͨԱ��','employee',1,5,1,5,now(),1,5,now());
INSERT INTO `orga_position` (`positionName`,`positionCode`,`status`,`positionType`,`createBy`,`createByType`,`createTime`,`updateBy`,`updateByType`,`updateTime`) VALUES ('��չԱ','sales',1,5,1,5,now(),1,5,now());

