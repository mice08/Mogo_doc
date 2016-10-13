
/*创建用户配置表  */
use mogoroomdb;

DROP TABLE IF EXISTS user_config;
CREATE TABLE `user_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `orgId` int(11) NOT NULL COMMENT '组织id,-2全局，-1总店，其他是分店',
  `configGroup` varchar(127) NOT NULL COMMENT '配置组名',
  `optGroup` varchar(127) NOT NULL COMMENT '选项组名',
  `optName` varchar(255) DEFAULT NULL COMMENT '选项名称',
  `optVal` varchar(511) DEFAULT NULL COMMENT '选项值',
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
  `isDefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认，1-默认，0-非默认',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`) USING BTREE,
  KEY `optGroup` (`optGroup`),
  KEY `orgId` (`orgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户配置';


/*创建用户配置历史表  */
DROP TABLE IF EXISTS user_config_his;
CREATE TABLE `user_config_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userId` int(11) NOT NULL COMMENT '用户id',
  `userType` tinyint(2) NOT NULL COMMENT '用户类型',
  `orgId` int(11) NOT NULL COMMENT '组织id,-2全局，-1总店，其他是分店',
  `configGroup` varchar(127) NOT NULL COMMENT '配置组名',
  `optGroup` varchar(127) NOT NULL COMMENT '选项组名',
  `optName` varchar(255) DEFAULT NULL COMMENT '选项名称',
  `optVal` varchar(511) DEFAULT NULL COMMENT '选项值',
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
  `isDefault` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认，1-默认，0-非默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户配置历史表';