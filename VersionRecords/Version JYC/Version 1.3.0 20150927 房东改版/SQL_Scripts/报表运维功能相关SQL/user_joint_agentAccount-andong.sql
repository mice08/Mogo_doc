CREATE TABLE user_joint_agentAccount (
  id int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
  employeeId int(11) NOT NULL COMMENT 'Ա��ID',
  agentAccount varchar(100) NOT NULL COMMENT '�������˺�',
  websiteType int(2) NOT NULL COMMENT '�Խ���վ����(�ο��ֵ��groupName=websiteType)',
  status int(2)  NOT NULL COMMENT '״̬ 1-��Ч 0-��Ч',
  createTime datetime NOT NULL default current_timestamp COMMENT '����ʱ��',
  createBy INT(11) NOT NULL COMMENT '������',
  createByType INT(2) NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
  updateTime datetime NOT NULL default current_timestamp on update current_timestamp COMMENT '�޸�ʱ��',
  updateBy INT(11) NOT NULL COMMENT '�޸���',
  updateByType INT(2) NOT NULL  COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
  doneCode INT(32) DEFAULT NULL COMMENT '������ˮ��',
  remark VARCHAR(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='������վ�������˺ű�';

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