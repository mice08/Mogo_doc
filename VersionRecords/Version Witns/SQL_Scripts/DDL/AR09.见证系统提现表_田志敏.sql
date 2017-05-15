/* 
Database name `acct`
修改见证系统流水表提现状态字段
*/
use acct;

ALTER TABLE acct.acct_withdrawschedule add COLUMN `carryResult` int(11) DEFAULT 0 COMMENT '结转标志,0:未结转；1：已结转';