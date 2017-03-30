CREATE TABLE `mesg_sms_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phoneNum` varchar(11) DEFAULT NULL COMMENT '手机号',
  `message` varchar(500)  DEFAULT NULL COMMENT '短信内容',
  `checkEmpId` int(11) DEFAULT NULL COMMENT '审核人',
  `checkTime` datetime DEFAULT NULL COMMENT '审核时间',
  `checkState` tinyint(4) DEFAULT NULL COMMENT '审核状态 0：通过 1：未通过',
  `checkReason` varchar(256)  DEFAULT NULL COMMENT '原因',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
