/* Database name `mogoroomdb` , ���������¼��*/
USE mogoroomdb;

# ��Ҫ��Ա����`user_employee`����� ��ϯ���� �ֶ�
ALTER TABLE `user_employee` ADD `fromExten` VARCHAR(10) COMMENT '��ϯ����';

# �����¼��
CREATE TABLE supp_dialout_record
(
  `actionId` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'ActionID Ψһ�ַ���',
  `action` VARCHAR(25) NOT NULL COMMENT 'Action ��������',
  `phone` VARCHAR(16) NOT NULL COMMENT 'Exten ���к���',
  `fromExten` INT(10) NOT NULL COMMENT '��ϯ����',
  `extenType` VARCHAR(25) DEFAULT NULL COMMENT '���ʱǿ����ϯʹ�øý�����ʽ(Local/sip/gateway)',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `createByType` INT(11) NOT NULL COMMENT '����������(�ο��ֵ������:userType)',
  `createBy` INT(11) NOT NULL COMMENT '������',
  `rspSucceed` TINYINT(1) NOT NULL COMMENT '������(1:�ɹ� 0:ʧ��)',
  `rspMessage` VARCHAR(255) NULL COMMENT '���˵��',
  `remark` VARCHAR(255) NULL COMMENT '��ע',
  PRIMARY KEY (`actionId`)
) ENGINE=INNODB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COMMENT='�����¼��';
