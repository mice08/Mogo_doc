/*  Database name `mogoroomdb`  增加房东月付转化报表*/
USE mogoroomdb;

/*
1、预估表容量:房东月付转化报表，每天定时更新月付房东的基础数据，现在每天大约几十条数据，后续业务持续增长，预计会达到100 条左右
2、每次读取量:在20-50条左右
3、主要查询
	SELECT id,effectTime,landlordId,allRoomCount,roomRentCount,leaseCount,confirmLeaseCount,payConfirmLeaseCount,
		applyLeaseCount,applyBillCount,addApplyBillCount,applyFirstBillCount,addApplyFirstBillCount,applyedBillCount,
		addApplyedBillCount,applyedFirstBillCount,addApplyedFirstBillCount,createTime
	
	 FROM `loan_landlord_trans`
	ORDER BY createTime DESC
  需要预先添加的索引字段`landlordId`
*/

CREATE TABLE `loan_landlord_trans` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `effectTime` datetime DEFAULT NULL COMMENT '生效时间',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `allRoomCount` int(11) DEFAULT '0' COMMENT '房源总量',
  `roomRentCount` int(11) DEFAULT '0' COMMENT '已租房源数量',
  `leaseCount` int(11) DEFAULT '0' COMMENT '租约总数量',
  `confirmLeaseCount` int(11) DEFAULT '0' COMMENT '已确认租约数量',
  `payConfirmLeaseCount` int(11) DEFAULT '0' COMMENT '付三已确认租约量',
  `applyLeaseCount` int(11) DEFAULT '0' COMMENT '可申请月付租约量',
  `applyBillCount` int(11) DEFAULT '0' COMMENT '累计可申请月付账单数',
  `addApplyBillCount` int(11) DEFAULT '0' COMMENT '可申请月付账单数(增量)',
  `applyFirstBillCount` int(11) DEFAULT '0' COMMENT '累计可申请月付首期账单数',
  `addApplyFirstBillCount` int(11) DEFAULT '0' COMMENT '可申请月付首期账单数(增量)',
  `applyedBillCount` int(11) DEFAULT '0' COMMENT '累计已申请月付账单数',
  `addApplyedBillCount` int(11) DEFAULT '0' COMMENT '已申请月付账单数(增量)',
  `applyedFirstBillCount` int(11) DEFAULT '0' COMMENT '累计已申请月付首期账单数',
  `addApplyedFirstBillCount` int(11) DEFAULT '0' COMMENT '已申请月付首期账单数(增量)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `INDEX_LANDLORDID` (`landlordId`) COMMENT '房东id索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='房东月付转化报表'