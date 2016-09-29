
/*创建用户配置表  */
use mogoroomdb;

DROP TABLE IF EXISTS user_config;
CREATE TABLE `user_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `orgId` int(11) NOT NULL COMMENT '组织id',
  `configGroup` varchar(127) NOT NULL COMMENT '配置组名',
  `optGroup` varchar(100) NOT NULL COMMENT '选项组名',
  `optName` varchar(255) DEFAULT NULL COMMENT '选项名称',
  `optVal` varchar(255) DEFAULT NULL COMMENT '选项值',
  `valType` tinyint(2) NOT NULL COMMENT '选项值类型',
  `extral1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `extral2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE,
  KEY `optGroup` (`optGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户配置';


/*创建用户组织配置关系表  */
DROP TABLE IF EXISTS user_config_org;
CREATE TABLE `user_config_org` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orgId` int(11) NOT NULL COMMENT '适用组织',
  `userConfigId` int(11) NOT NULL COMMENT '配置选项id',
  `isDefault` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  `optGroup` varchar(255) DEFAULT NULL COMMENT '选项组名',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户组织配置关系';


/*创建用户配置历史表  */
DROP TABLE IF EXISTS user_config_his;
CREATE TABLE `user_config_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `orgId` int(11) NOT NULL COMMENT '组织id',
  `configGroup` varchar(127) NOT NULL COMMENT '配置组名',
  `optGroup` varchar(100) NOT NULL COMMENT '选项组名',
  `optName` varchar(255) DEFAULT NULL COMMENT '选项名称',
  `optVal` varchar(255) DEFAULT NULL COMMENT '选项值',
  `valType` tinyint(2) NOT NULL COMMENT '选项值类型',
  `extral1` varchar(255) DEFAULT NULL COMMENT '附加字段1',
  `extral2` varchar(255) DEFAULT NULL COMMENT '附加字段2',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  `operType` char(1)  COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户配置历史表';

/*创建用户组织配置关系历史表  */
DROP TABLE IF EXISTS user_config_org_his;
CREATE TABLE `user_config_org_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orgId` int(11) NOT NULL COMMENT '适用组织',
  `userConfigId` int(11) NOT NULL COMMENT '配置选项id',
  `isDefault` tinyint(1) DEFAULT NULL COMMENT '是否默认',
  `optGroup` varchar(255) DEFAULT NULL COMMENT '选项组名',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `valid` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateBy` int(11) NOT NULL COMMENT '修改人',
  `updateByType` int(11) DEFAULT NULL COMMENT '修改人类型',
  `soDoneCode` int(32) NOT NULL COMMENT '操作流水号',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `operType` char(1)  COMMENT '该历史记录产生时的操作类型(A:新增 U:更新 D:删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户组织配置关系历史表';