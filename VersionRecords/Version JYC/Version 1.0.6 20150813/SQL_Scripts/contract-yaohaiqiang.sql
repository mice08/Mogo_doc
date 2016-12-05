
CREATE TABLE `orde_signedOrder_landlord` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ͬ�������ù�ϵ��',
  `signId` int(11) DEFAULT NULL COMMENT '��ͬid',
  `landlordFeeId` int(11) DEFAULT NULL COMMENT '��������id',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `status` tinyint(4) DEFAULT '0' COMMENT 'Ĭ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `orde_landlordFee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '�����е�����id',
  `name` varchar(64) DEFAULT NULL COMMENT '�е���������',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `status` tinyint(4) DEFAULT '0' COMMENT '�Ƿ���Ч��Ĭ��0��Ч1��Ч',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `orde_landlordFee` */

insert  into `orde_landlordFee`(`id`,`name`,`createTime`,`status`) values (1,'ˮ��','2015-08-10 09:25:00',0),(2,'���','2015-08-10 09:25:06',0),(3,'ú����','2015-08-10 09:25:15',0),(4,'���ߵ��ӷ�','2015-08-10 09:51:42',0),(5,'��������','2015-08-10 09:51:49',0),(6,'��ҵ�����','2015-08-10 09:51:56',0),(7,'������ʩά�޷ѣ���Ϊʹ�ò������⣩','2015-08-10 09:52:02',0),(8,'�����','2015-08-10 09:52:08',0),(9,'ů����','2015-08-10 09:52:13',0);
