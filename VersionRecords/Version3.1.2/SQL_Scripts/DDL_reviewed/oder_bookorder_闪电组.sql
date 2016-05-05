/*  Database name `mogoroomdb` ，预订单表添加是否已经提醒字段*/
use mogoroomdb;

ALTER TABLE oder_bookorder   
  ADD COLUMN `hasRemind` tinyint(1) NOT NULL default 0 COMMENT '是否已经提醒(0:未提醒 1:已提醒)';