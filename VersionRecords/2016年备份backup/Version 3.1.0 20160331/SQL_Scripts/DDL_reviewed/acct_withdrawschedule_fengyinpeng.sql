use acct;
ALTER TABLE  acct.`acct_withdrawschedule` ADD COLUMN signs VARCHAR(128) NOT NULL COMMENT '提现计划签名';

ALTER TABLE `acct`.`acct_withdrawschedule`  ADD  UNIQUE INDEX `YURREF_IDX` (`yurref`);