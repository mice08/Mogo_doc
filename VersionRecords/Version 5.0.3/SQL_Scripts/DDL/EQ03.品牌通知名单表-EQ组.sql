/* Database name `mogoroomdb` ��Ʒ��֪ͨ������*/
use mogoroomdb;


CREATE TABLE `brand_notification`(
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����Id',
	`employeeId` INT(11) NOT NULL COMMENT 'Ա��id',
	`createBy` INT(11) NOT NULL COMMENT '������',
	`createByType` TINYINT(2) DEFAULT NULL COMMENT '����������',
	`createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`updateBy` INT(11) DEFAULT NULL COMMENT '������',
	`updateTime` TIMESTAMP NULL COMMENT '����ʱ��',
	`updateByType` TINYINT(2) DEFAULT NULL COMMENT '����������',
	`valid` TINYINT(4) DEFAULT 1 COMMENT '״̬,�Ƿ���Ч',
	`soDoneCode` INT(32) DEFAULT NULL COMMENT '������ˮ��',
	 PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='Ʒ��֪ͨ������';