use mogoroomdb;

/*用户配置选项值修改*/
ALTER TABLE `user_config` MODIFY COLUMN `optVal` VARCHAR(600) NULL COMMENT '选项值';

