/* Database name `mogo_da`， 添加用户登录次数统计结果临时存储表 */
USE mogo_da;
CREATE TABLE `user_logintotal_inc` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userid` INT(11) DEFAULT NULL COMMENT '用户id',
  `userType` INT(11) DEFAULT NULL COMMENT '用户类型',
  `loginCount` INT(11) DEFAULT NULL COMMENT '每天的登录统计',
  `lastActiveTime` DATE DEFAULT NULL COMMENT '当天用户最后活跃时间',
  `loginDate` DATE DEFAULT NULL COMMENT '登录日期',
  PRIMARY KEY (`id`),
  INDEX `user_id_type` (`userid`,`userType`),
  INDEX `loginDate` (`loginDate`)
) ENGINE=INNODB COMMENT '用户登录次数统计结果临时存储表，每天增量添加数据';