/*
  账单类型增加父类id字段
*/
USE mogoroomdb;

alter table acct_billdtltype `parent` int(11) DEFAULT '0' COMMENT '父类id';
