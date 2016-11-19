/* Database name `mogoroomdb` ，新增账单退款字段*/
use mogoroomdb;

alter table acct_bill add column `refundAmount` DECIMAL(10,2) DEFAULT NULL COMMENT '退款金额';

alter table acct_bill add column `depositRefundAmount` DECIMAL(10,2) DEFAULT NULL COMMENT '押金退款金额';