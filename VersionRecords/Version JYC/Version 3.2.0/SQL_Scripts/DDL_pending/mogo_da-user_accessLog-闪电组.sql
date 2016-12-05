/* Database name `mogo_da`， 添加用户访问日志记录表 */
USE mogo_da;

DROP TABLE IF EXISTS user_accesslog;

CREATE TABLE `user_accesslog` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `userId` INT(11) DEFAULT NULL COMMENT '用户id，user_info主键',
  `userType` INT(11) DEFAULT NULL COMMENT '用户类型(参考groupName=userType)',
  `url` VARCHAR(125) DEFAULT NULL COMMENT '访问地址',
  `sessionId` VARCHAR(45) DEFAULT NULL COMMENT '会话唯一标识',
  `clientIp` VARCHAR(15) DEFAULT NULL COMMENT '客户端IP',
  `channel` VARCHAR(25) DEFAULT NULL COMMENT '渠道类型(参考groupName=channel)',
  `accessTime` DATETIME DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`),
  INDEX `user_id_type` (`userId`,`userType`)
) ENGINE=INNODB COMMENT='用户访问日志记录';
