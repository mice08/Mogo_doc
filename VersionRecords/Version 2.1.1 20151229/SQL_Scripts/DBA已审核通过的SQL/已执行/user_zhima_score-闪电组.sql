/*  Database name `mogoroomdb` ，用户芝麻信用分表添加2个新的字段*/
use mogoroomdb;

ALTER TABLE `user_zhima_score` ADD COLUMN errorCode varchar(10) comment '返回状态，记录芝麻信用返回的异常编码', ADD COLUMN errorMesg varchar(50) comment '返回结果，记录芝麻信用返回的异常消息，和编码一一对应';
