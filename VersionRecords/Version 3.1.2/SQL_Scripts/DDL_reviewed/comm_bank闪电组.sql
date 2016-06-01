/*  Database name `mogoroomdb` ，修改comm_bank表sort字段名称为isHhot，
之前sort用于排序，后来讨论使用hot表示该行数据是否常用*/
USE mogoroomdb;
ALTER TABLE comm_bank ADD COLUMN isHot TINYINT(1) DEFAULT 0 COMMENT"是否常用(1:是 0:否)" AFTER isLoanBand;