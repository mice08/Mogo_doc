use mogoroomdb;

/*修改用户模块性别为非空，并且默认值为1 */
ALTER TABLE `user_landlord` MODIFY COLUMN `sex` tinyint(1) NOT NULL default '1' COMMENT '性别（0：女 1：男）';