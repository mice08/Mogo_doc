/*创建房东风险审核表和名单管理表*/
use mogoroomdb;

CREATE TABLE risk_landlord_level (
	id INT (11) NOT NULL AUTO_INCREMENT COMMENT '房东风险审核表id',
	landlordId INT (11) NOT NULL COMMENT '房东id',
	createTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '录入时间',
	createBy INT (11) NOT NULL COMMENT '创建人',
	createByType TINYINT (1) NOT NULL COMMENT '创建人类型（参考字典表组名:userType）',
	identifyDate datetime NOT NULL COMMENT '识别日期',
	level TINYINT (1) NOT NULL COMMENT '风险等级(1:低 2:中 3:高 4:待定)',
	phase TINYINT (1) NOT NULL COMMENT '识别环节(1:资质审核 2:订单审核 3:租客回访 4:房东贷后回访 5:其它)',
	remark VARCHAR (255) COMMENT '审核备注',
	PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '房东风险审核表';

CREATE TABLE risk_special_list (
	id INT (11) NOT NULL AUTO_INCREMENT COMMENT '名单管理表id',
	dataValue VARCHAR (40) NOT NULL COMMENT '数据值',
	dataType INT (11) NOT NULL COMMENT '数据类型(1:房东ID 2:手机号)',
	listType INT (11) NOT NULL COMMENT '名单类型(1:黑名单 2:灰名单 3:白名单)',
	createBy INT (11) NOT NULL COMMENT '创建人',
	createTime datetime NOT NULL COMMENT '创建时间',
	createByType INT (2) NOT NULL COMMENT '创建人类型（参考字典表组名:userType）',
	updateBy INT (11) COMMENT '修改人',
	updateTime datetime COMMENT '修改时间',
	updateByType INT (2) COMMENT '修改人类型（参考字典表组名:userType）',
	valid TINYINT (1) NOT NULL COMMENT '状态(0:无效 1:有效)',
	PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '名单管理表';