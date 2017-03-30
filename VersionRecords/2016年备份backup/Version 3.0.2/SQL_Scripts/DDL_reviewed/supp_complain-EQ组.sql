/*  Database name `mogoroomdb` ，投诉表添加字段*/
use mogoroomdb;

ALTER TABLE supp_complain 
ADD COLUMN complainTarget INT(1) NOT NULL DEFAULT 9 COMMENT '投诉对象(1:室友 2:房东 3:管家 9:其他)' AFTER complainPhone;