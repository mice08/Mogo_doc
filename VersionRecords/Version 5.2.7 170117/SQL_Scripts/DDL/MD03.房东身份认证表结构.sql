use mogoroomdb;

/*房东身份认证表*/
CREATE TABLE `user_landlord_identity`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '房东身份认证表id',
  `landlordId` INT(11) NOT NULL COMMENT '房东id',
	`identityId` varchar(20) DEFAULT NULL COMMENT '身份证号',
	`name` varchar(20) DEFAULT NULL COMMENT '房东姓名',
  `status` TINYINT(1) DEFAULT '1' COMMENT '资质状态（1:认证成功 2: 认证失败）',
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
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东身份认证表' ;