/* Database name `mogoroomdb`, 增加TP城市开关字段 */
USE mogoroomdb;
ALTER TABLE city ADD isTP tinyint(1) DEFAULT 0 COMMENT '是否TP使用(0:否 1:是)';