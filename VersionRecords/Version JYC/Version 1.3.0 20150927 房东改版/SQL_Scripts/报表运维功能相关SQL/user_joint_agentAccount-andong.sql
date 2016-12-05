CREATE TABLE user_joint_agentAccount (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  employeeId int(11) NOT NULL COMMENT '员工ID',
  agentAccount varchar(100) NOT NULL COMMENT '经纪人账号',
  websiteType int(2) NOT NULL COMMENT '对接网站类型(参考字典表groupName=websiteType)',
  status int(2)  NOT NULL COMMENT '状态 1-有效 0-无效',
  createTime datetime NOT NULL default current_timestamp COMMENT '创建时间',
  createBy INT(11) NOT NULL COMMENT '创建人',
  createByType INT(2) NOT NULL  COMMENT '创建人类型(参考字典表groupName=userType)',
  updateTime datetime NOT NULL default current_timestamp on update current_timestamp COMMENT '修改时间',
  updateBy INT(11) NOT NULL COMMENT '修改人',
  updateByType INT(2) NOT NULL  COMMENT '修改人类型(参考字典表groupName=userType)',
  doneCode INT(32) DEFAULT NULL COMMENT '操作流水号',
  remark VARCHAR(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='合作网站经纪人账号表';

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'peter_zhang@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '90231') t;

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'damon@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '91509') t;

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'zxy@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '90355') t;

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'hlf@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '91515') t;

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'ytt@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '91507') t;

INSERT INTO user_joint_agentAccount(employeeId, agentAccount, websiteType, STATUS, createBy, createByType, updateBy, updateByType) 
SELECT * FROM (SELECT ue.id AS employeeId, 'zc@mogoroom.com' AS agentAccount, 1 AS websiteType, 1 AS STATUS, 1 AS createBy, 5 AS createByType, 1 AS updateBy, 5 AS updateByType FROM user_employee ue WHERE ue.num = '91218') t;