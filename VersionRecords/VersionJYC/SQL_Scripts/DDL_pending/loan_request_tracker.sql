/*������������� ��������url,����������,��ʱ��*/
use mogoroomdb;
 
DROP TABLE IF EXISTS loan_request_tracker;
CREATE TABLE loan_request_tracker(
    id INT(11) AUTO_INCREMENT COMMENT '����id ������',
    loanChannel int(11) NOT NULL COMMENT '�ʷ�����(�ο�loan_channel��id)',
    outBusinessId VARCHAR(50) NULL COMMENT '������ҵ������',
    url VARCHAR(100) NOT NULL COMMENT '�������ӿڵ�ַ',
    requestContent VARCHAR(2048) NULL COMMENT '�������',
    responseContent VARCHAR(2048) NOT NULL COMMENT '���󷵻�(�Ѿ����ܻ����Ļ��߽ӿڵ���ʧ����Ϣ)',
    result tinyint(2) NOT NULL COMMENT '���ؽ��(0:�ɹ� 1:ʧ��)',
    createTime DATETIME NOT NULL COMMENT '����ʱ��',
    requestTime DATETIME NOT NULL COMMENT '����ʱ��',
    responseTime DATETIME NOT NULL COMMENT '��Ӧʱ��',
    comments VARCHAR(255) COMMENT '��ע',
    PRIMARY KEY (id)
  ) ENGINE = INNODB COMMENT='�������������';