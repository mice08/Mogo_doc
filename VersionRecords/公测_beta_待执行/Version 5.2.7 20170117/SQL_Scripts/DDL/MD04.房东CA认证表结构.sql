use mogoroomdb;

/*房东CA认证表*/

CREATE TABLE `user_landlord_caIdentification`(  
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '房东ca认证表id',
	`landlordId` INT(11) NOT NULL COMMENT '房东id',
	`phone` varchar(14) NOT NULL COMMENT '手机号(唯一标识)',
	`identityId` varchar(20) DEFAULT NULL COMMENT '身份证号',
	`name` varchar(20) DEFAULT NULL COMMENT '房东姓名',
	`applyCityId` int(11) DEFAULT NULL COMMENT '房东申请城市id',
	`acctType` tinyint(1) NOT NULL COMMENT '房东类型 (0:企业版房东,1:个人版房东)',
	`address` varchar(60) DEFAULT NULL COMMENT '居住地址',
	`account` varchar(100) DEFAULT NULL COMMENT '账号',
	`password` varchar(100) DEFAULT NULL COMMENT '密码',
	`uid` varchar(100) NOT NULL COMMENT '第三方ca认证返回ID',
	`status` TINYINT(1) DEFAULT '1' COMMENT '资质状态（1: ca未认证,2: ca已认证）',
	`remark` VARCHAR(512) DEFAULT NULL COMMENT '备注',
	`createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT(11) COMMENT '创建人',
	`createByType` TINYINT(1) COMMENT '创建人类型',
	`updateTime` DATETIME COMMENT '更新时间',
	`updateBy` INT(11) COMMENT '更新人id',
	`updateByType` TINYINT(1) COMMENT '更新人类型',
	`valid` TINYINT(1) DEFAULT 1 COMMENT '该数据是否有效(1:有效,0:无效)',
  PRIMARY KEY (`id`),
  INDEX `landlordId` (`landlordId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东CA认证表' ;