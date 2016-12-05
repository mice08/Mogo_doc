/* Database name `mogoroomdb`， 添加用户登录次数统计结果临时存储表 */
USE mogoroomdb;

DROP TABLE IF EXISTS repo_logintotal_daily;

CREATE TABLE `repo_logintotal_daily` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` INT(11) DEFAULT NULL COMMENT '用户id',
  `userType` INT(11) DEFAULT NULL COMMENT '用户类型,参考(groupName=userType)，如果是子账号登录此处记录房东id',
  `PCLoginCount` INT(11) DEFAULT NULL COMMENT 'pc每日登录统计',
  `APPLoginCount` INT(11) DEFAULT NULL COMMENT 'app每日登录统计',
  `lastActiveTime` DATETIME DEFAULT NULL COMMENT '当天用户最后活跃时间',
  `lastActiveChannel` INT(11) DEFAULT NULL COMMENT '最后活跃渠道,参考(groupName=channel)',
  `lastActiveUserType` INT(11) DEFAULT NULL COMMENT '当天最后活跃的用户类型,参考(groupName=userType)',
  `loginDate` DATE DEFAULT NULL COMMENT '登录日期',
  PRIMARY KEY (`id`),
  KEY `user_id_type` (`userid`,`userType`),
  KEY `loginDate` (`loginDate`)
) ENGINE=INNODB COMMENT='用户登录次数统计结果临时存储表，每天增量添加数据'