/* Database name `mogoroomdb` ������Ʒ������˵����*/
use mogoroomdb;

CREATE TABLE `brand_offline`(
	`id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '����Id',
	`brandId` INT(11)  NOT NULL COMMENT 'Ʒ��Id',
	`offlineReason` VARCHAR(50) DEFAULT NULL COMMENT '����ԭ��',
	`offlineDays` INT(4) NOT NULL COMMENT '��������',
	`createBy` INT(11) NOT NULL COMMENT '������',
	`createByType` TINYINT(2) DEFAULT NULL COMMENT '����������',
	`createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`updateBy` INT(11) DEFAULT NULL COMMENT '������',
	`updateTime` TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
	`updateByType` TINYINT(2) DEFAULT NULL COMMENT '����������',
	`valid` TINYINT(4) DEFAULT 1 COMMENT '״̬,�Ƿ���Ч',
	`soDoneCode` INT(32) NULL COMMENT '������ˮ��',
	`remark` VARCHAR(255) DEFAULT NULL COMMENT '��ע',
	 PRIMARY KEY (`id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='Ʒ������˵����';