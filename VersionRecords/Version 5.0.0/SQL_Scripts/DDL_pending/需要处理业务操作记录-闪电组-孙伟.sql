USE mogoroomdb;
/*  Database name `mogoroomdb` 新增comm_biztypeOrder_record表*/
DROP TABLE IF EXISTS comm_biztypeOrder_record;
CREATE TABLE  comm_biztypeOrder_record (
	id INT(11) PRIMARY KEY  AUTO_INCREMENT COMMENT '主键id',
	busiType INT(11) NOT NULL COMMENT '业务类型',
	orderType INT(11) NOT NULL COMMENT '订单类型',
	orderId INT(11) NOT NULL COMMENT '订单类型',
	soDoneCode INT(11) NULL COMMENT '业务操作id(comm_business_record)',
	createTime DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	createBy INT(11) NULL COMMENT  '创建人id',
	createByType INT(11) NULL COMMENT '创建人类型(参考字典表组名:userType)',
	remark  VARCHAR(500) NULL COMMENT '备注',
	UNIQUE INDEX busiType_orderType_oderId(busiType,orderType,orderId)
)ENGINE = INNODB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT =1 COMMENT '需要处理业务操作记录';