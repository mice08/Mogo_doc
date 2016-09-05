/*  Database name `mogoroomdb` 新增签约单渠道表/
use mogoroomdb;
   
drop table if exists oder_signedorder_channel;
CREATE TABLE oder_signedorder_channel (
	id INT (11) auto_increment NOT NULL COMMENT 'id',
	signedOrderId INT (11) NOT NULL COMMENT '签约单id',
	channelName VARCHAR (20) NOT NULL COMMENT '渠道名称',
	remark VARCHAR (50) COMMENT '备注',
	PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '签约单渠道表';


