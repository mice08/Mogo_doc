/*  Database name `mogoroomdb` 修改errorCode字段长度*/

use mogoroomdb;

ALTER TABLE `user_zhima_score`   
  CHANGE `errorCode` `errorCode` VARCHAR(64) NULL   COMMENT '返回状态，记录芝麻信用返回的异常编码';
