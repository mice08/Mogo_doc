/* Database name `mogoroomdb`��KAƷ�ƶԽ�һ��-���ӱ��ֶ�*/

use mogoroomdb;

/**Ʒ�Ʊ�����Ʒ�������ֶΣ�������ѡƷ�Ƽ�KAƷ��*/
ALTER TABLE `brand`   
  ADD COLUMN `brandType` TINYINT(1) DEFAULT 1  NOT NULL   COMMENT 'Ʒ������(1:��ѡƷ�� 2:KAƷ��)' AFTER `id`;


/**ҵ��䶯��Ʒ���������Ҫһ�Զ࣬����brand_city_rel��
 1.	Ԥ���������¼������1000������
 2.	ÿ�ζ�ȡ��50�����ڡ�
 3.	��Ҫ��ѯSQL�� 
SELECT id,brandId,cityId FROM brand_city_rel where brandId = xxx;
SELECT id,brandId,cityId FROM brand_city_rel where cityId = xxx;

��ҪԤ����ӵ������ֶ�brandId,cityId 
 */
CREATE TABLE `brand_city_rel` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����ID',
  `brandId` INT(11) NOT NULL COMMENT 'Ʒ��Id',
  `cityId` INT(11) NOT NULL COMMENT '����Id',
  `valid` TINYINT(1) NOT NULL DEFAULT '1' COMMENT '״̬��0Ϊ��Ч��1Ϊ��Ч',
  `status` INT(4) DEFAULT NULL COMMENT 'ҵ��״̬',
  `createTime` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `createBy` INT(11) NOT NULL COMMENT '������',
  `createByType` INT(11) NOT NULL COMMENT '����������(�ο��ֵ������:userType)',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  `updateBy` INT(11) DEFAULT NULL COMMENT '�޸���',
  `updateByType` INT(11) DEFAULT NULL COMMENT '�޸�������(�ο��ֵ������:userType)',
  `soDoneCode` INT(32) DEFAULT NULL COMMENT '������ˮ��',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`),
  KEY `brandId` (`brandId`),
  KEY `cityId` (`cityId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='Ʒ�Ƴ��й�ϵ��'