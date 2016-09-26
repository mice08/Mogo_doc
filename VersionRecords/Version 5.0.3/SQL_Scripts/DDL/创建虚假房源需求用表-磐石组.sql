/* Database name `mogoroomdb`
������ٷ�Դ�����ñ���һ��Ϊ����ʹ�ã��ڶ���Ϊbsҳ���ѯʹ�ã�������������ɶ�ʱ��ά��
�ڶ���������ݲ����ֶ���bsҳ��ά�� */

USE mogoroomdb;

DROP TABLE IF EXISTS `risk_communityBase`;
CREATE TABLE `risk_communityBase` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` DATE DEFAULT NULL COMMENT '����ʱ��,��ȷ����',
  `communityId` INT(11) DEFAULT NULL COMMENT 'С��id',
  `avgArea` INT(4) DEFAULT NULL COMMENT '��Դƽ�����',
  `avgPrice` INT(4) DEFAULT NULL COMMENT '��Դƽ���ۼ�',
  `unitPrice` INT(6) DEFAULT NULL COMMENT '��Դÿƽ��ƽ������',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��,��¼ϵͳ�������ݵ�ʱ��',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='��Դ���ջ�׼��Ϣ'

DROP TABLE IF EXISTS `risk_roomDetail`;
CREATE TABLE `risk_roomDetail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `commBaseId` INT(11) DEFAULT NULL COMMENT 'С����׼��Ϣid',
  `roomId` INT(11) DEFAULT NULL COMMENT '����id',
  `riskCode` VARCHAR(25) DEFAULT NULL COMMENT '��Դ���ձ���(�ο��ֵ������:riskCode)',
  `status` TINYINT(1) DEFAULT '0' COMMENT '����״̬(0:δ���� 1:�Ѵ���)',
  `valid` TINYINT(1) DEFAULT '1' COMMENT '�Ƿ���Ч(1:��Ч 0:��Ч)',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `handleTime` DATETIME DEFAULT NULL COMMENT '����ʱ��',
  `employeeId` INT(11) DEFAULT NULL COMMENT '������id,Ա��id',
  `soDoneCode` INT(32) DEFAULT NULL COMMENT '������ˮ��',
  `punishType` VARCHAR(25) DEFAULT NULL COMMENT '�ͷ�����(�ο��ֵ������:punishType)',
  `punishDegree` VARCHAR(25) DEFAULT NULL COMMENT '�ͷ��̶�(�ο��ֵ������:punishDegree)',
  `userMemo` VARCHAR(255) DEFAULT NULL COMMENT '�����˱�ע',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT 'ϵͳ��ע',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `soDoneCode` (`soDoneCode`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='���շ�Դ��Ϣ';