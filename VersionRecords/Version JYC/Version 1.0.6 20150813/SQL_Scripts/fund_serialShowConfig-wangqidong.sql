/*1.����˳��ִ�У���Ϊ��һ��*/
DROP TABLE IF EXISTS `fund_serialShowConfig`;

CREATE TABLE `fund_serialShowConfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `showName` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'չʾ����',
  `showType` int(11) DEFAULT NULL COMMENT 'չʾ����',
  `businessType` int(11) DEFAULT NULL COMMENT 'ҵ������',
  `fundType` int(11) DEFAULT NULL COMMENT '�ʽ�����',
  `fundSourceType` int(11) DEFAULT NULL COMMENT '�ʽ���Դ',
  `plusMinus` int(11) DEFAULT NULL COMMENT '�������(0 �� 1 ��)',
  `ifShow` int(1) DEFAULT '1' COMMENT '�Ƿ���ʾ(1����ʾ 2������ʾ)',
  `remark` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '��ע',
  `showPlus` int(11) DEFAULT NULL COMMENT '��ʾ�������(0 �� 1 ��)',
  `description` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT '����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='������ˮ���ñ�'

/*2. insert Ϊ�ڶ���*/
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('3','��ͽ��׼�¼','1','211002','1001','0','1','1','֧������ - ����','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('4','��ͽ��׼�¼','1','211002','1002','0','0','1','֧������ - ���','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('5','��ͽ��׼�¼','1','216002','1003','1001','0','1','֧�����ڿ� - ����','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('6','��ͽ��׼�¼','1','216002','1002','0','0','1','֧�����ڿ� - ���','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('7','��ͽ��׼�¼','1','216003','1003','1001','0','1','֧������� - ����','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('8','��ͽ��׼�¼','1','216003','1002','0','0','1','֧������� - ���','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('9','��ͽ��׼�¼','1','216004','1003','1001','0','1','֧��ˮ��ú - ����','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('10','��ͽ��׼�¼','1','216004','1002','0','0','1','֧��ˮ��ú - ���','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('11','��ͽ��׼�¼','1','224001','1002','1001','1','1','��ͳ�ֵ','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('12','��ͽ��׼�¼','1','215001','1002','0','0','1','�������','0',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('13','��ͽ��׼�¼','1','3007','1002','0','1','1','ְҵ������Ѻ��','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('14','��ͽ��׼�¼','1','3008','1002','0','1','1','ְҵ�����˶��� - ���','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('15','��ͽ��׼�¼','1','3009','1002','0','1','1','ְҵ������ΥԼ��','1',NULL);
insert into `fund_serialShowConfig` (`id`, `showName`, `showType`, `businessType`, `fundType`, `fundSourceType`, `plusMinus`, `ifShow`, `remark`, `showPlus`, `description`) values('16','��ͽ��׼�¼','1','3008','1001','0','0','1','ְҵ�����˶��� - ����','1',NULL);
