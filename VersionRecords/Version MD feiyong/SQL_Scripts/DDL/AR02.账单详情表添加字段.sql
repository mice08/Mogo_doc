/*
  账单详情表增加费用类型父类id字段
*/
USE acct;

alter table acct_billdtl add `parent` int(11) DEFAULT '0' COMMENT '父类id';
