CREATE TABLE `user_verify_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `error_type` int(4) DEFAULT NULL COMMENT '错误类型 1:密码验证错误  2:短信验证错误 3:短信发送记录',
  `verify_date` date DEFAULT NULL COMMENT '验证当前日期',
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后验证时间',
  `error_count` int(4) DEFAULT NULL COMMENT '错误次数',
  `user_type` int(2) DEFAULT NULL COMMENT '用户类型 1:房东 2:租客',
  PRIMARY KEY (`id`),
  KEY `user_name` (`user_name`,`error_type`,`verify_date`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户验证错误统计表'



  

