use acct;

ALTER TABLE acct.`acct_bill`
ADD COLUMN `lastPayTime`  datetime NULL  COMMENT '最后一次支付的时间' AFTER `paidPenalty`;




