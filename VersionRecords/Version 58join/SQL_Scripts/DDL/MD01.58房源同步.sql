use mogoroomdb;

DROP TABLE flat_joint_register;

CREATE TABLE `flat_joint_register` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '����',
	`userId` INT (11) NOT NULL COMMENT '�û�ID(userinfo��ID)',
	`userType` INT (1) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
	`registerTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`jointBeginTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '��ʼ�ƹ�ʱ��',
	`jointEndTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�����ƹ�ʱ��',
	`jointChannel` INT (2) NOT NULL DEFAULT 1 COMMENT '�ƹ����� 1��58��',
	`valid` INT (2) NOT NULL DEFAULT 1 COMMENT '״̬ 1-��Ч 0-��Ч',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`createBy` INT (11) NOT NULL COMMENT '������',
	`createByType` VARCHAR (50) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
	`updateBy` INT (11) DEFAULT NULL COMMENT '�޸���',
	`updateByType` INT (11) DEFAULT NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '�����ƹ������';

DROP TABLE flat_joint_room;

CREATE TABLE `flat_joint_room` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT '����',
	`cityId` INT (11) DEFAULT NULL COMMENT '����ID',
	`cityName` VARCHAR (30) DEFAULT NULL COMMENT '������',
	`districtId` INT (11) DEFAULT NULL COMMENT '����ID',
	`districtName` VARCHAR (30) DEFAULT NULL COMMENT '������',
	`roomId` INT (11) NOT NULL COMMENT '����ID(flat_room��ID)',
	`websiteRoomId` BIGINT (20) DEFAULT NULL COMMENT 'ͬ����վ����ID',
	`websiteRoomUrl` VARCHAR (200) DEFAULT NULL COMMENT 'ͬ����վ����URL',
	`communityName` VARCHAR (30) DEFAULT NULL COMMENT 'С����',
	`flatsNum` VARCHAR (20) DEFAULT NULL COMMENT '��Ԣ���  �к�+�����+�����ĵ�N�׿ͷ�',
	`building` VARCHAR (255) DEFAULT NULL COMMENT '¥����(8��102��)',
	`roomNum` VARCHAR (32) DEFAULT NULL COMMENT '����ż��㼸',
	`unit` VARCHAR (20) DEFAULT NULL COMMENT '��Ԫ',
	`bedroomCount` VARCHAR (20) DEFAULT NULL COMMENT '��Ԫ',
	`parlorCount` VARCHAR (20) DEFAULT NULL COMMENT '��Ԫ',
	`toiletCount` VARCHAR (20) DEFAULT NULL COMMENT '��Ԫ',
	`landlordId` INT (11) DEFAULT NULL COMMENT 'ְҵ����Id',
	`jointAccount` VARCHAR (32) DEFAULT NULL COMMENT '�ƹ��˺�',
	`jointBeginTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '��ʼ�ƹ�ʱ��',
	`jointEndTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�����ƹ�ʱ��',
	`jointChannel` INT NOT NULL COMMENT '�ƹ����� 1��58��',
	`title` VARCHAR (100) COMMENT '�ƹ����',
	`description` VARCHAR (1000) COMMENT '�ƹ�����',
	`status` INT (2) NOT NULL DEFAULT 1 COMMENT '״̬ 0���¼� 1���ƹ��� 2���ϼ�ʧ�� 3���¼�ʧ��',
	`jointType` INT (2) NOT NULL COMMENT '�Խ���ʽ 0���油 1������',
	`valid` INT (2) NOT NULL COMMENT '״̬ 1-��Ч 0-��Ч',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`createBy` INT (11) NOT NULL COMMENT '������',
	`createByType` INT (11) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
	`updateBy` INT (11) DEFAULT NULL COMMENT '�޸���',
	`updateByType` INT (11) DEFAULT NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '�ƹ㷿����Ϣ';

DROP TABLE flat_joint_template;

CREATE TABLE `flat_joint_template` (
	`id` INT (11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	`flatsType` INT (2) DEFAULT NULL COMMENT '0������ 1:���� 2������ʽ',
	`roomDescTemplate` VARCHAR (1000) DEFAULT NULL COMMENT '��Դ����ģ��',
	`jointChannel` INT NOT NULL COMMENT '�ƹ����� 1��58��',
	`valid` INT (2) NOT NULL DEFAULT 1 COMMENT '״̬ 1-��Ч 0-��Ч',
	`createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`createBy` INT (11) NOT NULL COMMENT '������',
	`createByType` VARCHAR (50) NOT NULL COMMENT '����������(�ο��ֵ��groupName=userType)',
	`updateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
	`updateBy` INT (11) DEFAULT NULL COMMENT '�޸���',
	`updateByType` INT (11) DEFAULT NULL COMMENT '�޸�������(�ο��ֵ��groupName=userType)',
	PRIMARY KEY (`id`)
) ENGINE = INNODB DEFAULT CHARSET = utf8 COMMENT = '�����ƹ�ģ���';

