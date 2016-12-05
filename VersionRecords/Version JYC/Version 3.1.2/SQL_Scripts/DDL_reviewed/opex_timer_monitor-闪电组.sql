﻿/*  Database name `mogoroomdb` ，添加定时器监控表*/
USE mogoroomdb;
DROP TABLE IF EXISTS opex_timer_monitor;

CREATE TABLE IF NOT EXISTS `opex_timer_monitor` (
    id INT(11)  AUTO_INCREMENT NOT NULL COMMENT '主键ID',
    timerName VARCHAR(30) NOT NULL COMMENT '定时器名称',
    beginTime datetime NOT NULL COMMENT '执行开始时间',
    endTime datetime NOT NULL COMMENT '执行结束时间',
    busiType varchar(11) NULL COMMENT '操作类型(参考comm_busitype表的busiType)',
    targetBeginTime datetime NOT NULL COMMENT '被影响数据的开始时间',
    targetEndTime datetime NOT NULL COMMENT '被影响数据的结束时间',
    targetCurrTime datetime NOT NULL COMMENT '被影响数据的当前时间',
    result tinyint(1) NOT NULL COMMENT '结果(0:失败 1:成功)',
    soDoneCode int(11) NOT NULL COMMENT '业务操作id(参考comm_business_record表的id)',
    remark VARCHAR(256) COMMENT '备注',
    PRIMARY KEY (`id`))
   ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='定时器监控表';