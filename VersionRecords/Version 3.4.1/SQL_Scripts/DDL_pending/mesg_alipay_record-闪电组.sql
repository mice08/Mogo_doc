/* Database name `mogoroomdb`�� ���֧�������񴰷��ͼ�¼�� */
use mogoroomdb;

DROP TABLE IF EXISTS mesg_alipay_record;
CREATE TABLE mesg_alipay_record (
   id INT(11) NOT NULL AUTO_INCREMENT COMMENT '֧�������񴰼�¼��id',
   openId  VARCHAR(100) NOT NULL COMMENT '������openid',
   params VARCHAR(1000) DEFAULT NULL COMMENT '���Ͳ���',
   templateId VARCHAR(100) DEFAULT NULL COMMENT 'ģ��ID',
   sendStatus  INT(1) DEFAULT NULL COMMENT '����״̬ 0: ʧ�� 1: �ɹ�',
   sendResult VARCHAR(200) DEFAULT NULL COMMENT '���ͽ��',
   createTime  DATETIME NOT NULL COMMENT '��Ϣ����ʱ��',
  PRIMARY KEY (id)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='֧�������񴰷��ͼ�¼��';


ALTER TABLE user_weixin_info ADD COLUMN chatwinType tinyint(2) DEFAULT NULL  COMMENT '�罻ƽ̨(1:΢�Ź��ں� 2: ֧��������)';
