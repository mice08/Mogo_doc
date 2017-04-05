DROP TABLE IF EXISTS `bill_account_mapping`;
CREATE TABLE `bill_account_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '֧��������',
  `payOrderNo` VARCHAR(32) NOT NULL COMMENT 'ͳһ֧��������',
  `billId` int(11) DEFAULT NULL COMMENT '����ϵͳ�˵���',
  `billStatus` int(1) DEFAULT NULL COMMENT '�˵�״̬ 0��δ֧����1����֧��',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '�˵����',
  `amountPaid` decimal(10,0) DEFAULT NULL COMMENT '�˵��Ѹ����',
  `accountId` int(11) DEFAULT NULL COMMENT '�˵������˺�',
  `toAcccountId` int(11) DEFAULT NULL COMMENT '�˵��տ��˺�',
  `updateTime` datetime DEFAULT NULL COMMENT '�˵�����ʱ��',
  `orderType` int(1) DEFAULT NULL COMMENT '��������',
  `orderId` int(11) DEFAULT NULL COMMENT '������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����/�˵���Ӧ��';

