/*数据中心一期，主要用于运营一期报表查询*/
use mogoroomdb;

/*
新建表：运营报表_房东_数据_运营   报表昨日快照
预估写入量每天6000-8000条左右
预估读取量每天3000次
主要查询语句 select * from repo_landlord_operate_day where landlordId = '' and recordDate = ''
*/
CREATE TABLE `repo_landlord_operate_day` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
   landlordId INT(11) DEFAULT NULL COMMENT '房东id',
  `recordDate` date DEFAULT NULL COMMENT '数据日期',
  `inAmount` decimal(10,2) DEFAULT NULL COMMENT '总收入',
  `outAmount` decimal(10,2) DEFAULT NULL COMMENT '总支出',
  `rentAmount` decimal(10,2) DEFAULT NULL COMMENT '租金费用收入(不区分线上线下)',
  `otherAmount` decimal(10,2) DEFAULT NULL COMMENT '其他费用收入(不区分线上线下)',
  `operateSignCount` int(8) DEFAULT NULL COMMENT '运营统计签约量',
  `centNoRentRoomCount` int(8) DEFAULT NULL COMMENT '集中式未租房源量',
  `deceNoRentRoomCount` int(8) DEFAULT NULL COMMENT '分散式未租房源量',
  `centRoomRentCount` int(8) DEFAULT NULL COMMENT '集中式已租房源量',
  `deceRoomRentCount` int(8) DEFAULT NULL COMMENT '分散式已租房源量',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `valid` TINYINT(1) DEFAULT '1' COMMENT '该数据是否有效(1:有效 0:无效)',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='运营报表昨日快照';