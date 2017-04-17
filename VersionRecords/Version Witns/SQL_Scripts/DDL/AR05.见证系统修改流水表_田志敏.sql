/* 
Database name `acct`
修改见证系统流水表提现状态字段
*/
use acct;

ALTER TABLE acct_paylog_mybank MODIFY COLUMN `withdrawal_status` VARCHAR(32) DEFAULT NULL COMMENT '退款状态';