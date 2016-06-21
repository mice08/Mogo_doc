/* Database name `mogo_da`�� ����û���¼����ͳ�ƽ����ʱ�洢�� */
USE mogo_da;
CREATE TABLE `user_logintotal_inc` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `userid` INT(11) DEFAULT NULL COMMENT '�û�id',
  `userType` INT(11) DEFAULT NULL COMMENT '�û�����',
  `loginCount` INT(11) DEFAULT NULL COMMENT 'ÿ��ĵ�¼ͳ��',
  `lastActiveTime` DATE DEFAULT NULL COMMENT '�����û�����Ծʱ��',
  `loginDate` DATE DEFAULT NULL COMMENT '��¼����',
  PRIMARY KEY (`id`),
  INDEX `user_id_type` (`userid`,`userType`),
  INDEX `loginDate` (`loginDate`)
) ENGINE=INNODB COMMENT '�û���¼����ͳ�ƽ����ʱ�洢��ÿ�������������';