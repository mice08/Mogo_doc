use mogoroomdb;

/* 已退房历史数据，账务结算标记 设置为账务已结算 */
update oder_signedorder set acctFinished = 1 where status = 5;