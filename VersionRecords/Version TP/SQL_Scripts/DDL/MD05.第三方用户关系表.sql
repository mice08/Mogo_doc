use mogoroomdb;

/*第三方用户表*/
CREATE TABLE `user_third_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openId` varchar(32) NOT NULL COMMENT '第三方Id',
  `openSource` int(11) NOT NULL COMMENT '第三方来源(1:支付宝，2:微信)',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `userType` int(11) DEFAULT NULL COMMENT '用户类型(参考字典表组名:userType)',
  `userName` varchar(32) DEFAULT NULL COMMENT '用户姓名',
  `cardType` varchar(32) DEFAULT NULL COMMENT '证件类型(参考字典表组名:credential)',
  `cardNo` varchar(32) DEFAULT NULL COMMENT '证件号码',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别(0:未知,1:男 ,2:女)',
  `constellation` varchar(32) DEFAULT NULL COMMENT '星座(参考字典表组名:constellation)',
  `hobby` varchar(255) DEFAULT NULL COMMENT '兴趣爱好',
  `career` varchar(255) DEFAULT NULL COMMENT '职业',
  `channel` int(10) DEFAULT NULL COMMENT '信息来源渠道(参考字典表组名:channel)',
  `zhimaScore` int(10) DEFAULT NULL COMMENT '芝麻分',
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
  KEY `openId` (`openId`),
  KEY `cardId` (`cardNo`,`cardType`),
  KEY `userId` (`userId`,`userType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';
