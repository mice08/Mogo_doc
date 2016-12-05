

CREATE TABLE `access_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `url` varchar(100) DEFAULT NULL COMMENT '访问地址',
  `accessType` varchar(20) DEFAULT NULL COMMENT '访问类型',
  `ipAddress` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `browser` varchar(100) DEFAULT NULL COMMENT '浏览器',
  `userName` varchar(100) DEFAULT NULL COMMENT '用户名',
  `terminalType` varchar(100) DEFAULT NULL COMMENT '终端类型',
  `terminalId` varchar(100) DEFAULT NULL COMMENT '终端编号',
  `userAgent` varchar(500) DEFAULT NULL COMMENT '用户代理',
  `accessTime` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='访问记录表';