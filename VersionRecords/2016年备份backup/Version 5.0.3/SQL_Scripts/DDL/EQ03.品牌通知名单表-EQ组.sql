/* Database name `mogoroomdb` ，品牌通知名单表*/
use mogoroomdb;

DROP TABLE IF EXISTS `brand_notification` ;

CREATE TABLE `brand_notification`(
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '自增Id',
	`employeeId` INT(11) NOT NULL COMMENT '员工id',
	`createBy` INT(11) NOT NULL COMMENT '创建人',
	`createByType` TINYINT(2) DEFAULT NULL COMMENT '创建人类型',
	`createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`updateBy` INT(11) DEFAULT NULL COMMENT '更新人',
	`updateTime` TIMESTAMP NULL COMMENT '更新时间',
	`updateByType` TINYINT(2) DEFAULT NULL COMMENT '更新人类型',
	`valid` TINYINT(4) DEFAULT 1 COMMENT '状态,是否有效',
	`soDoneCode` INT(32) DEFAULT NULL COMMENT '操作流水号',
	 PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='品牌通知名单表';