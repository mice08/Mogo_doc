use mogoroomdb;

/* 添加芝麻分显示状态字段 */
ALTER TABLE user_zhima_score ADD COLUMN displayStatus tinyint(1) NOT NULL DEFAULT 1 COMMENT '芝麻分显示状态(0:隐藏 1:显示)';
ALTER TABLE user_zhima_score_his ADD COLUMN displayStatus tinyint(1) NOT NULL DEFAULT 1 COMMENT '芝麻分显示状态(0:隐藏 1:显示)';