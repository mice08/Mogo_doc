/* Database name `mogoroomdb` ������ٷ�Դ�����ñ���һ��Ϊ����ʹ�ã��ڶ���Ϊbsҳ���ѯʹ�ã�������������ɶ�ʱ��ά�� �ڶ���������ݲ����ֶ���bsҳ��ά�� */

use mogoroomdb;

CREATE TABLE `flat_riskbase` (
  `id` INT(11) NOT NULL COMMENT 'id',
  `communityId` INT(11) DEFAULT NULL COMMENT 'С��id',
  `avgArea` INT(4) DEFAULT NULL COMMENT '��Դƽ�����',
  `avgPrice` INT(6) DEFAULT NULL COMMENT '��Դƽ���ۼ�',
  `unitPrice` INT(6) DEFAULT NULL COMMENT '��Դÿƽ��ƽ������',
  `createTime` DATE DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `communityId` (`communityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '��Դ���ջ�׼��Ϣ';


CREATE TABLE `flat_riskdetail` (
  `id` INT(11) NOT NULL COMMENT 'id',
  `roomId` INT(11) DEFAULT NULL COMMENT '����id',
  `riskNum` VARCHAR(25) DEFAULT NULL COMMENT '��Դ���ձ���',
  `status` TINYINT(1) DEFAULT '0' COMMENT '����״̬(0:δ���� 1:ͨ�� 2:�ͷ� )',
  `createTime` DATE DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `handleTime` DATETIME DEFAULT NULL COMMENT '����ʱ��',
  `handleBy` INT(11) DEFAULT NULL COMMENT '������',
  PRIMARY KEY (`id`),
  KEY `roomId` (`roomId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '���շ�Դ��Ϣ';