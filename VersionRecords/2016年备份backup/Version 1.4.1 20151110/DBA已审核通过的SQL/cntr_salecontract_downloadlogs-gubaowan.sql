CREATE TABLE cntr_salecontract_downloadlogs (
	id INT(11)  NOT NULL AUTO_INCREMENT COMMENT 'id',
	contractId INT(11) NOT NULL COMMENT '合同ID',
	downloadBy INT(11) NOT NULL COMMENT '合同下载人',
	downloadTime DATETIME NOT NULL COMMENT '合同下载时间',
	downloadByType INT(2) NOT NULL COMMENT '合同下载人类型（参考字典表groupName=userType）',
	channel INT(2) NOT NULL COMMENT '合同下载客户端类型（参考字典表groupName=channel)',
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合同下载日志表';
