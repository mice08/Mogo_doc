/* 
Database name `mogoroomdb`
见证系统对账单 提供数据给财务对账使用
*/
use mogorommdb
create table jz_order (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
	`platformId` BIGINT(20) NOT NULL COMMENT '平台id',
	`orderNumber` BIGINT(20) NOT NULL COMMENT '业务订单号',
	`platformOrderNumber` BIGINT(20) NOT NULL COMMENT '平台订单号',
	`name` varchar(50) NOT NULL COMMENT '名称',
	`payMoney` DECIMAL(10,2) NOT NULL COMMENT '交易金额',
	`payerMark` varchar(50) NOT NULL COMMENT '付款方标识',
	`payerId` INT(11) NOT NULL COMMENT '付款方ID',
	`receivedMark` varchar(50) NOT NULL COMMENT '收款方标识', 
	`receivedId` INT(11) NOT NULL COMMENT '收款方ID',
	`remark` varchar(200) NOT NULL COMMENT '交易备注',
	`endTime` DATETIME NOT NULL COMMENT '结束时间',
	`status` varchar(20) NOT NULL COMMENT '交易状态',
	`statusCode` varchar(20) NOT NULL COMMENT '交易状态码',
	`type` varchar(20) NOT NULL COMMENT '交易类型',
	`typeCode` varchar(20) NOT NULL COMMENT '交易状态码',
	`createTime` DATETIME NOT NULL COMMENT '创建时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='见证系统对账单'
