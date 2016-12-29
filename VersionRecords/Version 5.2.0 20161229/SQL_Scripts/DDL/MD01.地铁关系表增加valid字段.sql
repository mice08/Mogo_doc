use mogoroomdb;

/* 添加是否有效字段 */
ALTER TABLE city_community_station ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';