CREATE TABLE `user_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id��',
  `loginAccount` varchar(100) NOT NULL COMMENT '��¼��',
  `loginType` int(11) NOT NULL COMMENT '��¼����(1:��� 2:����)',
  `url` varchar(100) DEFAULT NULL COMMENT '���ʵ�ַ',
  `accessType` varchar(20) DEFAULT NULL COMMENT '��������',
  `browser` varchar(100) DEFAULT NULL COMMENT '�����',
  `clientIp` varchar(32) DEFAULT NULL COMMENT '�ͻ���IP',
  `terminalId` varchar(100) DEFAULT NULL COMMENT '�ն˱��',
  `terminalType` varchar(100) DEFAULT NULL COMMENT '�ն�����(1:�ֻ�APP 2:PC�����)',
  `loginStatus` int(11) DEFAULT NULL COMMENT '��¼״̬(2001:�ɹ� 300101:�û��������� 300102:�ֻ��Ų����� 300103:������� 300104:ϵͳ����)',
  `accessResult` varchar(20) DEFAULT NULL COMMENT '���ʽ��',
  `accessTime` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='�û���¼��־'

