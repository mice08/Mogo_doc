/*工作账表添加房东id索引*/
USE mogoroomdb;

alter table bill_cash_notes add index cash_landlordId (landlordId);