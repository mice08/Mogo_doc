/* Database name `mogoroomdb`�� ����û���¼����ͳ�ƽ����ʱ�洢�� */
USE mogoroomdb;

DROP TABLE IF EXISTS repo_logintotal_daily;

CREATE TABLE `repo_logintotal_daily` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `userid` INT(11) DEFAULT NULL COMMENT '�û�id',
  `userType` INT(11) DEFAULT NULL COMMENT '�û�����,�ο�(groupName=userType)����������˺ŵ�¼�˴���¼����id',
  `PCLoginCount` INT(11) DEFAULT NULL COMMENT 'pcÿ�յ�¼ͳ��',
  `APPLoginCount` INT(11) DEFAULT NULL COMMENT 'appÿ�յ�¼ͳ��',
  `lastActiveTime` DATETIME DEFAULT NULL COMMENT '�����û�����Ծʱ��',
  `lastActiveChannel` INT(11) DEFAULT NULL COMMENT '����Ծ����,�ο�(groupName=channel)',
  `lastActiveUserType` INT(11) DEFAULT NULL COMMENT '��������Ծ���û�����,�ο�(groupName=userType)',
  `loginDate` DATE DEFAULT NULL COMMENT '��¼����',
  PRIMARY KEY (`id`),
  KEY `user_id_type` (`userid`,`userType`),
  KEY `loginDate` (`loginDate`)
) ENGINE=INNODB COMMENT='�û���¼����ͳ�ƽ����ʱ�洢��ÿ�������������'