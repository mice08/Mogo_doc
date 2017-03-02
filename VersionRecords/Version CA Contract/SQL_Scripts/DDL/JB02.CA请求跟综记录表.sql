/*合同-CA记录表*/
use mogoroomdb;

DROP TABLE IF EXISTS ca_request_tracker;

CREATE TABLE `ca_request_tracker` (
  	`id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增长',
  	`provider` int(11) NOT NULL COMMENT 'CA供应商code',
  	`businessKey` varchar(50) DEFAULT NULL COMMENT '业务主键',
 	`url` varchar(100) NOT NULL COMMENT '第三方接口地址',
  	`requestContent` varchar(2048) DEFAULT NULL COMMENT '请求参数(未加密前的参数)',
  	`responseContent` varchar(2048) NOT NULL COMMENT '请求返回(已经解密或处理后的或者接口调用失败信息)',
	`result` tinyint(2) NOT NULL COMMENT '请求是否成功(1:成功,0:失败)',
  	`createTime` datetime NOT NULL COMMENT '记录创建时间',
 	`requestTime` datetime NOT NULL COMMENT '请求时间',
 	`responseTime` datetime NOT NULL COMMENT '响应时间', 
 	 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CA请求跟综器';
