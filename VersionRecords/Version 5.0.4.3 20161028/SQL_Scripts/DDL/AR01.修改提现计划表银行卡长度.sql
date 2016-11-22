/* Database name `acct_withdrawschedule` ,acct_withdrawschedule表bankcardNumber字段长度调整,生产环境已经执行，不用再跑了，主要跑测试环境 */
USE acct;
 
ALTER TABLE `acct_withdrawschedule`  MODIFY COLUMN  `bankcardNumber` VARCHAR(32)   NOT NULL DEFAULT ''  COMMENT '银行卡号码'; 