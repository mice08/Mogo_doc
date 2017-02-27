/*  Database name `mogoroomdb`  增加资源文件版本管理表*/
use mogoroomdb;

/*
1、预估表容量:App版本资源文件更新对应表，基础数据新增较少
2、每次读取量:在10条左右
3、主要查询
	SELECT id, channel, terminal_os, fileType, fileUrl, versionCode, versionName, createBy, createTime, createByType, updateBy, updateTime, updateByType, valid
	FROM
	  comm_file_version
	WHERE valid = 1
	  AND versionCode = '2.0.1'
	  AND channel = 18
	  AND terminal_os = 'ALL'
	  AND fileType = 1
	ORDER BY createTime DESC
  需要预先添加的索引字段versionCode
*/
CREATE TABLE `comm_file_version` (
  `id` int (10) unsigned NOT NULL AUTO_INCREMENT COMMENT '资源文件版本管理表Id',
  `channel` int (2) NOT NULL COMMENT '系统渠道',
  `terminal_os` varchar (20) CHARACTER SET utf8 NOT NULL COMMENT '终端操作系统，iOS或Android',
  `fileType` int (2) NOT NULL COMMENT '文件类型(1:H5)',
  `fileUrl` varchar (200) CHARACTER SET utf8 NOT NULL COMMENT '相关文件下载地址',
  `versionCode` varchar (45) CHARACTER SET utf8 NOT NULL COMMENT '版本号',
  `versionName` varchar (45) CHARACTER SET utf8 NOT NULL COMMENT '版本名描述',
  `createBy` int (11) NOT NULL COMMENT '创建人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `createByType` int (2) NOT NULL COMMENT '创建人类型（参考字典表groupName=userType）',
  `updateBy` int (11) DEFAULT NULL COMMENT '修改人',
  `updateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateByType` int (2) DEFAULT NULL COMMENT '修改人类型（参考字典表groupName=userType）',
  `valid` tinyint (1) NOT NULL DEFAULT '1' COMMENT '有效标志(0:删除;1:未删除)',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `versionCode` (`versionCode`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COMMENT = '资源文件版本管理表'