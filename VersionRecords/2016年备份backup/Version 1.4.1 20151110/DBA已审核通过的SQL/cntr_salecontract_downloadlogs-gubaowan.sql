CREATE TABLE cntr_salecontract_downloadlogs (
	id INT(11)  NOT NULL AUTO_INCREMENT COMMENT 'id',
	contractId INT(11) NOT NULL COMMENT '��ͬID',
	downloadBy INT(11) NOT NULL COMMENT '��ͬ������',
	downloadTime DATETIME NOT NULL COMMENT '��ͬ����ʱ��',
	downloadByType INT(2) NOT NULL COMMENT '��ͬ���������ͣ��ο��ֵ��groupName=userType��',
	channel INT(2) NOT NULL COMMENT '��ͬ���ؿͻ������ͣ��ο��ֵ��groupName=channel)',
	PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ͬ������־��';
