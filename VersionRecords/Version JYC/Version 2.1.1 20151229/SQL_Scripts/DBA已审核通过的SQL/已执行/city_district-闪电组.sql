/*  Database name `mogoroomdb` ，city_district添加status字段*/
use mogoroomdb;

ALTER TABLE city_district ADD COLUMN status TINYINT(1) DEFAULT 1 COMMENT '0:删除，1:未删除，2:初始化待修正';
