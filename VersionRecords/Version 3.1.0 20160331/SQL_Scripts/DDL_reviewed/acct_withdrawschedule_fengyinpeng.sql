use acct;
ALTER TABLE  acct.`acct_withdrawschedule` ADD COLUMN signs VARCHAR(128) NOT NULL COMMENT '提现计划签名';