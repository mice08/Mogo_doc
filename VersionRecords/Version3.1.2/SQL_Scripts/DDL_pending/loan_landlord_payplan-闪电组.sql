/*  Database name `mogoroomdb` ，房东贷款放款表增加是否退还保证金字段*/
use mogoroomdb;

ALTER TABLE loan_landlord_payplan ADD refundStatus INT(1) NOT NULL DEFAULT 0 COMMENT '是否退还保证金 0:否 1:是 2:不需要退';