/* 增加是否有效字段 */
use mogoroomdb;

ALTER TABLE city_community_station ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';
ALTER TABLE flat_joint_58community ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';
ALTER TABLE flat_joint_ganjicommunity ADD COLUMN valid tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';