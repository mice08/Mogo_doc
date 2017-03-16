
/**提现相关数据**/
USE acct;
ALTER TABLE `acct_withdrawschedule` ADD COLUMN willSendTime DATETIME DEFAULT NULL COMMENT '预计发送时间';
