/*添加消息查看表*/
use mogoroomdb;

CREATE TABLE mesg_read (
	id INT (11) auto_increment NOT NULL COMMENT '消息查看表id',
	userId INT (11) NOT NULL COMMENT '查看人id',
	userType INT (2) COMMENT '查看人类型(参考字典表groupName=userType)',
	mesgType INT (2) COMMENT '消息类型(参考字典表groupName=templetType，1:短信 2:邮件 3:推送 4:微信)',
	totalCount INT NOT NULL DEFAULT 0 COMMENT '消息数量',
	readCount INT NOT NULL DEFAULT 0 COMMENT '已读消息数量',
	checkTime DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '核对时间',
	remark varchar(255) NULL COMMENT '备注',
	PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '消息查看表';
