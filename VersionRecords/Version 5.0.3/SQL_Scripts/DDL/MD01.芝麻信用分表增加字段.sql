use mogoroomdb;

/* 芝麻信用分表增加姓名,身份证号字段 */
ALTER TABLE user_zhima_score ADD COLUMN name varchar(20) NOT NULL DEFAULT '' COMMENT '姓名';
ALTER TABLE user_zhima_score ADD COLUMN identityId varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号';

ALTER TABLE user_zhima_score_his ADD COLUMN name varchar(20) NOT NULL DEFAULT '' COMMENT '姓名';
ALTER TABLE user_zhima_score_his ADD COLUMN identityId varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号';