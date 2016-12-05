/*  Database name `mogoroomdb` ，敏感信息以及业务操作记录表 */
DROP TABLE IF EXISTS `comm_operation_log`;
CREATE TABLE  `comm_operation_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `operator` int(11) unsigned NOT NULL COMMENT '操作人员',
  `operatorType` tinyint(3) unsigned NOT NULL COMMENT '操作人类型,groupName=userType',
  `operationType` varchar(10) NOT NULL COMMENT '操作类型,select/update/insert/delete',
  `operationTarget` varchar(200) NOT NULL COMMENT '操作对象，表名',
  `classified` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否操作敏感信息',
  `operationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '操作时间',
  `operationSource` varchar(200) NOT NULL COMMENT '操作源头，controller.method.lineNumber',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8  COMMENT='敏感信息操作日志表';


DROP TABLE IF EXISTS `comm_operation_para`;
CREATE TABLE  `comm_operation_para` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `operLogId` varchar(45) NOT NULL COMMENT '操作日志Id',
  `paraName` varchar(45) NOT NULL COMMENT '参数名称',
  `paraValue` varchar(100) NOT NULL COMMENT '参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8  COMMENT='操作参数表';


DROP TABLE IF EXISTS `comm_business_record`;
CREATE TABLE  `comm_business_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `operator` int(11) NOT NULL COMMENT '操作人员id',
  `operatorType` tinyint(3) NOT NULL COMMENT '操作人员类型,groupName=userType',
  `bizType` tinyint(3) NOT NULL COMMENT '操作类型 比如修改房价/预订/预约/签约/退房.../修改照片,table=acct_busitype',
  `flatsId` int(11) DEFAULT NULL COMMENT '公寓id',
  `roomId` int(11) DEFAULT NULL COMMENT '房间id',
  `landlordId` int(11) DEFAULT NULL COMMENT '房东id',
  `renterId` int(11) DEFAULT NULL COMMENT '租客id',
  `orderId` int(11) DEFAULT NULL COMMENT '订单id',
  `remark` varchar(100) NOT NULL COMMENT '动作描述 eg:更新了房屋的配置',
  `operationTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP  COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='业务操作记录表';


DROP TABLE IF EXISTS `comm_operation_classified_info`;
CREATE TABLE  `comm_operation_classified_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `tableName` varchar(30) DEFAULT NULL COMMENT '敏感信息表名',
  `columnName` varchar(200) DEFAULT NULL COMMENT '敏感信息列名，多个列名用空格分隔，包含所有列则用*',
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='敏感信息参数表';