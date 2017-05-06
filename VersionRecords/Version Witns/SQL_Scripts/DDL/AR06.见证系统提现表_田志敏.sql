/* 
Database name `acct`
修改见证系统流水表提现状态字段
*/
use acct;

ALTER TABLE acct.acct_withdrawschedule add COLUMN `acctId` int(11) DEFAULT NULL COMMENT '提现账户ID';