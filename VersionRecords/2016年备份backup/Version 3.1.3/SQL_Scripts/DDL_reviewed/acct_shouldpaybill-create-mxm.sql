use acct;

ALTER TABLE `acct_bill`
MODIFY COLUMN `status`  tinyint(4) NOT NULL COMMENT '状态(0:未支付完成 1:线上支付完成 2:作废 3:线下支付完成 4:线下支付且作废)' AFTER `toAcctId`;

CREATE TABLE `acct_shouldpaybill` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `billId` int(32) NOT NULL COMMENT '账单编号',
  `billType` int(11) NOT NULL COMMENT '账单类型',
  `amount` decimal(10,2) NOT NULL COMMENT '账单总金额',
  `unpayAmount` decimal(10,2) NOT NULL COMMENT '未结清费用',
  `acctId` int(11) NOT NULL COMMENT '付款账号',
  `toAcctId` int(11) DEFAULT NULL COMMENT '收款账号',
  `status` tinyint(4) NOT NULL COMMENT '状态(0:未支付完成, 1:线上支付完成, 2:作废, 3:线下支付完成, 4:线下支付且作废',
  `sendFlag` tinyint(4) DEFAULT '2' COMMENT '是否发送 1:未发送 2:已发送',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(1024) NOT NULL COMMENT '备注',
  `origBillId` int(32) DEFAULT NULL COMMENT '关联账单编号',
  `deadline` date NOT NULL COMMENT '账单应付款日',
  `paidPenalty` decimal(10,2) DEFAULT NULL COMMENT '已支付滞纳金额',
  `lastPayTime` datetime DEFAULT NULL COMMENT '最后一次支付的时间',
  `subsId` bigint(11) DEFAULT NULL COMMENT '订购ID',
  PRIMARY KEY (`id`),
  KEY `billId` (`billId`),
  KEY `acctId` (`acctId`),
  KEY `toAcctId` (`toAcctId`),
  KEY `deadline` (`deadline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='每日应付款账单表，根据deadline提取';
