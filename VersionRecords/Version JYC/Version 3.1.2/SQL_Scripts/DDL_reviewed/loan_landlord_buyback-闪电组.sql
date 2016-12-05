/*  Database name `mogoroomdb` ，在loan_landlord_buyback表中增加1个字段，用来标识部分还款时租客还了多少本金*/
USE mogoroomdb;

ALTER TABLE loan_landlord_buyback ADD COLUMN renterPayedAmount decimal(12,2) not null DEFAULT 0 COMMENT "租客还款金额";