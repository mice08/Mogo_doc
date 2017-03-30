/* Database name `mogoroomdb` ，新增账单退款字段*/
use mogoroomdb;

alter table acct.acct_bill add column `refundAmount` DECIMAL(10,2) DEFAULT NULL COMMENT '总退款金额(押金及其他)';

alter table acct.acct_bill add column `foregiftRefundAmount` DECIMAL(10,2) DEFAULT NULL COMMENT '押金退款金额';