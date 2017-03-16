use mogoroomdb;
/*58小区表增加valid字段*/

ALTER TABLE flat_joint_58community ADD COLUMN valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效 1:有效)';