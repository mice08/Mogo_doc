/* Database name `mogo_da`�� ����û�������־��¼�� */
USE mogo_da;

CREATE TABLE `user_accesslog` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `userId` INT(11) DEFAULT NULL COMMENT '�û�id��user_info����',
  `userType` INT(11) DEFAULT NULL COMMENT '�û�����(�ο�groupName=userType)',
  `url` VARCHAR(25) DEFAULT NULL COMMENT '���ʵ�ַ',
  `sessionId` VARCHAR(45) DEFAULT NULL COMMENT '�ỰΨһ��ʶ',
  `clientIp` VARCHAR(15) DEFAULT NULL COMMENT '�ͻ���IP',
  `channel` VARCHAR(25) DEFAULT NULL COMMENT '��������(�ο�groupName=channel)',
  `accessTime` DATETIME DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `userid` (`userId`)
) ENGINE=INNODB COMMENT='�û�������־��¼';
