drop table flat_joint_landlord;
create table flat_joint_landlord(
	id int(11) NOT NULL AUTO_INCREMENT COMMENT '����',
        listType tinyint NOT NULL COMMENT '��������(1-���÷�Դ��������)',
	landlordId int(11) NOT NULL default 0 COMMENT 'ְҵ����ID',
	userId int(11) NOT NULL default 0 COMMENT '�ܼ�ID(userinfo��ID)',
	status int(2)  NOT NULL COMMENT '״̬ 1-��Ч 0-��Ч',
  	createTime datetime NOT NULL default current_timestamp COMMENT '����ʱ��',
  	createBy int(11) NOT NULL COMMENT '������',
  	createByType varchar(50) NOT NULL  COMMENT '����������(�ο��ֵ��groupName=userType)',
  	updateTime datetime NULL default current_timestamp on update current_timestamp COMMENT '�޸�ʱ��',
  	updateBy int(11) NULL COMMENT '�޸���',
  	updateByType varchar(50) NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
  	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='58�ϼ�����������';
