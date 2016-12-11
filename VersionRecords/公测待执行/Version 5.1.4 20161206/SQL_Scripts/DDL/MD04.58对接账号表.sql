use mogoroomdb;

/*����58ͬ�Ƿ�Դ�Խ��˺ű�*/
CREATE TABLE flat_joint_58account (
  	id int(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  	uid varchar(128) DEFAULT NULL COMMENT '58ͬ���û�id',
  	clientId varchar(32) NOT NULL COMMENT '�������id',
  	secret varchar(128) NOT NULL COMMENT '��Կ',
  	accessToken varchar(128) DEFAULT NULL COMMENT '����',
  	refreshToken varchar(128) DEFAULT NULL COMMENT 'ˢ�º�����',
  	timeSign varchar(16) DEFAULT NULL COMMENT '��ǰϵͳʱ���',
  	code varchar(64) DEFAULT NULL COMMENT '��ʱ��֤��',
  	expiresIn int(11) DEFAULT NULL COMMENT '������Чʱ��',
  	promotionNum int(11) NOT NULL COMMENT '�˺ſ��ƹ㷿Դ����',
  	usedpromotionNum int(11) NOT NULL DEFAULT 0 COMMENT '���ƹ㷿Դ����',
  	valid tinyint(1) NOT NULL DEFAULT 1 COMMENT '����״̬(1:��Ч 0:��Ч)',
  	createBy int(11) NOT NULL COMMENT '������Id',
  	createByType tinyint(2) NOT NULL COMMENT '����������(�ο�groupName=userType)',
  	createTime datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  	updateBy int(11) DEFAULT NULL COMMENT '�޸���Id',
  	updateByType tinyint(2) DEFAULT NULL COMMENT '�޸�������(�ο�groupName=userType)',
  	updateTime datetime DEFAULT CURRENT_TIMESTAMP COMMENT '�޸���ʱ��',
  	PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='58ͬ�Ƿ�Դ�Խ��˺ű�';
