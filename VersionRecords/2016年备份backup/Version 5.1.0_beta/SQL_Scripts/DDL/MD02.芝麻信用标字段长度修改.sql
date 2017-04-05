/* Database name `mogoroomdb`, user_zhima_score,user_zhima_score_his表errorCode字段长度调整 */
USE mogoroomdb;

ALTER TABLE user_zhima_score MODIFY COLUMN errorCode VARCHAR(64) DEFAULT NULL COMMENT '返回状态，记录芝麻信用返回的异常编码';
ALTER TABLE user_zhima_score_his MODIFY COLUMN errorCode VARCHAR(64) DEFAULT NULL COMMENT '返回状态，记录芝麻信用返回的异常编码';