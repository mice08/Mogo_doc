/* Database name `mogoroomdb`， join 检查结果存储表 */
USE mogoroomdb;

DROP TABLE IF EXISTS comm_join_check_result;

CREATE TABLE `comm_join_check_result` (
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
	`classMethod` VARCHAR(100) NULL DEFAULT NULL COMMENT '调用方法',
	`sql` VARCHAR(100) NULL DEFAULT NULL COMMENT '异常sql',
	`createDate` DATE NULL DEFAULT NULL COMMENT '创建日期',
	PRIMARY KEY (`id`)
)
COMMENT='join 检查结果存储表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;