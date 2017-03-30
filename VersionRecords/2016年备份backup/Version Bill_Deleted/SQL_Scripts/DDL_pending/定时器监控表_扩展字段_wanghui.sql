------------------------------------- 变更------------------------------------------------
/*第一次运行 不保存的字段去除 not null 约束*/
ALTER TABLE opex_timer_monitor MODIFY endTime datetime NULL COMMENT ' 执行结束时间';  
ALTER TABLE opex_timer_monitor MODIFY targetBeginTime datetime NULL COMMENT ' 被影响数据的开始时间';  
ALTER TABLE opex_timer_monitor MODIFY targetEndTime datetime NULL COMMENT ' 被影响数据的结束时间';
ALTER TABLE opex_timer_monitor MODIFY targetCurrTime datetime NULL COMMENT ' 被影响数据的当前时间';
ALTER TABLE opex_timer_monitor MODIFY soDoneCode int(11) NULL COMMENT ' 业务操作id(参考comm_business_record表的id)';
ALTER TABLE opex_timer_monitor MODIFY result tinyint(1) NULL COMMENT ' 结果(0:失败 1:成功)';

/*添加字段 断点ID*/
ALTER TABLE opex_timer_monitor add currPoint int(11) NULL COMMENT ' 任务运行中，断点-业务ID';
ALTER TABLE opex_timer_monitor add retryCount int NULL COMMENT '(任 务)重试次数';
ALTER TABLE opex_timer_monitor add status int NOT NULL COMMENT ' 状态：1、启动 2、结束 ';