/*  Database name `mogoroomdb`  销售同步TP任务表*/
use mogoroomdb;
/*
1、预估表容量:3000/每天
2、每次读取量:1-20
3、主要查询
select *
	from tp_sync_sales
 where orderId=? and contractId=? and busiKey = ? and busiType = ? and valid = 1;
*/
CREATE TABLE `oder_synctp_record` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `serialNo` varchar(32) NOT NULL COMMENT '流水号',
  `subsId` int NOT NULL COMMENT '统一订购ID',
  `orderId` int NOT NULL COMMENT '签约单id',
  `contractId` int NOT NULL COMMENT '合同id',
  `busiType` int NOT NULL COMMENT '业务类型(com.mogoroom.service.base.enums.BusiTypeEnum)',
  `busiKey` int NOT NULL COMMENT '业务编号(contractId||acctBillId)',
  `busiChannel` int NOT NULL COMMENT '业务渠道',
  `status` tinyint(4) NOT NULL COMMENT '状态(0:发送中1:同步成功2:同步失败)',
  `tries` int DEFAULT NULL COMMENT '尝试次数',
  `requestTime` datetime DEFAULT NULL COMMENT '请求时间',
  `responseTime` datetime DEFAULT NULL COMMENT '响应时间',
  `valid` int NOT NULL DEFAULT '1' COMMENT '数据有效性(0:无效 1:有效)',
  PRIMARY KEY (`id`),
  KEY `idx_busiKey` (`busiKey`,`busiType`),
  KEY `idx_seq` (`serialNo`),
  KEY `idx_subs` (`subsId`),
  KEY `idx_cntr` (`orderId`,`contractId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='销售同步TP任务记录表';

