use mogoroomdb;
/*开放平台相关建表语句*/

/*开放平台接入用户表*/
CREATE TABLE `open_api_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `accessid` VARCHAR(100) NOT NULL COMMENT '接入商Id',
  `userId` INT(11) NOT NULL COMMENT '用户ID',
  `userType` TINYINT(1) NOT NULL COMMENT '用户类型(参考字典表组名:userType)',
  `partnerName` VARCHAR(50) NOT NULL COMMENT '平台接入合作商名全称',
  `publicKey` VARCHAR(512) NOT NULL COMMENT '公钥(合作商提供)',
  `host` VARCHAR(512) NOT NULL COMMENT 'IP白名单，多个以逗号分开',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `createBy` INT(1) DEFAULT NULL COMMENT '创建人id',
  `createByType` TINYINT(1) DEFAULT NULL COMMENT '创建人类型(参考字典表组名:userType)',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `updateBy` INT(11) DEFAULT NULL COMMENT '更新人id',
  `updateByType` TINYINT(1) DEFAULT NULL COMMENT '更新人类型(参考字典表组名:userType)',
  `status` TINYINT(1) DEFAULT '1' COMMENT '业务状态(1:正常业务,2:暂停业务)',
  `valid` TINYINT(1) DEFAULT '1' COMMENT '该数据是否有效(1:有效,0:无效)',
  PRIMARY KEY (`id`),
  UNIQUE  KEY  `accessid` (`accessid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='开放平台接入用户表';

/*开放平台调用记录表*/
CREATE TABLE `open_api_log` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `openUserId` INT(11) NOT NULL COMMENT '开放平台用户ID',
  `accessUrl` VARCHAR(50) DEFAULT NULL COMMENT '访问地址',
  `clientIp` VARCHAR(20) DEFAULT NULL COMMENT '客户端IP地址',
  `terminalType` VARCHAR(20) DEFAULT NULL COMMENT '客户终端',
  `requestId` VARCHAR(70) DEFAULT NULL COMMENT 'requestId',
  `resultStatus` TINYINT(1) DEFAULT '1' COMMENT '响应状态(1:成功,0:失败)',
  `errorMsg` VARCHAR(200) DEFAULT NULL COMMENT '失败错误信息',
  `requestTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '请求时间',
  `responseTime` DATETIME  COMMENT '响应时间',
  PRIMARY KEY (`id`),
  INDEX  `openUserId` (`openUserId`)
  INDEX  `requestId` (`requestId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='开放平台调用记录表';

/*开放平台地区表*/
CREATE TABLE `open_api_geo` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'id主键无实际用处',
	`geoId` INT (11) NOT NULL COMMENT '对应内部地理Id',
	`parentGeoId` int(11) NOT NULL COMMENT '父节点地理id',
	`geoName` varchar(20) NOT NULL COMMENT '地理名',
	`level` TINYINT(1) NOT NULL COMMENT '地理级别(1:城市 2:行政区 3:商圈)',
	`geoCode` varchar(20) NOT NULL COMMENT '地理编码(API接口调用时候用)',
	`createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`createBy` INT (1) DEFAULT NULL COMMENT '创建人id',
	`createByType` TINYINT (1) DEFAULT NULL COMMENT '创建人类型(参考字典表组名:userType)',
	`updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	`updateBy` INT (11) DEFAULT NULL COMMENT '更新人id',
	`updateByType` TINYINT (1) DEFAULT NULL COMMENT '更新人类型(参考字典表组名:userType)',
	`valid` TINYINT (1) DEFAULT '1' COMMENT '该数据是否有效(1:有效,0:无效)',
	PRIMARY KEY (`id`),
	INDEX `geoId` (`geoId`),
	UNIQUE  KEY  `geoCode` (`geoCode`)
) ENGINE = INNODB  DEFAULT CHARSET = utf8mb4 COMMENT = '开放平台地理信息表';