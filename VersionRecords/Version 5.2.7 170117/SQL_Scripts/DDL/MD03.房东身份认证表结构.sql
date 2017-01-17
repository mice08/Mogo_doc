use mogoroomdb;

/*���������֤��*/
CREATE TABLE `user_landlord_identity`(  
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '���������֤��id',
  `landlordId` INT(11) NOT NULL COMMENT '����id',
	`identityId` varchar(20) DEFAULT NULL COMMENT '���֤��',
	`name` varchar(20) DEFAULT NULL COMMENT '��������',
  `status` TINYINT(1) DEFAULT '1' COMMENT '����״̬��1:��֤�ɹ� 2: ��֤ʧ�ܣ�',
  `remark` VARCHAR(512) DEFAULT NULL COMMENT '��ע',
  `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `createBy` INT(11) COMMENT '������',
  `createByType` TINYINT(1) COMMENT '����������',
  `updateTime` DATETIME COMMENT '����ʱ��',
  `updateBy` INT(11) COMMENT '������id',
  `updateByType` TINYINT(1) COMMENT '����������',
  `valid` TINYINT(1) DEFAULT 1 COMMENT '������Ƿ���Ч(1:��Ч,0:��Ч)',
  PRIMARY KEY (`id`),
  INDEX `landlordId` (`landlordId`)
)ENGINE = INNODB DEFAULT CHARSET = utf8mb4 COMMENT = '���������֤��' ;