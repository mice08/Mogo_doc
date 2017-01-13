use mogoroomdb;

/*岗位角色关系表*/
CREATE TABLE `perm_position_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `positionId` int(11) NOT NULL COMMENT '岗位Id',
  `roleId` int(11) NOT NULL COMMENT '角色Id',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0：无效，1：有效)',
  `valid` tinyint(1) DEFAULT '1' COMMENT '是否删除(0:删除 1:正常)',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` int(11) DEFAULT NULL COMMENT '创建人',
  `createByType` int(11) DEFAULT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `updateBy` int(11) DEFAULT NULL COMMENT '更新人',
  `updateByType` int(11) DEFAULT NULL COMMENT '更新人类型(参考字典表组名:userType)',
  PRIMARY KEY (`id`),
  KEY `positionId` (`positionId`),
  KEY `roleId` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='岗位角色关系表';
