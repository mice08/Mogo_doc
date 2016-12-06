/* Database name `mogoroomdb`�� ���app �汾����� */
USE mogoroomdb;

DROP TABLE IF EXISTS comm_app_version_manage;

CREATE TABLE `comm_app_version_manage` (
  `id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '����Id',
  `apptype` TINYINT (2) NOT NULL COMMENT 'app���ͣ�1:IOS��ҵ��, 2:IOS�г���,  3:��׿�г��棩',
  `channel` INT (2) NOT NULL COMMENT 'ϵͳ����',
  `stafftype` INT (1) NOT NULL DEFAULT '1' COMMENT '�û����� (1:��ʽ�û���2:������Ա��',
  `lowestVersion` VARCHAR (36) NOT NULL COMMENT '��Ͱ汾Ҫ��-��ʽ�û�',
  `latestVersion` VARCHAR (36) NOT NULL COMMENT '���°汾-��ʽ�û�',
  `updateDesc` VARCHAR (256) NOT NULL COMMENT '��������',
  `downloadUrl` VARCHAR (256) NOT NULL COMMENT '��������',
  `createBy` INT (11) NOT NULL COMMENT '������Id',
  `createByType` TINYINT (2) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `valid` INT (1) NOT NULL DEFAULT '1' COMMENT '�߼�ɾ����־ (1:δɾ��, 0:ɾ��)',
  PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = 'app�汾�����' ;