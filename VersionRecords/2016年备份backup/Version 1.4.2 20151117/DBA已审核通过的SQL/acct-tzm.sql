/*
SQLyog Ultimate v11.24 (64 bit)
MySQL - 5.6.26 : Database - acct
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `acct_account` */
USE acct;

DROP TABLE IF EXISTS `acct_account`;

CREATE TABLE `acct_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acctId` int(11) NOT NULL COMMENT '帐务系统账号',
  `wjIdentity` varchar(32) NOT NULL COMMENT '维金帐号',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `userId` int(11) NOT NULL COMMENT '业务系统帐号唯一标识',
  `userType` tinyint(4) NOT NULL COMMENT '业务用户类型  1 租客 2 房东   groupName=userType',
  PRIMARY KEY (`id`),
  KEY `idx_userIdUserType` (`userId`,`userType`),
  KEY `idx_wjIdentity` (`wjIdentity`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账号表';

/*Table structure for table `acct_bill` */

DROP TABLE IF EXISTS `acct_bill`;

CREATE TABLE `acct_bill` (
  `billId` int(32) NOT NULL AUTO_INCREMENT COMMENT '账单编号',
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `amount` decimal(10,2) NOT NULL COMMENT '账单总金额',
  `unpayAmount` decimal(10,2) NOT NULL COMMENT '未结清费用',
  `acctId` int(11) NOT NULL COMMENT '付款账号',
  `toAcctId` int(11) DEFAULT NULL COMMENT '收款账号',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1024) NOT NULL COMMENT '备注',
  `origBillId` int(32) DEFAULT NULL COMMENT '关联账单编号',
  `deadline` date DEFAULT NULL,
  `paidPenalty` decimal(10,2) DEFAULT NULL COMMENT '已支付滞纳金额',
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账单表';

/*Table structure for table `acct_bill_chghistory` */

DROP TABLE IF EXISTS `acct_bill_chghistory`;

CREATE TABLE `acct_bill_chghistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billId` int(11) NOT NULL COMMENT '账单id。参考账单表。',
  `oldAmount` decimal(10,2) DEFAULT NULL COMMENT '账单变更前金额',
  `oldDeadline` date DEFAULT NULL COMMENT '账单变更前截止日期',
  `newAmount` decimal(10,2) DEFAULT NULL COMMENT '账单变更后金额',
  `newDeadline` date DEFAULT NULL COMMENT '账单变更后截止日期',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人id',
  `createByType` tinyint(4) DEFAULT NULL COMMENT '创建人类型。参考字段表useType。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账单变更履历表';

/*Table structure for table `acct_bill_tmp` */

DROP TABLE IF EXISTS `acct_bill_tmp`;

CREATE TABLE `acct_bill_tmp` (
  `billId` int(32) NOT NULL AUTO_INCREMENT COMMENT '账单编号',
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `amount` decimal(10,2) NOT NULL COMMENT '账单总金额',
  `unpayAmount` decimal(10,2) NOT NULL COMMENT '未结清费用',
  `acctId` int(11) NOT NULL COMMENT '付款账号',
  `toAcctId` int(11) DEFAULT NULL COMMENT '收款账号',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1024) NOT NULL COMMENT '备注',
  `origBillId` int(32) DEFAULT NULL COMMENT '关联账单编号',
  `deadline` date DEFAULT NULL,
  `orderId` varchar(32) DEFAULT NULL COMMENT '订单号\n\n            ',
  `orderType` int(6) DEFAULT NULL COMMENT '订单类型\n\n            ',
  `fromTblName` varchar(64) DEFAULT NULL COMMENT '订单号从业务系统哪个表迁移过来的',
  `memo` varchar(128) DEFAULT NULL COMMENT '账单迁移备注',
  `paidPenalty` decimal(10,2) DEFAULT NULL COMMENT '已支付滞纳金额',
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='数据迁移用临时账单表';

/*Table structure for table `acct_billdtl` */

DROP TABLE IF EXISTS `acct_billdtl`;

CREATE TABLE `acct_billdtl` (
  `billDtlId` int(32) NOT NULL AUTO_INCREMENT COMMENT '账单明细编号',
  `billId` int(32) NOT NULL COMMENT '账单编号',
  `billDtlType` int(11) NOT NULL COMMENT '账单明细类型',
  `amount` decimal(10,2) NOT NULL COMMENT '金额',
  PRIMARY KEY (`billDtlId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账单详情';

/*Table structure for table `acct_billdtltype` */

DROP TABLE IF EXISTS `acct_billdtltype`;

CREATE TABLE `acct_billdtltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billDtlType` int(11) NOT NULL COMMENT '账单明细类型',
  `billDtlName` varchar(64) NOT NULL COMMENT '账单明细名称',
  `status` tinyint(4) NOT NULL COMMENT '0无效1有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账单类型';

/*Table structure for table `acct_billtype` */

DROP TABLE IF EXISTS `acct_billtype`;

CREATE TABLE `acct_billtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `billName` varchar(64) NOT NULL COMMENT '账单名称',
  `status` tinyint(4) NOT NULL COMMENT '0无效1有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  `penaltyRate` int(4) DEFAULT NULL COMMENT '滞纳金适用费率。单位：万分之一',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账单类型';

/*Table structure for table `acct_billtypetofundtype` */

DROP TABLE IF EXISTS `acct_billtypetofundtype`;

CREATE TABLE `acct_billtypetofundtype` (
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `fromFundType` int(32) NOT NULL COMMENT '扣款资金类型',
  `toFundType` int(32) NOT NULL COMMENT '收款资金类型',
  PRIMARY KEY (`billType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账单类型与资金抵扣方式';

/*Table structure for table `acct_busibilldtl` */

DROP TABLE IF EXISTS `acct_busibilldtl`;

CREATE TABLE `acct_busibilldtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doneCode` int(11) NOT NULL COMMENT '流水主表ID',
  `billId` int(11) NOT NULL COMMENT '账单号',
  `amount` decimal(10,2) NOT NULL COMMENT '金额，账单费用增加为正',
  `beforeAmount` decimal(10,2) NOT NULL COMMENT '支付前金额',
  PRIMARY KEY (`id`),
  KEY `idx_doneCode` (`doneCode`),
  KEY `idx_billId` (`billId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='流水账单表';

/*Table structure for table `acct_busifeedtl` */

DROP TABLE IF EXISTS `acct_busifeedtl`;

CREATE TABLE `acct_busifeedtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doneCode` int(32) NOT NULL COMMENT '流水主表ID',
  `acctId` int(11) NOT NULL COMMENT '账号id',
  `amount` decimal(10,2) NOT NULL COMMENT '金额，入款为正',
  `fundChannel` int(2) NOT NULL COMMENT '渠道',
  `bankCode` varchar(16) NOT NULL COMMENT '银行编号',
  `bankCard` varchar(32) NOT NULL COMMENT '银行',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `idx_doneCode` (`doneCode`),
  KEY `idx_acctId` (`acctId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='资金来源';

/*Table structure for table `acct_busifunddtl` */

DROP TABLE IF EXISTS `acct_busifunddtl`;

CREATE TABLE `acct_busifunddtl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doneCode` int(32) NOT NULL COMMENT '业务流水id',
  `acctId` int(32) NOT NULL COMMENT '账号id',
  `fundType` int(11) NOT NULL COMMENT '资金类型',
  `amount` decimal(10,2) NOT NULL COMMENT '变化金额，余额增加为正',
  `beforeAmount` decimal(10,2) NOT NULL COMMENT '变化前金额',
  PRIMARY KEY (`id`),
  KEY `idx_doneCode` (`doneCode`),
  KEY `idx_acctId` (`acctId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='资金';

/*Table structure for table `acct_busirec` */

DROP TABLE IF EXISTS `acct_busirec`;

CREATE TABLE `acct_busirec` (
  `doneCode` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `tradelogid` int(11) NOT NULL COMMENT '支付行为外键',
  `busiType` int(11) NOT NULL COMMENT '业务类型',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `reRecId` int(11) DEFAULT NULL COMMENT '退款关联ID',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '操作人',
  `createByType` tinyint(4) NOT NULL COMMENT '操作人类型',
  `channel` tinyint(4) NOT NULL COMMENT '交易渠道',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  PRIMARY KEY (`doneCode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账务流水表';

/*Table structure for table `acct_busitype` */

DROP TABLE IF EXISTS `acct_busitype`;

CREATE TABLE `acct_busitype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busiType` int(11) NOT NULL COMMENT '业务代码',
  `busiName` varchar(64) NOT NULL COMMENT '业务名称',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='业务类型';

/*Table structure for table `acct_check` */

DROP TABLE IF EXISTS `acct_check`;

CREATE TABLE `acct_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL COMMENT '告警结果描述',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '修改之后是否已经审核',
  `checkResult` tinyint(4) DEFAULT NULL COMMENT '审核结果',
  `fundChannel` tinyint(4) DEFAULT NULL COMMENT '付款渠道',
  `checkDate` date DEFAULT NULL COMMENT '对账日',
  `checkType` tinyint(4) DEFAULT NULL COMMENT '对账类型 余额 资金 业务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='检查结果';

/*Table structure for table `acct_checkacctfunddetail` */

DROP TABLE IF EXISTS `acct_checkacctfunddetail`;

CREATE TABLE `acct_checkacctfunddetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL COMMENT '告警id',
  `accountId` int(11) DEFAULT NULL COMMENT '个人帐户号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '是否已经审核',
  `content` varchar(100) DEFAULT NULL COMMENT '描述信息',
  `errorType` tinyint(4) DEFAULT NULL COMMENT '余额错误类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='个人帐户对账结果详情';

/*Table structure for table `acct_checkbillfunddetail` */

DROP TABLE IF EXISTS `acct_checkbillfunddetail`;

CREATE TABLE `acct_checkbillfunddetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL COMMENT '告警id',
  `billId` int(11) DEFAULT NULL COMMENT '账单号',
  `waterBillId` int(11) DEFAULT NULL COMMENT '流水表中的billId',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '是否已经审核',
  `content` varchar(32) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='流水帐务，账单对账结果详情';

/*Table structure for table `acct_checkbilltradedetail` */

DROP TABLE IF EXISTS `acct_checkbilltradedetail`;

CREATE TABLE `acct_checkbilltradedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL COMMENT '告警id',
  `tradeLogId` int(11) DEFAULT NULL COMMENT '支付行为id',
  `billTradeLogId` int(11) DEFAULT NULL COMMENT '帐务中的tradeLogId',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '是否已经审核',
  `content` varchar(100) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='个人帐户对账结果详情';

/*Table structure for table `acct_checkbizdetail` */

DROP TABLE IF EXISTS `acct_checkbizdetail`;

CREATE TABLE `acct_checkbizdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL COMMENT '对账结果id  ,acct_check.id',
  `origBillNum` varchar(32) DEFAULT NULL COMMENT '业务系统账单号',
  `billId` int(11) DEFAULT NULL COMMENT '账单号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '是否已经审核',
  `content` varchar(100) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务系统与帐务系统对账结果详情';

/*Table structure for table `acct_checktradealipay` */

DROP TABLE IF EXISTS `acct_checktradealipay`;

CREATE TABLE `acct_checktradealipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soDoneCode` varchar(64) NOT NULL COMMENT '业务流水号',
  `fcDoneCode` varchar(64) NOT NULL COMMENT '第三方流水号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `acct_checktradedetail` */

DROP TABLE IF EXISTS `acct_checktradedetail`;

CREATE TABLE `acct_checktradedetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL COMMENT '对账结果id  ,acct_check.id',
  `tradeNo` varchar(32) DEFAULT NULL COMMENT '交易编号',
  `oppoTradeNo` varchar(32) DEFAULT NULL COMMENT '支付商付款流水号',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `fixed` tinyint(4) DEFAULT NULL COMMENT '是否已经处理',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  `verified` tinyint(4) DEFAULT NULL COMMENT '是否已经审核',
  `fundChannel` int(11) DEFAULT NULL COMMENT '付款渠道',
  `content` varchar(100) DEFAULT NULL COMMENT '错误描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='检查交易结果详情';

/*Table structure for table `acct_checktradeweixin` */

DROP TABLE IF EXISTS `acct_checktradeweixin`;

CREATE TABLE `acct_checktradeweixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soDoneCode` varchar(64) NOT NULL COMMENT '业务流水号',
  `fcDoneCode` varchar(64) NOT NULL COMMENT '第三方流水号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `acct_fund` */

DROP TABLE IF EXISTS `acct_fund`;

CREATE TABLE `acct_fund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acctId` int(11) NOT NULL COMMENT '账号',
  `fundType` int(11) NOT NULL COMMENT '资金类型',
  `amount` decimal(10,2) NOT NULL COMMENT '金额',
  `frozen` decimal(10,2) NOT NULL COMMENT '冻结金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账号余额表';

/*Table structure for table `acct_fundtype` */

DROP TABLE IF EXISTS `acct_fundtype`;

CREATE TABLE `acct_fundtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `fundCode` varchar(64) NOT NULL COMMENT '唯一编码',
  `fundName` int(11) NOT NULL COMMENT '名称',
  `status` tinyint(4) NOT NULL COMMENT '状态，0无效，1有效',
  `sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='资金类型';

/*Table structure for table `acct_password` */

DROP TABLE IF EXISTS `acct_password`;

CREATE TABLE `acct_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `acctId` int(11) NOT NULL COMMENT '会员编号',
  `passType` tinyint(4) NOT NULL COMMENT '密码类型',
  `password` varchar(64) NOT NULL COMMENT '支付密码',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人ID',
  `createByType` int(11) NOT NULL COMMENT '创建人类型',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人ID',
  `updateByType` int(11) DEFAULT NULL COMMENT '更新人类型',
  `status` tinyint(4) NOT NULL COMMENT '状态，是否有效',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='支付密码';

/*Table structure for table `acct_passwordlog` */

DROP TABLE IF EXISTS `acct_passwordlog`;

CREATE TABLE `acct_passwordlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志id',
  `acctId` int(11) NOT NULL COMMENT '会员编号',
  `busiType` int(11) NOT NULL COMMENT '访问类型',
  `accessResult` varchar(32) NOT NULL COMMENT '访问结果',
  `accessTime` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志';

/*Table structure for table `acct_refund_alipay` */

DROP TABLE IF EXISTS `acct_refund_alipay`;

CREATE TABLE `acct_refund_alipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_orderid` varchar(30) DEFAULT NULL COMMENT '业务订单ID',
  `biz_type` varchar(30) DEFAULT NULL COMMENT '业务类型',
  `notify_time` datetime NOT NULL COMMENT ' 格式为 yyyy-MM-dd HH:mm:ss ',
  `notify_type` varchar(20) DEFAULT NULL COMMENT '通知的类型   业务类型',
  `notify_id` varchar(64) DEFAULT NULL COMMENT '通知校验的ID ',
  `sign_type` varchar(10) DEFAULT NULL COMMENT '固定取值为 RSA   ',
  `sign` varchar(1024) DEFAULT NULL COMMENT '签名',
  `out_trade_no` varchar(64) NOT NULL COMMENT '对应商户网站的订单系统中的 唯一订单号，非支付宝交易号。                                                                                                                           \n\n                                                                                                                                需保证在商户网站中的唯一性。 是请求时对应的参数，原样返 回',
  `subject` varchar(128) DEFAULT NULL COMMENT '商品的标题/交易标题/订单标题 /订单关键字等。 它在支付宝的交易明细中排在 第一列，对于财务对账尤为重 要。是请求时对应的参数，原样 通知回来。  ',
  `payment_type` varchar(4) DEFAULT NULL COMMENT '支付类型。默认值为：1（商品 购买                   ',
  `trade_no` varchar(64) DEFAULT NULL COMMENT '该交易在支付宝系统中的交易 流水号。 最短 16 位，最长 64 位',
  `trade_status` varchar(20) DEFAULT NULL COMMENT '交易状态',
  `seller_id` varchar(30) DEFAULT NULL COMMENT '卖家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字',
  `seller_email` varchar(100) DEFAULT NULL COMMENT '卖家支付宝账号，可以是 email 和手机号码。',
  `buyer_id` varchar(30) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝 唯一用户号',
  `buyer_email` varchar(100) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字。',
  `total_fee` double DEFAULT NULL COMMENT '该笔订单的总金额。 请求时对应的参数，原样通知回 来。 ',
  `quantity` double DEFAULT NULL COMMENT '购买数量，',
  `price` double DEFAULT NULL COMMENT 'price 等于 total_fee',
  `body` varchar(512) DEFAULT NULL COMMENT '该笔订单的备注',
  `gmt_create` datetime DEFAULT NULL COMMENT '该笔交易创建的时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `gmt_payment` datetime DEFAULT NULL COMMENT '该笔交易的买家付款时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `is_total_fee_adjust` varchar(1) DEFAULT NULL COMMENT '该交易是否调整过价格 ',
  `use_coupon` varchar(1) DEFAULT NULL COMMENT '是否在交易过程中使用了红包',
  `discount` varchar(10) DEFAULT NULL COMMENT ' 支付宝系统会把 discount 的值 加到交易金额上，如果有折扣， 本参数为负数，单位为元 ',
  `refund_status` varchar(20) DEFAULT NULL COMMENT '取值范围请参见“11.4  退款状 态”',
  `gmt_refund` datetime DEFAULT NULL COMMENT '卖家退款的时间，退款通知时会 发送。 格式为 yyyy-MM-dd HH:mm:ss',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付宝退款记录';

/*Table structure for table `acct_refund_weixin` */

DROP TABLE IF EXISTS `acct_refund_weixin`;

CREATE TABLE `acct_refund_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(32) NOT NULL COMMENT '公众账号ID',
  `mch_id` varchar(32) NOT NULL COMMENT '商户号',
  `device_info` varchar(32) DEFAULT NULL COMMENT '设备号',
  `nonce_str` varchar(32) NOT NULL COMMENT '随机字符串',
  `sign` varchar(32) NOT NULL COMMENT '签名',
  `transaction_id` varchar(28) NOT NULL COMMENT '微信订单号',
  `out_trade_no` varchar(32) NOT NULL COMMENT '商户订单号',
  `out_refund_no` varchar(32) NOT NULL COMMENT '商户退款单号',
  `refund_id` varchar(28) NOT NULL COMMENT '微信退款单号',
  `refund_channel` varchar(16) NOT NULL COMMENT '退款渠道',
  `refund_fee` int(11) NOT NULL COMMENT '退款金额',
  `total_fee` int(11) NOT NULL COMMENT '订单总金额',
  `fee_type` varchar(8) DEFAULT NULL COMMENT '订单金额货币种类',
  `cash_fee` int(11) NOT NULL COMMENT '现金支付金额',
  `cash_refund_fee` int(11) DEFAULT NULL COMMENT '现金退款金额',
  `coupon_refund_fee` int(11) DEFAULT NULL COMMENT '代金券或立减优惠退款金额',
  `coupon_refund_count` int(11) DEFAULT NULL COMMENT '代金券或立减优惠使用数量',
  `coupon_refund_id` varchar(20) DEFAULT NULL COMMENT '代金券或立减优惠ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信退款记录';

/*Table structure for table `acct_speciallist` */

DROP TABLE IF EXISTS `acct_speciallist`;

CREATE TABLE `acct_speciallist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `acctId` int(11) DEFAULT NULL COMMENT '账号id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(4) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` date DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `udpateByType` tinyint(4) DEFAULT NULL COMMENT '更新人类型',
  `blackType` tinyint(4) DEFAULT NULL COMMENT '黑名单类型',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态，0无效，1有效',
  `remark` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='账号黑白灰名单';

/*Table structure for table `acct_thridrefund` */

DROP TABLE IF EXISTS `acct_thridrefund`;

CREATE TABLE `acct_thridrefund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billId` int(11) NOT NULL COMMENT '账单编号',
  `amount` decimal(10,2) NOT NULL COMMENT '退款金额',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `refundChannel` int(11) NOT NULL COMMENT '退款渠道',
  `status` int(11) NOT NULL COMMENT '状态 1有效，0无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='第三方扣款计划表';

/*Table structure for table `acct_tradelog` */

DROP TABLE IF EXISTS `acct_tradelog`;

CREATE TABLE `acct_tradelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soDoneCode` varchar(64) NOT NULL COMMENT '业务侧流水号',
  `busiType` int(11) NOT NULL COMMENT '业务类型 详见业务类型表',
  `channel` tinyint(4) NOT NULL COMMENT '操作渠道  租客APP：0 ， 房东APP：1，房东PC：2 ，bs系统：3',
  `fundChannel` int(4) DEFAULT NULL COMMENT '资金渠道 支付宝：1,，微信：2，维金：3，余额：4',
  `fcDoneCode` varchar(64) DEFAULT NULL COMMENT '第三方平台交易ID',
  `useFund` tinyint(4) NOT NULL COMMENT '是否使用资金 1:是 0：不是',
  `billId` int(32) DEFAULT NULL COMMENT '账单ID  ',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createByType` int(11) NOT NULL COMMENT '创建人类型 租客：0 ，房东：1，MOGO员工：2',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `status` int(2) NOT NULL COMMENT '状态  原始状态：1，支付完成 ：2',
  `remark` varchar(256) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易行为日志';

/*Table structure for table `acct_tradelog_alipay` */

DROP TABLE IF EXISTS `acct_tradelog_alipay`;

CREATE TABLE `acct_tradelog_alipay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_orderid` int(11) DEFAULT NULL COMMENT '业务订单ID',
  `biz_type` varchar(32) DEFAULT NULL COMMENT '业务类型',
  `notify_time` datetime DEFAULT NULL COMMENT '通知的发送时间。 格式为 yyyy-MM-dd HH:mm:ss',
  `notify_type` varchar(32) DEFAULT NULL COMMENT '通知的类型',
  `notify_id` varchar(64) DEFAULT NULL COMMENT '通知校验的ID',
  `sign_type` varchar(16) DEFAULT NULL COMMENT '固定取值为 RSA',
  `sign` varchar(1024) DEFAULT NULL COMMENT '签名',
  `out_trade_no` varchar(64) DEFAULT NULL COMMENT '对应商户网站的订单系统中的 唯一订单号，非支付宝交易号。 需保证在商户网站中的唯一性。 是请求时对应的参数，原样返 回。',
  `subject` varchar(128) DEFAULT NULL COMMENT '商品的标题/交易标题/订单标题 /订单关键字等。 它在支付宝的交易明细中排在 第一列，对于财务对账尤为重 要。是请求时对应的参数，原样 通知回来。',
  `payment_type` varchar(4) DEFAULT NULL COMMENT '支付类型。默认值为：1（商品 购买）',
  `trade_no` varchar(64) DEFAULT NULL COMMENT '该交易在支付宝系统中的交易 流水号。 最短 16 位，最长 64 位。',
  `trade_status` varchar(32) DEFAULT NULL COMMENT '交易状态，取值范围请参见 “11.3 交易状态”',
  `seller_id` varchar(32) DEFAULT NULL COMMENT '卖家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字',
  `seller_email` varchar(128) DEFAULT NULL COMMENT '卖家支付宝账号，可以是 email 和手机号码。',
  `buyer_id` varchar(32) DEFAULT NULL COMMENT '买家支付宝账号对应的支付宝 唯一用户号。 以 2088 开头的纯 16 位数字',
  `buyer_email` varchar(128) DEFAULT NULL COMMENT '买家支付宝账号，可以是 Email 或手机号码',
  `total_fee` decimal(10,0) DEFAULT NULL COMMENT '该笔订单的总金额。 请求时对应的参数，原样通知回 来。',
  `quantity` decimal(10,0) DEFAULT NULL COMMENT '购买数量，固定取值为 1（请求 时使用的是 total_fee）。',
  `price` decimal(10,0) DEFAULT NULL COMMENT 'price 等于 total_fee（请求时使 用的是 total_fee）',
  `body` varchar(512) DEFAULT NULL COMMENT '该笔订单的备注、描述、明细等。 对应请求时的 body 参数，原样 通知回来。',
  `gmt_create` datetime DEFAULT NULL COMMENT '该笔交易创建的时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `gmt_payment` datetime DEFAULT NULL COMMENT '该笔交易的买家付款时间。 格式为 yyyy-MM-dd HH:mm:ss。',
  `is_total_fee_adjust` varchar(1) DEFAULT NULL COMMENT '该交易是否调整过价格',
  `use_coupon` varchar(1) DEFAULT NULL COMMENT '是否在交易过程中使用了红包',
  `discount` varchar(16) DEFAULT NULL COMMENT '支付宝系统会把 discount 的值 加到交易金额上，如果有折扣， 本参数为负数，单位为元',
  `refund_status` varchar(32) DEFAULT NULL COMMENT '取值范围请参见“11.4 退款状 态”',
  `gmt_refund` datetime DEFAULT NULL COMMENT '卖家退款的时间，退款通知时会 发送。 格式为 yyyy-MM-dd HH:mm:ss。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付宝交易日志';

/*Table structure for table `acct_tradelog_weixin` */

DROP TABLE IF EXISTS `acct_tradelog_weixin`;

CREATE TABLE `acct_tradelog_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `biz_orderid` varchar(32) DEFAULT NULL COMMENT '业务订单ID',
  `biz_type` varchar(32) DEFAULT NULL COMMENT '业务类型',
  `return_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL 此字段是通信标识，非交易标识，交易是否成功需要查看result_code来判断',
  `return_msg` varchar(128) DEFAULT NULL COMMENT '返回信息，如非空，为错误原因 签名失败 参数格式校验错误',
  `appid` varchar(32) DEFAULT NULL COMMENT '微信分配的公众账号ID（企业号corpid即为此appId）',
  `mch_id` varchar(32) DEFAULT NULL COMMENT '微信支付分配的商户号',
  `device_info` varchar(32) DEFAULT NULL COMMENT '微信支付分配的终端设备号，',
  `nonce_str` varchar(32) DEFAULT NULL COMMENT '随机字符串，不长于32位',
  `sign` varchar(32) DEFAULT NULL COMMENT '签名',
  `result_code` varchar(16) DEFAULT NULL COMMENT 'SUCCESS/FAIL',
  `err_code` varchar(32) DEFAULT NULL COMMENT '错误返回的信息描述',
  `err_code_des` varchar(128) DEFAULT NULL COMMENT '错误返回的信息描述',
  `openid` varchar(128) DEFAULT NULL COMMENT '用户在商户appid下的唯一标识',
  `is_subscribe` varchar(1) DEFAULT NULL COMMENT '用户是否关注公众账号，Y-关注，N-未关注，仅在公众账号类型支付有效',
  `trade_type` varchar(16) DEFAULT NULL COMMENT 'JSAPI、NATIVE、APP',
  `bank_type` varchar(16) DEFAULT NULL COMMENT '银行类型',
  `total_fee` int(11) DEFAULT NULL COMMENT '订单总金额，单位为分',
  `fee_type` varchar(8) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY，',
  `cash_fee` int(11) DEFAULT NULL COMMENT '现金支付金额订单现金支付金额',
  `cash_fee_type` varchar(16) DEFAULT NULL COMMENT '货币类型，符合ISO4217标准的三位字母代码，默认人民币：CNY',
  `coupon_fee` int(11) DEFAULT NULL COMMENT '代金券或立减优惠金额<=订单总金额，订单总金额-代金券或立减优惠金额=现金支付金额',
  `coupon_count` int(11) DEFAULT NULL COMMENT '代金券或立减优惠使用数量',
  `coupon_id_$n` varchar(32) DEFAULT NULL COMMENT '代金券或立减优惠ID,$n为下标，从0开始编号',
  `coupon_fee_$n` int(11) DEFAULT NULL COMMENT '单个代金券或立减优惠支付金额,$n为下标，从0开始编号',
  `transaction_id` varchar(32) DEFAULT NULL COMMENT '微信支付订单号',
  `out_trade_no` varchar(32) DEFAULT NULL COMMENT '商户系统的订单号，与请求一致。',
  `attach` varchar(128) DEFAULT NULL COMMENT '商家数据包，原样返回',
  `time_end` varchar(16) DEFAULT NULL COMMENT '支付完成时间，格式为yyyyMMddHHmmss，如2009年12月25日9点10分10秒表示为20091225091010。',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信交易日志';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
