use mogoroomdb;

/*orga_employeejobrelation表添加valid字段 */
ALTER TABLE `orga_employeejobrelation` ADD COLUMN valid tinyint(1) DEFAULT '1' COMMENT '是否有效(0:否  1:是 )';

/*orga_tag表添加valid字段 */
ALTER TABLE `orga_tag` ADD COLUMN valid tinyint(1) DEFAULT '1' COMMENT '是否有效(0:否  1:是 )';






