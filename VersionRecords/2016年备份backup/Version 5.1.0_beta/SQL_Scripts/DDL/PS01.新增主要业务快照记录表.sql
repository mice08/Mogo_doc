/* Database name `mogoroomdb`�� ������Ҫҵ����ռ�¼�� */
use mogoroomdb;
DROP TABLE IF EXISTS repo_alldetail;
CREATE TABLE `repo_alldetail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `landlordId` INT(11) DEFAULT NULL COMMENT '����id',
  `recordDate` DATE DEFAULT NULL COMMENT '���ռ�¼ʱ��',
  `entireRentRoomNum` INT(11) DEFAULT NULL COMMENT '���ⷿ����',
  `flatShareRoomNum` INT(11) DEFAULT NULL COMMENT '���ⷿ����',
  `centralizedRoomNum` INT(11) DEFAULT NULL COMMENT '����ʽ������',
  `decentralizedFlatNum` INT(11) DEFAULT NULL COMMENT '��ɢʽ��Ԣ��',
  `centralizedFlatNum` INT(11) DEFAULT NULL COMMENT '����ʽ��Ԣ��',
  `onlineSignNum` INT(11) DEFAULT NULL COMMENT '����ǩԼ����',
  `offlineSignNum` INT(11) DEFAULT NULL COMMENT '��¼ǩԼ����',
  `onlinePayRentNum` INT(11) DEFAULT NULL COMMENT '����֧��������',
  `onlinePayRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '����֧�������',
  `offlinePayRentNum` INT(11) DEFAULT NULL COMMENT '����֧��������',
  `offlinePayRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '����֧�������',
  `onlineCustomRentNum` INT(11) DEFAULT NULL COMMENT '�����Զ������֧������',
  `onlineCustomRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '�����Զ������֧�����',
  `offlineCustomeRentNum` INT(11) DEFAULT NULL COMMENT '�����Զ������֧������',
  `offlineCustomeRentAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '�����Զ������֧�����',
  `onlineOtherRentPayNum` INT(11) DEFAULT NULL COMMENT '�����������֧������',
  `onlineOtherRentPayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '�����������֧�����',
  `offlineOtherRentPayNum` INT(11) DEFAULT NULL COMMENT '�����������֧������',
  `offlineOtherRentPayAmount` DECIMAL(11,2) DEFAULT NULL COMMENT '�����������֧�����',
  PRIMARY KEY (`id`),
  KEY(landlordId),
  KEY(recordDate)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT '��Ҫҵ����ռ�¼��';