/* Database name `mogoroomdb`, 400新系统新增400请求跟综器' */

use mogoroomdb;

CREATE TABLE `tele_request_tracker` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长',
  `soDoneCode` INT(11) NOT NULL COMMENT 'comm_business_record.id',
  `url` VARCHAR(100) NOT NULL COMMENT '第三方接口地址',
  `result` TINYINT(2) NOT NULL COMMENT '返回结果(1:成功 0:失败)',
  `requestTime` DATETIME NOT NULL COMMENT '请求时间',
  `responseTime` DATETIME NOT NULL COMMENT '响应时间',
  `channel` TINYINT(2) DEFAULT '0' COMMENT '交易渠道(参考字典表groupName=channel)',
  `createBy` INT(11) NOT NULL COMMENT '创建人Id',
  `createByType` TINYINT(2) NOT NULL COMMENT '创建人类型(参考groupName=userType)',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='400请求跟综器';
