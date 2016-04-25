/*  Database name `mogoroomdb` ，修改comm_bank表sort字段名称为hot，
之前sort用于排序，后来讨论使用hot表示该行数据是否常用*/
USE mogoroomdb;
ALTER TABLE comm_bank CHANGE COLUMN  sort isHot TINYINT(1) COMMENT"是否常用(1:是 0:否)"
