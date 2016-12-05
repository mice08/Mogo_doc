
/*Table structure for table `loan_landlord_buyback` */


CREATE TABLE `loan_landlord_buyback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '买回贷款表Id',
  `loanId` int(11) DEFAULT NULL COMMENT '贷款名称',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东ID',
  `buyBackType` int(11) DEFAULT NULL COMMENT '买回类型（1.提前退租;2.逾期退租）',
  `rent` decimal(12,2) DEFAULT NULL COMMENT '月租金',
  `loanPeriod` int(11) DEFAULT NULL COMMENT '贷款期数',
  `remainPeriod` int(11) DEFAULT NULL COMMENT '剩余贷款周期',
  `backFee` decimal(12,2) DEFAULT NULL COMMENT '分期手续费返还',
  `buyBackAmount` decimal(12,2) DEFAULT NULL COMMENT '还款总金额',
  `lateFee` decimal(12,2) DEFAULT NULL COMMENT '逾期手续费',
  `penalty` decimal(12,2) DEFAULT NULL COMMENT '滞纳金',
  `repayedAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已扣还款总额',
  `repayedLateFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已扣逾期手续费',
  `repayedPenalty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已扣滞纳金',
  `waitRepayAmount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '待扣还款金额',
  `waitRepayLateFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '待扣逾期手续费',
  `waitRepayPenalty` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '代扣滞纳金',
  `planDate` date DEFAULT NULL COMMENT '计划还款日期',
  `comments` varchar(20) DEFAULT NULL COMMENT '备注信息',
  `buyBackStatus` int(11) NOT NULL COMMENT '还款状态',
  `buyBackDate` timestamp NULL DEFAULT NULL COMMENT '实际还款日期',
  `mogobaoBuyBackStatus` int(11) DEFAULT NULL COMMENT '蘑菇宝买回状态',
  `mogobaoBuyBackDate` timestamp NULL DEFAULT NULL COMMENT '蘑菇宝买回日期',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '是否有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东贷款买回信息';

/*Table structure for table `loan_landlord_contract` */

CREATE TABLE `loan_landlord_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借款表Id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东Id',
  `credits` decimal(12,2) DEFAULT NULL COMMENT '信用额',
  `shortestTerm` int(11) DEFAULT NULL COMMENT '最短蘑菇宝租期（6-12）',
  `feeRate` int(11) DEFAULT NULL COMMENT '服务费费率',
  `canLoan` int(11) DEFAULT NULL COMMENT '是否可以贷款 0.不可以；1.可以',
  `oneTime` int(11) DEFAULT NULL COMMENT '是否一次性付款 0.不可以;1.可以',
  `status` int(11) DEFAULT NULL COMMENT '借款单状态',
  `applyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '申请时间',
  `approvalUser` int(11) DEFAULT NULL COMMENT '审批人Id',
  `approvalTime` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东贷款申请';

/*Table structure for table `loan_landlord_credit` */

CREATE TABLE `loan_landlord_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东信用表Id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东Id',
  `credits` decimal(12,2) DEFAULT NULL COMMENT '信用额',
  `shortestTerm` int(11) DEFAULT NULL COMMENT '最短蘑菇宝租期（6-12）',
  `feeRate` int(11) DEFAULT NULL COMMENT '服务费费率',
  `canLoan` int(11) DEFAULT NULL COMMENT '是否可以贷款 0.不可以；1.可以',
  `oneTime` int(11) DEFAULT NULL COMMENT '是否一次性付款 0.不可以;1.可以',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建人员Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改时间Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东信用表';

/*Table structure for table `loan_landlord_creditlog` */

CREATE TABLE `loan_landlord_creditlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东信用日志表Id',
  `creditId` int(11) DEFAULT NULL COMMENT '信用表Id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东Id',
  `prevCredits` decimal(12,2) DEFAULT NULL COMMENT '以前的信用额',
  `prevFeeRate` int(11) DEFAULT NULL COMMENT '以前的服务服务费费率',
  `prevCanLoan` int(11) DEFAULT NULL COMMENT '以前是否可以贷款',
  `prevOneTime` int(11) DEFAULT NULL COMMENT '以前是否一次性付款',
  `curCredits` decimal(12,2) DEFAULT NULL COMMENT '现在的信用额',
  `curFeeRate` int(11) DEFAULT NULL COMMENT '现在的服务费费率',
  `curCanLoan` int(11) DEFAULT NULL COMMENT '现在是否可以贷款',
  `curOneTime` int(11) DEFAULT NULL COMMENT '现在是否一次性付款',
  `modifyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改时间Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信用表维护日志表';

/*Table structure for table `loan_landlord_mgmt` */

CREATE TABLE `loan_landlord_mgmt` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '贷款管理主表Id',
  `loanTypeId` int(11) DEFAULT NULL COMMENT '贷款类型（维修贷款、租金贷款）',
  `loanNo` varchar(30) DEFAULT NULL COMMENT '贷款编号',
  `loanContractId` int(11) DEFAULT NULL COMMENT '贷款合同Id',
  `bizContractId` int(11) DEFAULT NULL COMMENT '业务合同Id',
  `loanStatus` int(11) DEFAULT NULL COMMENT '贷款状态',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东Id',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东贷款管理';

/*Table structure for table `loan_landlord_payplan` */

CREATE TABLE `loan_landlord_payplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '贷款支付表Id',
  `loanId` int(11) DEFAULT NULL COMMENT '贷款表ID',
  `period` int(11) DEFAULT NULL COMMENT '放款期数',
  `phaseMonths` int(11) DEFAULT NULL COMMENT '房租贷款月数',
  `loanAmount` decimal(12,2) DEFAULT NULL COMMENT '借款金额',
  `feeAmount` decimal(12,2) DEFAULT NULL COMMENT '服务费',
  `depositAmount` decimal(12,2) DEFAULT NULL COMMENT '保证金',
  `actualAmount` decimal(12,2) DEFAULT NULL COMMENT '实发金额',
  `planDate` date DEFAULT NULL COMMENT '计划放款日',
  `payStatus` int(11) DEFAULT NULL COMMENT '放款状态',
  `payDate` timestamp NULL DEFAULT NULL COMMENT '实际放款日',
  `comments` varchar(300) DEFAULT NULL COMMENT '备注',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东贷款放款表';

