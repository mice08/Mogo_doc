/*�½��ؼ�������ҳ-���б�ÿ�ռ�¼ȫ����ͳ��*/
USE mogoroomdb;

CREATE TABLE `repo_alldetail_city` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `createDate` DATE DEFAULT NULL COMMENT '����ʱ��',
  `cityId` INT(11) DEFAULT NULL COMMENT '����id',
  `cityName` VARCHAR(25) DEFAULT NULL COMMENT '��������',
  `landlordNum` INT(11) DEFAULT NULL COMMENT '����ǩԼ����',
  `roomNum` INT(11) DEFAULT NULL COMMENT '��Դ¼����',
  `signNum` INT(11) DEFAULT NULL COMMENT '��Լ¼����',
  `offlinePayNum` INT(11) DEFAULT NULL COMMENT '����֧������',
  `onlinePayNum` INT(11) DEFAULT NULL COMMENT '����֧������',
  `offlinePayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '����֧�����',
  `onlinePayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '����֧�����',
  PRIMARY KEY (`id`),
  KEY `cityId` (`cityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='�ؼ�������ҳ-����'