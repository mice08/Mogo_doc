/* Database name `mogo_da`�� ����û���¼����ͳ�ƽ����ʱ�洢�� */
USE mogo_da;

DROP TABLE IF EXISTS user_logintotal_daily;

CREATE TABLE `user_logintotal_daily` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `userid` INT(11) DEFAULT NULL COMMENT '�û�id',
  `userType` INT(11) DEFAULT NULL COMMENT '�û�����,�ο�(groupName=userType)����������˺ŵ�¼�˴���¼����id',
  `loginCount` INT(11) DEFAULT NULL COMMENT 'ÿ��ĵ�¼ͳ��',
  `lastActiveTime` DATETIME DEFAULT NULL COMMENT '�����û�����Ծʱ��',
  `lastActiveChannel` INT(11) DEFAULT NULL COMMENT '����Ծ����,�ο�(groupName=channel)',
  `lastActiveUserType` INT(11) DEFAULT NULL COMMENT '��������Ծ����������,�ο�(groupName=userType)',
  `loginDate` DATE DEFAULT NULL COMMENT '��¼ʱ��',
  PRIMARY KEY (`id`),
  KEY `user_id_type` (`userid`,`userType`),
  KEY `loginDate` (`loginDate`)
) ENGINE=INNODB COMMENT='�û���¼����ͳ�ƽ����ʱ�洢��ÿ�������������'