/*�����Ϣ�鿴��*/
use mogoroomdb;

CREATE TABLE mesg_read (
	id INT (11) auto_increment NOT NULL COMMENT '��Ϣ�鿴��id',
	userId INT (11) NOT NULL COMMENT '�鿴��id',
	userType INT (2) COMMENT '�鿴������(�ο��ֵ��groupName=userType)',
	mesgType INT (2) COMMENT '��Ϣ����(�ο��ֵ��groupName=templetType��1:���� 2:�ʼ� 3:���� 4:΢��)',
	totalCount INT NOT NULL DEFAULT 0 COMMENT '��Ϣ����',
	readCount INT NOT NULL DEFAULT 0 COMMENT '�Ѷ���Ϣ����',
	checkTime DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�˶�ʱ��',
	remark varchar(255) NULL COMMENT '��ע',
	PRIMARY KEY (id)
) ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '��Ϣ�鿴��';
