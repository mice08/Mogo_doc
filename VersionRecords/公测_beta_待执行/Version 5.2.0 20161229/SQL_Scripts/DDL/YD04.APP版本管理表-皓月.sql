/* Database name `mogoroomdb`， 添加app 版本管理表 */
USE mogoroomdb;

DROP TABLE IF EXISTS comm_app_version_manage;

CREATE TABLE `comm_app_version_manage` (
  `id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `apptype` TINYINT (2) NOT NULL COMMENT 'app类型（1:IOS企业版, 2:IOS市场版,  3:安卓市场版）',
  `channel` INT (2) NOT NULL COMMENT '系统渠道',
  `stafftype` INT (1) NOT NULL DEFAULT '1' COMMENT '用户类型 (1:正式用户，2:工作人员）',
  `lowestVersion` VARCHAR (36) NOT NULL COMMENT '最低版本要求-正式用户',
  `latestVersion` VARCHAR (36) NOT NULL COMMENT '最新版本-正式用户',
  `updateDesc` VARCHAR (256) NOT NULL COMMENT '更新描述',
  `downloadUrl` VARCHAR (256) NOT NULL COMMENT '下载连接',
  `createBy` INT (11) NOT NULL COMMENT '创建人Id',
  `createByType` TINYINT (2) NOT NULL COMMENT '创建人类型(参考字典表groupName=userType)',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `valid` INT (1) NOT NULL DEFAULT '1' COMMENT '逻辑删除标志 (1:未删除, 0:删除)',
  PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = 'app版本管理表' ;
