/* 
Database name `acct`
修改见证系统流水表状态字段
*/

use acct;
ALTER TABLE `acct_paylog_mybank` modify COLUMN `fail_reason` varchar(500) NULL COMMENT '失败原因';

ALTER TABLE `acct_paylog_mybank` modify COLUMN `refund_status` varchar(50) NULL COMMENT '退款状态';

ALTER TABLE `acct_paylog_mybank` modify COLUMN `uid` varchar(50) NULL COMMENT '用户标识';