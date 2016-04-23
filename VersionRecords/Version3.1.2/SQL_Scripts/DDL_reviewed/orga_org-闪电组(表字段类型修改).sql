use mogoroomdb;
/**修改排序值类型**/
ALTER TABLE orga_org MODIFY COLUMN sort int(10) DEFAULT NULL COMMENT '排序值';