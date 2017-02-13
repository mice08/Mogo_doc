use mogoroomdb;

/*增加状态字段 */
ALTER TABLE `perm_role_function` ADD COLUMN `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '逻辑删除状态 1:有效 0:无效' AFTER `function_id`;

ALTER TABLE `perm_role_function` DROP PRIMARY KEY,
  ADD INDEX (`role_id`),
  ADD INDEX (`function_id`);