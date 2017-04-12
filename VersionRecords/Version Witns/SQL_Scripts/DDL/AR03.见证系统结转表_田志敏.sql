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
  `id` INT(11) DEFAULT NULL COMMENT '自增id',
  `soDoneCode` VARCHAR(50) DEFAULT NULL COMMENT '业务侧流水号',
  `status` TINYINT(4) DEFAULT NULL COMMENT '0:待结转 1:已结转',
  `fundChannel` TINYINT(4) DEFAULT NULL COMMENT '支付渠道',
  `amount` DECIMAL(10,2) DEFAULT NULL COMMENT '金额',
  `createBy` INT(11) DEFAULT NULL COMMENT '创建人',
  `createByType` TINYINT(3) DEFAULT NULL COMMENT '创建人类型',
  `createTime` DATETIME DEFAULT NULL COMMENT '创建时间',
  `updateBy` INT(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` INT(11) DEFAULT NULL COMMENT '更新人类型',
  `updateTime` DATETIME DEFAULT NULL COMMENT '更新时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='网商结转表';