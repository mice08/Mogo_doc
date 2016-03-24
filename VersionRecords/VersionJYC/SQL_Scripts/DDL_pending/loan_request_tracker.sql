/*������������� ��������url,����������,��ʱ��*/
use mogoroomdb;

DROP TABLE IF EXISTS loan_request_tracker;
CREATE TABLE loan_request_tracker(
   id INT(11) AUTO_INCREMENT COMMENT '����id ������',
   channel VARCHAR(50)  NOT NULL COMMENT '�ʷ�����',
   url VARCHAR(100) NOT NULL COMMENT '�������ӿڵ�ַ',
   requestContent VARCHAR(2048) NULL  COMMENT '�������',
   responseContent VARCHAR(2048) NULL COMMENT '���󷵻�(�Ѿ����ܻ����Ļ��߽ӿڵ���ʧ����Ϣ)',
   bizKey VARCHAR(100) COMMENT 'ҵ����ش�',
   costTime BIGINT(20) DEFAULT 0  COMMENT '�ӿڵ��ú�ʱms',
   comments VARCHAR(255) COMMENT '�ӿڷ�������',
   createTime  DATETIME  COMMENT '����ʱ��',
   PRIMARY KEY (id)
 ) ENGINE = INNODB COMMENT='�������������';