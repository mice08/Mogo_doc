/*  Database name `mogoroomdb`  金融逾期信息统计表*/
use mogoroomdb;

/*
1、预估表容量:每年5000条左右
2、每次读取量:1-20条
3、主要查询
  SELECT
	id,
	loanContractId,
	borrowerInfoId,
    orderNumber,
    workFlowStatus,
    loanChannel,
    period,
    applyAmount,
    totalPayedNum,
    totalDelayedNum,
    maxOverdueDays,
    lastOverdueDate,
    lastOverduePayedDate,
	cityId,
	renterId,
	borrowerName,
	landlordId,
	landlordName,
	saleManId,
	customerMgrId,
	valid,
	createTime,
	updateTime
  FROM
    loan_overdue_analysis
  WHERE lastOverdueDate >= '2017-04-13'
    AND lastOverdueDate < '2017-04-14'
    AND borrowerName like '%我%'
    AND landlordName like '%我%'
    AND valid = 1
  ORDER BY updateTime DESC
4、需要预先添加的索引字段：lastOverdueDate
*/
CREATE TABLE `loan_overdue_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '金融逾期信息统计表Id',
  `loanContractId` int(11) DEFAULT NULL COMMENT '贷款合同表Id',
  `borrowerInfoId` int(11) DEFAULT NULL COMMENT '申请资料表Id',
  `orderNumber` varchar(50) DEFAULT NULL COMMENT '蘑菇订单号',
  `workFlowStatus` int(11) DEFAULT NULL COMMENT '合同状态(参考枚举LoanStatusType)',
  `loanChannel` int(11) DEFAULT NULL COMMENT '贷款来源(参考枚举ChannelType)',
  `period` int(11) DEFAULT NULL COMMENT '贷款期数',
  `applyAmount` decimal(12,2) DEFAULT NULL COMMENT '贷款金额',
  `loanApplyTime` datetime DEFAULT NULL COMMENT '贷款金额',
  `totalPayedNum` int(11) DEFAULT NULL COMMENT '已还期数',
  `totalDelayedNum` int(11) DEFAULT NULL COMMENT '总逾期次数',
  `maxOverdueDays` int(11) DEFAULT NULL COMMENT '最大逾期天数',
  `lastOverdueDate` datetime DEFAULT NULL COMMENT '最近逾期应还日期',
  `lastOverduePayedDate` datetime DEFAULT NULL COMMENT '最近逾期实还日期',
  `cityId` int(11) DEFAULT NULL COMMENT '城市Id',
  `renterId` int(11) DEFAULT NULL COMMENT '租客Id',
  `borrowerName` varchar(50) DEFAULT NULL COMMENT '借款人姓名',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东Id',
  `landlordName` varchar(20) DEFAULT NULL COMMENT '房东姓名',
  `saleManId` int(11) DEFAULT NULL COMMENT '签约人Id',
  `customerMgrId` int(11) DEFAULT NULL COMMENT '服务人Id',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效 1:有效)',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  PRIMARY KEY (`id`),
  KEY `lastOverdueDate` (`lastOverdueDate`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '金融逾期信息统计表';
