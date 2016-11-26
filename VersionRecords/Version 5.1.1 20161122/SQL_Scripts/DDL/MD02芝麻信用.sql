use mogoroomdb;

/*芝麻分数表和历史表添加删除字段*/
ALTER TABLE `user_zhima_score` ADD valid tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态(1:有效 0:删除)';

ALTER TABLE `user_zhima_score_his` ADD valid tinyint(1) NOT NULL DEFAULT '1' COMMENT '数据状态(1:有效 0:删除)';
