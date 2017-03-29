/* 
Database name `acct`
见证系统对账单 提供数据给财务对账使用
*/
use acct
create table acct_jz_order (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`platformId` BIGINT(20) NOT NULL COMMENT '平台id',
	`orderNo` BIGINT(20) NOT NULL COMMENT '业务订单号',
	`platformOrderNo` BIGINT(20) NOT NULL COMMENT '平台订单号',
	`productName` varchar(50) NOT NULL COMMENT '商品名称',
	`payMoney` DECIMAL(10,2) NOT NULL COMMENT '交易金额',
	`payerIdenti` varchar(50) NOT NULL COMMENT '付款方标识',
	`payerId` INT(11) NOT NULL COMMENT '付款方ID',
	`payeeIdenti` varchar(50) NOT NULL COMMENT '收款方标识', 
	`payeeId` INT(11) NOT NULL COMMENT '收款方ID',
	`remark` varchar(200) NOT NULL COMMENT '交易备注',
	`tradeTime` DATETIME NOT NULL COMMENT '交易结束时间',
	`tradeStatus` varchar(20) NOT NULL COMMENT '交易状态',
	`tradeStatusCode` varchar(20) NOT NULL COMMENT '交易状态码',
	`tradeType` varchar(20) NOT NULL COMMENT '交易类型',
	`tradeTypeCode` varchar(20) NOT NULL COMMENT '交易类型码',
	`createTime` DATETIME NOT NULL COMMENT '创建时间',
	`createBy` INT(11) NOT NULL COMMENT '创建人',
	`createByType` TINYINT(4) NOT NULL COMMENT '创建人类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='见证系统对账单';
