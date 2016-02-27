
CREATE TABLE `comm_app_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` varchar(45) NOT NULL COMMENT '渠道',
  `versionCode` varchar(45) NOT NULL COMMENT '版本号',
  `versionName` varchar(45) NOT NULL COMMENT '版本名',
  `forceUpdate` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否强制升级',
  `updatedesc` varchar(200) NOT NULL COMMENT '更新描述',
  `url` varchar(100) NOT NULL COMMENT '相关渠道apk下载地址',
  `createTime` datetime NOT NULL,
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
