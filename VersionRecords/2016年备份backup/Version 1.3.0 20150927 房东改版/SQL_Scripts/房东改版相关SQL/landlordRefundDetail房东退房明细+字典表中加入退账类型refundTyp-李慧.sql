CREATE TABLE `supp_landlordRefundDetail` (  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����',  `landlordRefundRecordId` int(11) NOT NULL COMMENT '���˼�¼',  `amount` decimal(10,2) NOT NULL COMMENT '���',  `refundType` varchar(20) NOT NULL COMMENT '��������',  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',  `status` int(11) NOT NULL DEFAULT '1' COMMENT '״̬',  PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
#�ֵ���м�����������refundType
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-1','refundType','1','1','Ѻ��','1',NULL);
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-2','refundType','2','2','���','1',NULL);
insert into `comm_dictionary` ( `code`, `groupName`, `sort`, `keyPro`, `value`, `status`, `fcode`) values('refundType-3','refundType','3','3','����','1',NULL);
