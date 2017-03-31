CREATE TABLE `mseg_sms_willsend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNum` varchar(11)  NOT NULL COMMENT '发送手机',
  `willsendTime` datetime NOT NUL COMMENT '预计发送时间',
  `message` varchar(500)  NOT NULL COMMENT '短信内容',
  `isSend` tinyint(4) NOT NUL COMMENT '0:未发送。1:已发送',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

