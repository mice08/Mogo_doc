/* Database name `mogoroomdb`
������ٷ�Դ�����ñ���һ��Ϊ����ʹ�ã��ڶ���Ϊbsҳ���ѯʹ�ã�������������ɶ�ʱ��ά��
�ڶ���������ݲ����ֶ���bsҳ��ά�� */

USE mogoroomdb;

DROP TABLE IF EXISTS `risk_communityBase`;
CREATE TABLE `risk_communityBase` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `createDate` date DEFAULT NULL COMMENT '����ʱ��,��ȷ����',
  `communityId` int(11) DEFAULT NULL COMMENT 'С��id',
  `avgArea` int(4) DEFAULT NULL COMMENT '��Դƽ�����',
  `avgPrice` int(4) DEFAULT NULL COMMENT '��Դƽ���ۼ�',
  `unitPrice` int(6) DEFAULT NULL COMMENT '��Դÿƽ��ƽ������',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��,��¼ϵͳ�������ݵ�ʱ��',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='��Դ���ջ�׼��Ϣ';

DROP TABLE IF EXISTS `risk_roomDetail`;
CREATE TABLE `risk_roomDetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roomId` int(11) DEFAULT NULL COMMENT '����id',
  `riskCode` varchar(25) DEFAULT NULL COMMENT '��Դ���ձ���(�ο��ֵ������:riskCode)',
  `status` tinyint(1) DEFAULT '0' COMMENT '����״̬(0:δ���� 1:�Ѵ���)',
  `valid` tinyint(1) DEFAULT '1' COMMENT '�Ƿ���Ч(1:��Ч 0:��Ч)',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `handleTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `employeeId` int(11) DEFAULT NULL COMMENT '������id,Ա��id',
  `soDoneCode` int(32) DEFAULT NULL COMMENT '������ˮ��',
  `punishType` varchar(25) DEFAULT NULL COMMENT '�ͷ�����(�ο��ֵ������:punishType)',
  `punishDegree` varchar(25) DEFAULT NULL COMMENT '�ͷ��̶�(�ο��ֵ������:punishDegree)',
  `userMemo` varchar(255) DEFAULT NULL COMMENT '�����˱�ע',
  `remark` varchar(255) DEFAULT NULL COMMENT 'ϵͳ��ע',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`),
  KEY `soDoneCode` (`soDoneCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='���շ�Դ��Ϣ';
 