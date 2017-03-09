/*
修改表：增加bizd房东表的name字段长度
1. 表是空表
*/
use bizd;

ALTER TABLE `bizd_user_landlord`  MODIFY COLUMN NAME VARCHAR(50) COMMENT '房东名称';

