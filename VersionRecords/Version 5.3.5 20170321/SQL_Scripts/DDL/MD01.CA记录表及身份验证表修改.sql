use mogoroomdb;
/*ca认证表*/
CREATE TABLE `user_caidentification` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'ca认证表id',
	`userId` INT (11) NOT NULL COMMENT '用户ID',
	`userType` TINYINT (1) DEFAULT NULL COMMENT '用户类型',
	`caChannel` TINYINT (2) NOT NULL COMMENT 'ca认证类型',
	`phone` VARCHAR (14) NOT NULL COMMENT '手机号(唯一标识)',
	`identityId` VARCHAR (20) DEFAULT NULL COMMENT '身份证号',
	`name` VARCHAR (50) DEFAULT NULL COMMENT '姓名',
	`applyCityId` INT (11) DEFAULT NULL COMMENT '房东申请城市id',
	`acctType` TINYINT (1) DEFAULT NULL COMMENT '房东类型 (0:企业版房东,1:个人版房东) 在usertype为房东时有值',
	`address` VARCHAR (60) DEFAULT NULL COMMENT '居住地址',
	`account` VARCHAR (100) DEFAULT NULL COMMENT '账号',
	`password` VARCHAR (100) DEFAULT NULL COMMENT '密码',
	`uid` VARCHAR (100) NOT NULL COMMENT '第三方ca认证返回ID',
	`status` TINYINT (1) DEFAULT '1' COMMENT '资质状态（1: ca未认证,2: ca已认证）',
	`remark` VARCHAR (512) DEFAULT NULL COMMENT '备注',
	`createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (11) DEFAULT NULL COMMENT '创建人',
	`createByType` TINYINT (1) DEFAULT NULL COMMENT '创建人类型',
	`updateTime` datetime DEFAULT NULL COMMENT '更新时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '更新人id',
	`updateByType` TINYINT (1) DEFAULT NULL COMMENT '更新人类型',
	`valid` TINYINT (1) DEFAULT '1' COMMENT '该数据是否有效(1:有效,0:无效)',
	PRIMARY KEY (`id`),
	KEY `landlordId` (`userId`) USING BTREE,
	KEY `status` (`status`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 24 DEFAULT CHARSET = utf8mb4 COMMENT = 'CA认证表';

/*身份认证表*/
CREATE TABLE `user_identity` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '身份认证表id',
	`userId` INT (11) DEFAULT NULL COMMENT '用户ID',
	`userType` TINYINT (1) DEFAULT NULL COMMENT '用户类型',
	`identityId` VARCHAR (20) DEFAULT NULL COMMENT '身份证号',
	`name` VARCHAR (50) DEFAULT NULL COMMENT '姓名',
	`status` TINYINT (1) DEFAULT '1' COMMENT '资质状态（1:认证成功 2: 认证失败）',
	`remark` VARCHAR (512) DEFAULT NULL COMMENT '备注',
	`createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (11) DEFAULT NULL COMMENT '创建人',
	`createByType` TINYINT (1) DEFAULT NULL COMMENT '创建人类型',
	`updateTime` datetime DEFAULT NULL COMMENT '更新时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '更新人id',
	`updateByType` TINYINT (1) DEFAULT NULL COMMENT '更新人类型',
	`valid` TINYINT (1) DEFAULT '1' COMMENT '该数据是否有效(1:有效,0:无效)',
	PRIMARY KEY (`id`),
	KEY `landlordId` (`userId`) USING BTREE,
	KEY `status` (`status`) USING BTREE
) ENGINE = INNODB AUTO_INCREMENT = 14 DEFAULT CHARSET = utf8mb4 COMMENT = '身份认证表';

ALTER TABLE user_caidentification MODIFY userId INT (11) NULL COMMENT '用户ID,租客为空,房东不为空';

