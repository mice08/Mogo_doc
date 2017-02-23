/*  Database name `mogoroomdb`  增加资源文件版本管理表*/
use mogoroomdb;

CREATE TABLE `comm_file_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` int(2) NOT NULL COMMENT '渠道',
  `terminal_os` varchar(20) NOT NULL COMMENT '终端操作系统，iOS或Android',
  `fileType` int(2) NOT NULL COMMENT '文件类型(1:H5)',
  `fileUrl` varchar(200) NOT NULL COMMENT '相关文件下载地址',
  `versionCode` varchar(45) NOT NULL COMMENT '版本号',
  `versionName` varchar(45) NOT NULL COMMENT '版本名描述',
  `createBy` int(11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createByType` int(2) NOT NULL COMMENT '创建人类型（参考字典表groupName=userType）',
  `updateBy` int(11) DEFAULT NULL COMMENT '修改人',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateByType` int(2) DEFAULT NULL COMMENT '修改人类型（参考字典表groupName=userType）',
  `valid` tinyint(1) NOT NULL DEFAULT '1' COMMENT '有效标志(0:删除;1:未删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8


