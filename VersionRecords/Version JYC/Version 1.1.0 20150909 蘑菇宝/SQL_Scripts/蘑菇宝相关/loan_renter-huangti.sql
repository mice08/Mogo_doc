
/*Table structure for table `loan_renter_auditlog` */

DROP TABLE IF EXISTS `loan_renter_auditlog`;

CREATE TABLE `loan_renter_auditlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractno` varchar(100) DEFAULT NULL COMMENT '合同编号',
  `result` tinyint(1) DEFAULT NULL COMMENT '审核结果',
  `loantime` datetime DEFAULT NULL COMMENT '放款时间',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `applydate` date DEFAULT NULL COMMENT '申请时间',
  `loanamnt` int(10) DEFAULT NULL COMMENT '申请金额',
  `channel` tinyint(3) unsigned DEFAULT NULL COMMENT '贷款渠道',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `loan_renter_contract` */

DROP TABLE IF EXISTS `loan_renter_contract`;

CREATE TABLE `loan_renter_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renterId` int(11) DEFAULT NULL COMMENT '租客',
  `roomId` int(11) DEFAULT NULL COMMENT '房间',
  `infoId` int(11) DEFAULT NULL COMMENT '申请信息',
  `contractno` varchar(50) DEFAULT NULL COMMENT '合同号',
  `channel` tinyint(3) DEFAULT NULL COMMENT '贷款来源',
  `status` tinyint(3) DEFAULT NULL COMMENT '合同状态',
  `createTime` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `loantime` datetime DEFAULT NULL COMMENT '放款时间',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东',
  `applyamt` decimal(12,2) DEFAULT NULL COMMENT '申请金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='贷款合同表';

/*Table structure for table `loan_renter_info` */

DROP TABLE IF EXISTS `loan_renter_info`;

CREATE TABLE `loan_renter_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `orderno` varchar(32) NOT NULL COMMENT '订单号',
  `mobile` char(11) NOT NULL COMMENT '手机号',
  `wechatno` varchar(64) DEFAULT NULL COMMENT '微信号',
  `productno` varchar(10) NOT NULL COMMENT '产品编号',
  `applyamt` decimal(12,2) NOT NULL COMMENT '申请金额',
  `period` int(4) NOT NULL COMMENT '申请周期',
  `curcode` varchar(3) NOT NULL COMMENT '申请币种',
  `applicant` varchar(32) NOT NULL COMMENT '申请人姓名',
  `certno` char(18) NOT NULL COMMENT '身份证号码',
  `address` varchar(128) NOT NULL COMMENT '详细住宅地址',
  `highestlevel` tinyint(1) NOT NULL COMMENT '最高学历',
  `email` varchar(64) NOT NULL COMMENT '电子邮箱',
  `married` tinyint(1) NOT NULL COMMENT '婚姻状况',
  `companyname` varchar(128) NOT NULL COMMENT '单位全称',
  `position` varchar(64) NOT NULL COMMENT '申请人职位',
  `companyaddress` varchar(128) NOT NULL COMMENT '单位详细地址',
  `companytel` varchar(32) DEFAULT NULL COMMENT '单位电话',
  `income` tinyint(1) NOT NULL COMMENT '月收入',
  `contactname` varchar(64) NOT NULL COMMENT '直系亲属联系人姓名',
  `contactmobile` char(11) NOT NULL COMMENT '直系亲属联系人手机',
  `contactrelation` varchar(32) NOT NULL COMMENT '亲属关系',
  `industry` tinyint(1) NOT NULL COMMENT '所属行业',
  `entnature` tinyint(2) NOT NULL COMMENT '企业性质',
  `department` varchar(64) NOT NULL COMMENT '所在部门',
  `quarters` varchar(64) NOT NULL COMMENT '所在岗位',
  `worktime` varchar(64) NOT NULL COMMENT '本单件工作时间',
  `emergencyname` varchar(32) NOT NULL COMMENT '紧急联系人姓名',
  `emergencyrelation` varchar(32) NOT NULL COMMENT '紧急联系人关系',
  `emergencymobile` char(11) NOT NULL COMMENT '紧急联系人手机号',
  `leasetime` char(10) NOT NULL COMMENT '租赁起租日',
  `extfield` varchar(10240) DEFAULT NULL COMMENT '行业扩展字段',
  `debitcard` varchar(50) NOT NULL COMMENT '借记卡卡号',
  `debitbank` varchar(8) NOT NULL COMMENT '借记卡开户行',
  `renterId` int(11) unsigned NOT NULL COMMENT '租客id',
  `roomId` int(11) unsigned NOT NULL COMMENT '房间id',
  `applyTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申请日期',
  `retcode` varchar(45) DEFAULT NULL COMMENT '处理结果代码',
  `errMsg` varchar(200) DEFAULT NULL,
  `provinceId` int(11) NOT NULL COMMENT '省级代码',
  `cityId` int(11) NOT NULL COMMENT '市级代码',
  `districtId` int(11) NOT NULL COMMENT '城区代码',
  `cpProvinceId` int(11) NOT NULL COMMENT '工作单位省级代码',
  `cpCityId` int(11) NOT NULL COMMENT '工作单位城市代码',
  `cpDistrictId` int(11) NOT NULL COMMENT '工作单位城区代码',
  `channel` tinyint(1) NOT NULL DEFAULT '1' COMMENT '贷款来源 1. 拉卡拉 2.蘑菇',
  `certfirstimg` varchar(200) NOT NULL COMMENT '身份证正面照',
  `certsecondimg` varchar(200) NOT NULL COMMENT '身份证反面照',
  `nowphoto` varchar(200) NOT NULL COMMENT '手持身份证照',
  `landlordId` int(11) unsigned NOT NULL COMMENT '房东',
  `signedOrderId` int(11) unsigned NOT NULL COMMENT '签约单id ',
  `signed` tinyint(1) unsigned DEFAULT NULL COMMENT '是否完成预约单签约',
  `failCount` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='申请信息表';

/*Table structure for table `loan_renter_repay` */

DROP TABLE IF EXISTS `loan_renter_repay`;

CREATE TABLE `loan_renter_repay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractno` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `paydate` datetime DEFAULT NULL COMMENT '还款日期',
  `type` tinyint(2) unsigned DEFAULT NULL COMMENT '还款类型 0 本金 2滞纳金 3罚息',
  `payamt` decimal(12,2) DEFAULT NULL COMMENT '还款金额',
  `createTime` timestamp NULL DEFAULT NULL,
  `channel` tinyint(3) unsigned DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL COMMENT '期数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `loan_renter_repayplan` */

DROP TABLE IF EXISTS `loan_renter_repayplan`;

CREATE TABLE `loan_renter_repayplan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractno` varchar(50) DEFAULT NULL COMMENT '合同编号',
  `applyamt` decimal(12,2) DEFAULT NULL COMMENT '借款金额',
  `madeamt` decimal(12,2) DEFAULT NULL COMMENT '已还金额',
  `eachnum` tinyint(1) unsigned DEFAULT NULL COMMENT '第几期',
  `duedate` date DEFAULT NULL COMMENT '到期日期',
  `paystatus` char(1) DEFAULT NULL COMMENT '还款状态',
  `createTime` timestamp NULL DEFAULT NULL,
  `channel` tinyint(3) unsigned DEFAULT '1' COMMENT '贷款通道',
  `valid` tinyint(1) DEFAULT NULL,
  `updateTime` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `landlordPaid` tinyint(1) unsigned DEFAULT '0' COMMENT '是否已经支付给房东 0 初始状态 1 等待转帐 2 转帐指令已发 ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index_2` (`contractno`,`eachnum`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


