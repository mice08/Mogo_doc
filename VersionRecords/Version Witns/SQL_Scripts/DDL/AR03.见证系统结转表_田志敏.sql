/* 
Database name `acct`
见证系统网商结转表
*/
use acct;


/*
1、预估表容量:2000-4000条/天
2、每次读取量:在2000-4000条左右
3、主要查询根据id 或者根据时间段；
*/

CREATE TABLE `acct_carryover` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `soDoneCode` varchar(50) DEFAULT NULL COMMENT '业务侧流水号',
  `status` tinyint(4) DEFAULT NULL COMMENT '0:待结转 1:已结转',
  `fundChannel` tinyint(4) DEFAULT NULL COMMENT '支付渠道',
  `amount` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` tinyint(3) DEFAULT NULL COMMENT '创建人类型',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` int(11) DEFAULT NULL COMMENT '更新人类型',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '变更时间',
  PRIMARY KEY (`id`),
  KEY `idx_createTime` (`createTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='网商结转表';