CREATE TABLE `user_loginlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id号',
  `loginAccount` varchar(100) NOT NULL COMMENT '登录名',
  `loginType` int(11) NOT NULL COMMENT '登录类型(1:租客 2:房东)',
  `url` varchar(100) DEFAULT NULL COMMENT '访问地址',
  `accessType` varchar(20) DEFAULT NULL COMMENT '访问类型',
  `browser` varchar(100) DEFAULT NULL COMMENT '浏览器',
  `clientIp` varchar(32) DEFAULT NULL COMMENT '客户端IP',
  `terminalId` varchar(100) DEFAULT NULL COMMENT '终端编号',
  `terminalType` varchar(100) DEFAULT NULL COMMENT '终端类型(1:手机APP 2:PC浏览器)',
  `loginStatus` int(11) DEFAULT NULL COMMENT '登录状态(2001:成功 300101:用户名不存在 300102:手机号不存在 300103:密码错误 300104:系统错误)',
  `accessResult` varchar(20) DEFAULT NULL COMMENT '访问结果',
  `accessTime` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户登录日志'

