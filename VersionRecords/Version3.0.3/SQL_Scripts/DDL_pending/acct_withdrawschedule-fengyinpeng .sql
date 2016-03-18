USE `acct`;
 
DROP TABLE IF EXISTS `acct_withdrawschedule`;
 
CREATE TABLE `acct_withdrawschedule` (
   `id` INT(11) NOT NULL AUTO_INCREMENT,
   `doneCode` INT(11) NOT NULL COMMENT '������ˮ��',
   `oprIndex` INT(11) NOT NULL DEFAULT '0' COMMENT '���ִ�����ͬһ��DoneCode���ܶ������',
   `createTime` DATETIME NOT NULL COMMENT '��ˮ����ʱ��',
   `updateTime` DATETIME DEFAULT NULL COMMENT '��ˮ����ʱ��',
   `amount` DECIMAL(10,2) NOT NULL COMMENT '�˿���',
   `status` INT(11) NOT NULL COMMENT '״̬(0:��Ч���� 1:��ʼ���� 2:�ύ���� 3:����֧��)',
   `userId` INT(11) NOT NULL COMMENT '�տ���ID',
   `userType` INT(11) NOT NULL COMMENT '�տ�������',
   `bankcardId` INT(11) NOT NULL COMMENT '���п�ID',
   `bankcardNumber` INT(11) NOT NULL COMMENT '���п�����',
   `payaccount` VARCHAR(45) DEFAULT NULL COMMENT '�����˺�',
   `busmod` VARCHAR(10) DEFAULT NULL COMMENT 'ҵ��ģʽ(ö�ٴ�����)',
   `yurref` VARCHAR(45) DEFAULT NULL COMMENT '������ˮ��',
   `dbtbbck` VARCHAR(10) DEFAULT NULL COMMENT '�����˺ſ����б���',
   `sqrnbr` VARCHAR(45) DEFAULT NULL COMMENT '��������ʱ��������ʾ�ڼ��ʼ�¼��',
   `reqsts` VARCHAR(20) DEFAULT NULL COMMENT '����״̬(AUT:�ȴ����� NTE:������� WCF:������ȷ�� BNK:���д����� FIN:��� ACK:�ȴ�ȷ�� APD:������ȷ�� OPR:���ݽ�����)',
   `rtnflg` VARCHAR(20) DEFAULT NULL COMMENT '���д���״̬(S:�ɹ�����֧���ɹ� F:ʧ������֧��ʧ�� B:��Ʊ����֧������Ʊ R:�����ҵ������� D:������ҵ���ڲ����� C:������ҵ���� M:�̻�������������֧�� V:�ܾ�ί�д�����ܾ�)',
   `oprals` VARCHAR(45) DEFAULT NULL COMMENT '����������ǰ���̲�������',
   `oprsqn` VARCHAR(45) DEFAULT NULL COMMENT '����������ǰ���̴������������',
   `reqrnbr` VARCHAR(45) DEFAULT NULL COMMENT '������������ʵ����',
   `reasonCode` VARCHAR(20) DEFAULT NULL COMMENT '���з��ؽ������',
   `reason` VARCHAR(45) DEFAULT NULL COMMENT '���з��ؽ��',
   PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;