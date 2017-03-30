DROP TABLE IF EXISTS `bill_account_mapping`;
CREATE TABLE `bill_account_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '支付订单号',
  `payOrderNo` VARCHAR(32) NOT NULL COMMENT '统一支付订单号',
  `billId` int(11) DEFAULT NULL COMMENT '账务系统账单号',
  `billStatus` int(1) DEFAULT NULL COMMENT '账单状态 0：未支付，1：已支付',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '账单金额',
  `amountPaid` decimal(10,0) DEFAULT NULL COMMENT '账单已付金额',
  `accountId` int(11) DEFAULT NULL COMMENT '账单付款账号',
  `toAcccountId` int(11) DEFAULT NULL COMMENT '账单收款账号',
  `updateTime` datetime DEFAULT NULL COMMENT '账单更新时间',
  `orderType` int(1) DEFAULT NULL COMMENT '订单类型',
  `orderId` int(11) DEFAULT NULL COMMENT '订单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单/账单对应表';

