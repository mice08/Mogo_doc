use mogoroomdb;

/*创建58同城房源对接账号表*/
CREATE TABLE flat_joint_58account (
  	id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  	uid varchar(128) DEFAULT NULL COMMENT '58同城用户id',
  	clientId varchar(32) NOT NULL COMMENT '合作伙伴id',
  	secret varchar(128) NOT NULL COMMENT '密钥',
  	accessToken varchar(128) DEFAULT NULL COMMENT '令牌',
  	refreshToken varchar(128) DEFAULT NULL COMMENT '刷新后令牌',
  	timeSign varchar(16) DEFAULT NULL COMMENT '当前系统时间戳',
  	code varchar(64) DEFAULT NULL COMMENT '临时验证码',
  	expiresIn int(11) DEFAULT NULL COMMENT '令牌有效时间',
  	promotionNum int(11) NOT NULL COMMENT '账号可推广房源数量',
  	usedpromotionNum int(11) NOT NULL DEFAULT 0 COMMENT '已推广房源数量',
  	valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '数据状态(1:有效 0:无效)',
  	createBy int(11) NOT NULL COMMENT '创建人Id',
  	createByType tinyint(2) NOT NULL COMMENT '创建人类型(参考groupName=userType)',
  	createTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  	updateBy int(11) DEFAULT NULL COMMENT '修改人Id',
  	updateByType tinyint(2) DEFAULT NULL COMMENT '修改人类型(参考groupName=userType)',
  	updateTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改人时间',
  	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='58同城房源对接账号表';
