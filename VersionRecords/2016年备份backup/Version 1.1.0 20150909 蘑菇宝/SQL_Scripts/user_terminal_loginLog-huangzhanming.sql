CREATE TABLE `user_terminal_loginLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `user_type` int(11) DEFAULT NULL COMMENT '用户类型(1:房东 2:租客)',
  `terminal_id` varchar(100) DEFAULT NULL COMMENT '终端编号',
  `terminal_type` varchar(100) DEFAULT NULL COMMENT '终端类型',
  `terminal_os` varchar(100) DEFAULT NULL COMMENT '终端操作系统',
  `terminal_osversion` varchar(100) DEFAULT NULL COMMENT '终端操作系统版本号',
  `terminal_manufacturer` varchar(100) DEFAULT NULL COMMENT '终端生产厂商',
  `last_time` datetime DEFAULT NULL COMMENT '最后访问时间',
  `regId` varchar(100) DEFAULT NULL COMMENT '消息标识',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`user_type`,`last_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='终端登录信息'