/*Table structure for table `loan_landlord_rentconfig` */

CREATE TABLE `loan_landlord_rentconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房东贷款配置表Id',
  `loanTypeId` int(11) DEFAULT NULL COMMENT '贷款类型',
  `leaseTerm` int(11) DEFAULT NULL COMMENT '租赁期数',
  `loanPeriod` int(11) DEFAULT NULL COMMENT '贷款期数',
  `depositRate` int(11) DEFAULT NULL COMMENT '保证金比例（使用时除以10000）',
  `firstPhase` int(11) DEFAULT NULL COMMENT '首期放款月数',
  `secondPhase` int(11) DEFAULT NULL COMMENT '二期放款月数',
  `thirdPhase` int(11) DEFAULT NULL COMMENT '三期放款月数',
  `fourthPhase` int(11) DEFAULT NULL COMMENT '四期放款月数',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `loan_landlord_repayplan` */

CREATE TABLE `loan_landlord_repayplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '还款计划表Id',
  `loanId` int(11) DEFAULT NULL COMMENT '贷款Id',
  `period` varchar(20) DEFAULT NULL COMMENT '还款期数',
  `repayAmount` decimal(12,2) DEFAULT NULL COMMENT '还款金额',
  `planDate` date DEFAULT NULL COMMENT '计划还款日期',
  `repayStatus` int(11) DEFAULT NULL COMMENT '还款状态',
  `repayType` int(11) DEFAULT NULL COMMENT '还款类型',
  `repayDate` timestamp NULL DEFAULT NULL COMMENT '实际还款日期',
  `comments` varchar(300) DEFAULT NULL COMMENT '备注',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='房东贷款还款表';

/*Table structure for table `loan_landlord_type` */

CREATE TABLE `loan_landlord_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '贷款类型表Id',
  `loanName` varchar(60) DEFAULT NULL COMMENT '贷款名称',
  `loanRate` int(11) DEFAULT NULL COMMENT '贷款利率',
  `needBizContract` int(11) DEFAULT NULL COMMENT '是否需要业务合约',
  `overdueDays` int(11) DEFAULT NULL COMMENT '逾期天数',
  `lateFee` decimal(12,2) DEFAULT NULL COMMENT '逾期服务费',
  `penaltyRate` int(11) DEFAULT NULL COMMENT '滞纳金费率',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createUser` int(11) DEFAULT NULL COMMENT '创建用户Id',
  `modifyTime` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `modifyUser` int(11) DEFAULT NULL COMMENT '修改用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='贷款类型配置表';



insert into `loan_landlord_type` (`id`, `loanName`, `loanRate`, `needBizContract`, `overdueDays`, `lateFee`, `penaltyRate`, `createTime`, `createUser`, `modifyTime`, `modifyUser`) values('1','租金借款','800','1','3','100.00','50','2015-08-08 11:10:30',NULL,NULL,NULL);


insert into `loan_landlord_rentconfig` (`id`, `loanTypeId`, `leaseTerm`, `loanPeriod`, `depositRate`, `firstPhase`, `secondPhase`, `thirdPhase`, `fourthPhase`, `createTime`, `createUser`, `modifyTime`, `modifyUser`) values('1','1','12','11','100','5','6','0','0','2015-08-17 14:07:09',NULL,NULL,NULL);

