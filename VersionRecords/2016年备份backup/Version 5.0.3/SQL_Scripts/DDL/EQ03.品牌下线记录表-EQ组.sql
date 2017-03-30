/* Database name `mogoroomdb` ，新增品牌下线说明表*/
use mogoroomdb;

DROP TABLE IF EXISTS `brand_offline` ;

CREATE TABLE `brand_offline`(
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '自增Id',
	`brandId` INT(11)  NOT NULL COMMENT '品牌Id',
	`offlineReason` VARCHAR(50) DEFAULT NULL COMMENT '下线原因',
	`offlineDays` INT(4) NOT NULL COMMENT '下线天数',
	`createBy` INT(11) NOT NULL COMMENT '创建人',
	`createByType` TINYINT(2) DEFAULT NULL COMMENT '创建人类型',
	`createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`updateBy` INT(11) DEFAULT NULL COMMENT '更新人',
	`updateTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
	`updateByType` TINYINT(2) DEFAULT NULL COMMENT '更新人类型',
	`valid` TINYINT(4) DEFAULT 1 COMMENT '状态,是否有效',
	`soDoneCode` INT(32) NULL COMMENT '操作流水号',
	`remark` VARCHAR(255) DEFAULT NULL COMMENT '备注',
	 PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='品牌下线说明表';