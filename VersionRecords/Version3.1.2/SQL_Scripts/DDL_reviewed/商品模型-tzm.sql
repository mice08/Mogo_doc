/*������Ʒģ�ͱ�*/
use mogoroomdb;
CREATE TABLE IF NOT EXISTS `prod_prodtype` (
  `id` INT(11) NOT NULL COMMENT '����id',
  `name` VARCHAR(45) NOT NULL COMMENT '��Ʒ��������',
  `remark` VARCHAR(100) NOT NULL COMMENT '������Ϣ',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `createBy` INT(11) NOT NULL COMMENT '������Ա',
  `updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `updateBy` INT(11) NOT NULL COMMENT '������Ա',
  `createByType` TINYINT(3) NOT NULL COMMENT '������Ա����(�ο��ֵ��groupName:userType)',
  `updateByType` TINYINT(3) NOT NULL COMMENT '������Ա����(�ο��ֵ��groupName:userType)',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '��Ʒ���ͱ�';


CREATE TABLE IF NOT EXISTS `prod_prod` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `name` VARCHAR(45) NOT NULL COMMENT '��Ʒ����',
  `code` VARCHAR(45) NOT NULL COMMENT '��Ʒ����',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `createBy` INT(11) NOT NULL COMMENT '������Ա',
  `updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `updateBy` INT(11) NOT NULL COMMENT '������Ա',
  `remark` VARCHAR(100) NULL COMMENT '������Ϣ',
  `count` INT(11) NOT NULL COMMENT '���',
  `startTime` DATETIME NOT NULL COMMENT '��ʼʱ��',
  `endTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `prodTypeId` INT(11) NOT NULL COMMENT '��Ʒ����id',
  `vender` INT(11) NOT NULL COMMENT '��Ӧ�̴��룬(�ο��ֵ��groupName:productVendor)',
  `createByType` TINYINT(3) NOT NULL COMMENT '������Ա����(�ο��ֵ��groupName:userType)',
  `updateByType` TINYINT(3) NULL COMMENT '������Ա����(�ο��ֵ��groupName:userType)',
  PRIMARY KEY (`id`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '��Ʒ��';


CREATE TABLE IF NOT EXISTS `prod_resource` (
  `id` INT(11) NOT NULL COMMENT '����id',
  `code` VARCHAR(45) NOT NULL COMMENT '��Դ����',
  `prodId` INT(11) NOT NULL COMMENT '��Ʒid',
  `status` TINYINT(3) NOT NULL COMMENT '1 ���� 2 ���¼�  3����(�ο��ֵ��groupName:resourceStatus)',
  `startTime` DATETIME NOT NULL COMMENT '��ʼʱ��',
  `endTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `createBy` INT(11) NOT NULL COMMENT '������Ա',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `updateBy` INT(11) NOT NULL COMMENT '������Ա',
  `resouceType` TINYINT(3) NOT NULL COMMENT '��Դ����,(�ο��ֵ��groupName:resourceType)',
  `resouceId` INT(11) NULL COMMENT '��ԴID',
  PRIMARY KEY (`id`),
	KEY `IDX_PRODID` (`prodId`)) ENGINE = InnoDB DEFAULT CHARSET=utf8mb4 COMMENT = '��Ʒ��Դ��';

