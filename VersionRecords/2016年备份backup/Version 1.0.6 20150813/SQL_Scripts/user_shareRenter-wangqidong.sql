DROP TABLE IF EXISTS `user_shareRenter`;

CREATE TABLE `user_shareRenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `idCard` varchar(50) NOT NULL COMMENT '֤������',
  `phoneNumber` varchar(120) NOT NULL COMMENT '��ַ',
  `realName` varchar(30) NOT NULL COMMENT '����',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `createby` int(11) DEFAULT NULL COMMENT '������',
  `remark` varchar(120) DEFAULT NULL COMMENT '��ע',
  `saleContractId` int(11) DEFAULT NULL COMMENT '��ͬid',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='���ۺ�ͬ��ס�˱�'