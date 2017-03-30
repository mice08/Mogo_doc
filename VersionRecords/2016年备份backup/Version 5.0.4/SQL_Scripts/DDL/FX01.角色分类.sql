use mogoroomdb;
/*该字段用于给角色进行分类标记*/
ALTER TABLE `perm_role` ADD roleGroup varchar(20) NOT NULL COMMENT '角色分类';
