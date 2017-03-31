/*  Database name `mogoroomdb`  ���ӷ����¸�ת������*/
USE mogoroomdb;

/*
1��Ԥ��������:�����¸�ת������ÿ�춨ʱ�����¸������Ļ������ݣ�����ÿ���Լ��ʮ�����ݣ�����ҵ�����������Ԥ�ƻ�ﵽ100 ������
2��ÿ�ζ�ȡ��:��20-50������
3����Ҫ��ѯ
	SELECT id,effectTime,landlordId,allRoomCount,roomRentCount,leaseCount,confirmLeaseCount,payConfirmLeaseCount,
		applyLeaseCount,applyBillCount,addApplyBillCount,applyFirstBillCount,addApplyFirstBillCount,applyedBillCount,
		addApplyedBillCount,applyedFirstBillCount,addApplyedFirstBillCount,createTime
	
	 FROM `loan_landlord_trans`
	ORDER BY createTime DESC
  ��ҪԤ����ӵ������ֶ�`landlordId`
*/

CREATE TABLE `loan_landlord_trans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `effectTime` datetime DEFAULT NULL COMMENT '��Чʱ��',
  `landlordId` int(11) DEFAULT NULL COMMENT '����id',
  `allRoomCount` int(11) DEFAULT '0' COMMENT '��Դ����',
  `roomRentCount` int(11) DEFAULT '0' COMMENT '���ⷿԴ����',
  `leaseCount` int(11) DEFAULT '0' COMMENT '��Լ������',
  `confirmLeaseCount` int(11) DEFAULT '0' COMMENT '��ȷ����Լ����',
  `payConfirmLeaseCount` int(11) DEFAULT '0' COMMENT '������ȷ����Լ��',
  `applyLeaseCount` int(11) DEFAULT '0' COMMENT '�������¸���Լ��',
  `applyBillCount` int(11) DEFAULT '0' COMMENT '�ۼƿ������¸��˵���',
  `addApplyBillCount` int(11) DEFAULT '0' COMMENT '�������¸��˵���(����)',
  `applyFirstBillCount` int(11) DEFAULT '0' COMMENT '�ۼƿ������¸������˵���',
  `addApplyFirstBillCount` int(11) DEFAULT '0' COMMENT '�������¸������˵���(����)',
  `applyedBillCount` int(11) DEFAULT '0' COMMENT '�ۼ��������¸��˵���',
  `addApplyedBillCount` int(11) DEFAULT '0' COMMENT '�������¸��˵���(����)',
  `applyedFirstBillCount` int(11) DEFAULT '0' COMMENT '�ۼ��������¸������˵���',
  `addApplyedFirstBillCount` int(11) DEFAULT '0' COMMENT '�������¸������˵���(����)',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `INDEX_LANDLORDID` (`landlordId`) COMMENT '����id����'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�����¸�ת������'