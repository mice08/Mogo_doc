USE mogoroomdb;
ALTER TABLE  `bill_paylog_weixin`   
  ADD  UNIQUE INDEX `P_UNIQUE_ORDER` (`transaction_id`);
  
ALTER TABLE `bill_paylog_zhifubao`   
  ADD  UNIQUE INDEX `P_UNIQUE_ORDER` (`trade_no`);